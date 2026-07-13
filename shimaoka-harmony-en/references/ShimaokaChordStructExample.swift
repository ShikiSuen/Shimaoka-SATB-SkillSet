#!/usr/bin/env swift
import Foundation

/// Distinguishes major (Dur) vs. minor (Moll) quality in the Shimaoka system.
/// Used to determine the intrinsic sonority of a chord or enforce a mode shift.
enum ChordModeQuality: Int, Codable {
  /// Major quality (major 3rd, 4 semitones)
  case ofDur = 4
  /// Minor quality (minor 3rd, 3 semitones)
  case ofMoll = 3
}

/// Abstract scale degree (I through VII), without any alteration or borrowing info.
/// Corresponds to the notation symbols Ⅰ, Ⅱ, Ⅲ, Ⅳ, Ⅴ, Ⅵ, Ⅶ.
enum AbstractDegreeInMode: Int, CustomStringConvertible, Codable {
  case of1 = 1
  case of2 = 2
  case of3 = 3
  case of4 = 4
  case of5 = 5
  case of6 = 6
  case of7 = 7

  var description: String {
    "Degree\(rawValue)"
  }

  /// Unicode Roman numeral mapping for cross-system conversion or UI rendering.
  var unicodeRepr: UInt16 {
    switch self {
    case .of1: 0x2160  // Ⅰ
    case .of2: 0x2161  // Ⅱ
    case .of3: 0x2162  // Ⅲ
    case .of4: 0x2163  // Ⅳ
    case .of5: 0x2164  // Ⅴ
    case .of6: 0x2165  // Ⅵ
    case .of7: 0x2166  // Ⅶ
    }
  }
}

/// A concrete in-key degree structure with modal modification or borrowing state.
struct DegreeInMode: CustomStringConvertible, Codable {
  /// Core degree (I–VII)
  let degree: AbstractDegreeInMode

  /// The degree's alteration or borrowing state.
  /// If `nil`, it is a pure diatonic tone.
  let alteration: PitchModifier?

  /// Whether this degree is a "quasi" chord root (borrowed from parallel minor/major).
  /// In notation this corresponds to the prefix `m`.
  var isReferredFromShorterParallelMode: Bool { alteration == .notSpecified }

  var description: String {
    switch alteration {
    case .none: "\(degree)"
    case .notSpecified: "Quasi\(degree)"
    case .sharpened: "Sharpened\(degree)"
    case .flattened: "Flattened\(degree)"
    }
  }
}

/// Chord inversion state (Shimaoka system supports up to 3rd inversion).
/// In notation this appears directly after the extension digit (e.g., Ⅴ72 has inversion '2').
enum ChordInversion: Int, CustomStringConvertible, Codable {
  /// Root position (no inversion)
  case inv0 = 0
  /// 1st inversion (3rd in bass)
  case inv1 = 1
  /// 2nd inversion (5th in bass)
  case inv2 = 2
  /// 3rd inversion (7th in bass)
  case inv3 = 3

  var description: String {
    "Inv\(rawValue)"
  }
}

/// Core chord length. Shimaoka system defines up to 9th chords.
/// 11th and 13th chords are described using the Tone-Addition syntax.
enum ChordLength: Int, CustomStringConvertible, Codable {
  /// Triad (root, 3rd, 5th)
  case len5 = 5
  /// 7th chord (root, 3rd, 5th, 7th)
  case len7 = 7
  /// 9th chord (root, 3rd, 5th, 7th, 9th; 5th often omitted in practice)
  case len9 = 9

  var description: String {
    switch self {
    case .len5: "TriadChord"
    case .len7: "SeventhChord"
    case .len9: "NinthChord"
    }
  }
}

/// Pitch modifier for sharps, flats, or unspecified modal borrowing.
enum PitchModifier: Int, Codable {
  /// Raised by a half step
  case sharpened = 1
  /// Borrowed from parallel mode without specifying direction (implicit conversion)
  case notSpecified = 0
  /// Lowered by a half step
  case flattened = -1
}

/// Added-tone structure. Used for Shimaoka-system tone additions
/// (e.g., the 6th in ⅣS, or various special chromatic additions).
struct PitchAddition: Codable {
  /// Abstract interval degree of the added tone relative to the chord root
  let degree: AbstractDegreeInMode
  /// Chromatic modification of the added tone
  let modifier: PitchModifier
}

/// Chord-tone omission state.
enum PitchOmission: Int, Codable {
  /// Root omitted. In the Shimaoka system this is the rootless dominant form.
  /// In notation: prefix `r`.
  case rootless = 0
  /// 5th omitted. Common in triads, 7th chords, and 9th chords in SATB writing.
  case fifthless = 5
}

/// Core structure: a concrete tonal chord with harmonic function.
/// Encapsulates a single chord's form, inversion, added tones, and all functional variations
/// within the Shimaoka system.
struct TonalChord: Codable {
  /// Degree and modal borrowing info
  let degree: DegreeInMode
  /// Basic chord length (triad / 7th / 9th)
  let length: ChordLength
  /// Inversion state
  let inversion: ChordInversion
  /// Added tones (e.g., +6, +4 or chromatically modified additions)
  let pitchAddition: [PitchAddition]
  /// Omission state (rootless / 5thless)
  let pitchOmission: PitchOmission?
  /// Independent 5th alteration (e.g., ♭5 or ♯5 producing diminished or augmented motion)
  let fifthAlteration: PitchModifier?
  /// Enforced chord quality (e.g., forced major via `+`)
  let qualityEnforcement: ChordModeQuality?

  /// Whether this chord is borrowed from the parallel mode as a quasi chord.
  var isReferredFromShorterParallelMode: Bool { degree.isReferredFromShorterParallelMode }

  /// Computed: is this chord a Neapolitan II (notation: `pⅡ`)?
  /// Derived from: on degree II, with flattened root (or borrowed major quality from parallel minor).
  var isNeopolitan: Bool {
    let isSecondDegree = degree.degree == .of2
    let isFlattened = degree.alteration == .flattened || degree.isReferredFromShorterParallelMode
    return isSecondDegree && isFlattened
  }

  /// Computed: is this chord a Dorian IV (notation: `+Ⅳ`)?
  /// Derived from: on degree IV in a minor context, with forced major quality.
  var isDorianDominant: Bool {
    let isFourthDegree = degree.degree == .of4
    let isForcedDur = qualityEnforcement == .ofDur
    return isFourthDegree && isForcedDur
  }

  /// Computed: is this chord a Picardi Tonic (notation: `+Ⅰ`)?
  /// Derived from: on degree I in a minor-key cadence, forced to major.
  var isPicardiTonic: Bool {
    let isFirstDegree = degree.degree == .of1
    let isForcedDur = qualityEnforcement == .ofDur
    return isFirstDegree && isForcedDur
  }
}

/// Container: represents a chord sequence within a specific context.
/// Encapsulates scope markers such as tonicization (secondary key) and sustained bass.
struct Content: Codable {
  /// The chord instances within this scope
  let content: [TonalChord]

  /// Tonicization target (the degree toward which the chord(s) tonicize).
  /// If non-nil, all chords within this scope are secondary dominants/subdominants of that target.
  /// In notation: the `@` marker followed by the target degree.
  var relativeKey: DegreeInMode?

  /// Shared sustained bass (pedal note degree).
  /// Marks a voice (typically bass) that remains fixed while upper chords change.
  /// In notation: the `/` marker followed by the bass degree.
  var sharedSustainedBassTone: DegreeInMode?

  /// Whether this context is in a tonicized (secondary key) state.
  var isTonicized: Bool { relativeKey != nil }

  /// Whether sustained bass is active in this context.
  var hasSharedSustainedBass: Bool { sharedSustainedBassTone != nil }

  /// Convenience initializer supporting variadic chord arguments with optional scope markers.
  init(
    content: TonalChord...,
    relativeKey: DegreeInMode? = nil,
    sharedSustainedBassTone: DegreeInMode? = nil
  ) {
    self.content = Array(content)
    self.relativeKey = relativeKey
    self.sharedSustainedBassTone = sharedSustainedBassTone
  }
}

// MARK: - CustomStringConvertible Extensions for English Notation Syntax

extension DegreeInMode {
  /// Output the degree in English notation syntax.
  var syntaxRepr: String {
    var result = ""
    if isReferredFromShorterParallelMode {
      result += "m"
    }
    switch degree {
    case .of1: result += "Ⅰ"
    case .of2: result += "Ⅱ"
    case .of3: result += "Ⅲ"
    case .of4: result += "Ⅳ"
    case .of5: result += "Ⅴ"
    case .of6: result += "Ⅵ"
    case .of7: result += "Ⅶ"
    }
    return result
  }
}

extension TonalChord: CustomStringConvertible {
  /// Output plain-text chord notation per the English notation-syntax.md spec.
  public var description: String {
    var prefixStr = ""

    // Neapolitan takes precedence; other prefixes suppressed when Neapolitan
    if isNeopolitan {
      prefixStr += "p"
    } else {
      if qualityEnforcement == .ofDur {
        prefixStr += "+"
      } else if qualityEnforcement == .ofMoll {
        prefixStr += "-"
      }
      if isReferredFromShorterParallelMode {
        prefixStr += "m"
      }
      if pitchOmission == .rootless {
        prefixStr += "r"
      }
    }

    var degreeStr = ""
    let targetDegree = isNeopolitan ? .of2 : degree.degree
    switch targetDegree {
    case .of1: degreeStr = "Ⅰ"
    case .of2: degreeStr = "Ⅱ"
    case .of3: degreeStr = "Ⅲ"
    case .of4: degreeStr = "Ⅳ"
    case .of5: degreeStr = "Ⅴ"
    case .of6: degreeStr = "Ⅵ"
    case .of7: degreeStr = "Ⅶ"
    }

    var extensionAndInvStr = ""
    if length == .len7 {
      extensionAndInvStr += "7"
      if inversion != .inv0 {
        extensionAndInvStr += "\(inversion.rawValue)"
      }
    } else if length == .len9 {
      extensionAndInvStr += "9"
      if inversion != .inv0 {
        extensionAndInvStr += "\(inversion.rawValue)"
      }
    } else { // len5 (triad)
      if inversion != .inv0 {
        extensionAndInvStr += "\(inversion.rawValue)"
      }
    }

    var alterationStr = ""
    if fifthAlteration == .flattened {
      alterationStr = "f"
    } else if fifthAlteration == .sharpened {
      alterationStr = "s"
    }

    var additionStr = ""
    for add in pitchAddition {
      if add.degree == .of4 {
        additionStr += "F"
      } else if add.degree == .of6 {
        if add.modifier == .sharpened {
          additionStr += "sS"  // ♯6 addition — prefix S with alteration to avoid collision with s=♯5
        } else {
          additionStr += "S"
        }
      }
    }

    return prefixStr + degreeStr + extensionAndInvStr + alterationStr + additionStr
  }
}

extension Content: CustomStringConvertible {
  /// Output contextual notation including tonicization and sustained bass markers
  /// per the English notation-syntax.md spec.
  public var description: String {
    let chordsJoined = content.map { $0.description }.joined(separator: " ")

    var baseStr = chordsJoined

    if content.count > 1 && (relativeKey != nil || sharedSustainedBassTone != nil) {
      baseStr = "(\(chordsJoined))"
    }

    if let relKey = relativeKey {
      baseStr = "\(baseStr)@\(relKey.syntaxRepr)"
    }

    if let bass = sharedSustainedBassTone {
      baseStr = "(\(baseStr))/\(bass.syntaxRepr)"
    }

    return baseStr
  }
}

// MARK: - Testing English Notation Synthesis

print("\n--- Testing English Notation Synthesis ---")

let tests: [(String, Content)] = [
  ("Ⅰ : Tonic", Content(content: TonalChord(degree: .init(degree: .of1, alteration: nil), length: .len5, inversion: .inv0, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),

  ("pⅡ1 : Neapolitan II 1st inv", Content(content: TonalChord(degree: .init(degree: .of2, alteration: .flattened), length: .len5, inversion: .inv1, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),

  ("rⅤ92f@Ⅴ : rootless V9 2nd inv ♭5, tonicizing to V", Content(content: TonalChord(degree: .init(degree: .of5, alteration: nil), length: .len9, inversion: .inv2, pitchAddition: [], pitchOmission: .rootless, fifthAlteration: .flattened, qualityEnforcement: nil), relativeKey: .init(degree: .of5, alteration: nil))),

  ("+Ⅳ7 : Dorian IV as Dom 7", Content(content: TonalChord(degree: .init(degree: .of4, alteration: nil), length: .len7, inversion: .inv0, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: .ofDur))),

  ("ⅣsS : IV add ♯6th", Content(content: TonalChord(degree: .init(degree: .of4, alteration: nil), length: .len5, inversion: .inv0, pitchAddition: [.init(degree: .of6, modifier: .sharpened)], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),

  ("mrⅤ93@Ⅴ/Ⅴ : quasi rootless Dom 9th 3rd inv tonicizing to V, on sustained V", Content(content: TonalChord(degree: .init(degree: .of5, alteration: .notSpecified), length: .len9, inversion: .inv3, pitchAddition: [], pitchOmission: .rootless, fifthAlteration: nil, qualityEnforcement: nil), relativeKey: .init(degree: .of5, alteration: nil), sharedSustainedBassTone: .init(degree: .of5, alteration: nil)))
]

for (expected, content) in tests {
  print("Expected: \(expected)")
  print("Parsed   : \(content.description)")
  print("---")
}

print("Compilation Succeeded.")

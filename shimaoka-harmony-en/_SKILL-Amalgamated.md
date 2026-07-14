---
name: shimaoka-harmony-en
description: >
  Tokyo University of the Arts — Shimaoka Yuzuru System of Four-Part Harmony.
  Covers SATB part-writing, chord analysis, swing (yure) theory, cadential units,
  functional harmony, cadence formulae, Dominant patterns, modulation/borrowing/
  enharmonic reinterpretation, sequential progressions, incidental chords, and
  sustained bass. Use this skill when the user asks about harmony writing,
  four-part texture, chord connection, functional progression, modulation
  techniques, cadences, or any topic related to the Shimaoka system of harmony.
---


# Shimaoka System of Harmony (Tokyo University of the Arts)

## Core Philosophy: Swing Theory

The fundamental perspective on harmony is **swing** (yure) — chords, like a pendulum, oscillate between stable positions (rest) and deviated positions (displacement). The alternation of stability and tension constitutes the essential motion of harmony.

> Notation rules: the plain-text chord notation syntax used in this repository is documented separately at [references/notation-syntax.md](references/notation-syntax.md). Please read that document first for formal syntax specifications.

- **Rest position** (定位): the stable form of a chord (originating tones)
- **Displacement** (転位): deviation of constituent tones, generating tension
- **Cadential unit** (曳動単位): a complete swing process from release to resolution (a specific set of chord progressions)
- **Resolution** (還元): returning displaced tones to their rest positions, dissolving tension

## Basic Terminology

### Chord Notation
- **Degree symbols**: `Ⅰ`, `Ⅱ`, `Ⅲ`, `Ⅳ`, `Ⅴ`, `Ⅵ`, `Ⅶ` (as the core of scale-degree representation)
- **Extension index**: immediately after the degree symbol: `7` = 7th chord, `9` = 9th chord
- **Inversion index**: immediately after the extension: `1` = 1st inversion, `2` = 2nd inversion, `3` = 3rd inversion
- **Rootless dominant form**: a chord form with the root omitted, prefixed with `r` (e.g., `rⅤ7`)

### Bass Positions
- **Fundamental position** ⟨fund⟩: root in bass
- **1st inversion** ⟨1st⟩: 3rd in bass
- **2nd inversion** ⟨2nd⟩: 5th in bass
- **3rd inversion** ⟨3rd⟩: 7th in bass

### Functional System

| Symbol | Name | Corresponding Degrees |
|--------|------|-----------------------|
| T | Tonic function | `Ⅰ` (`Ⅵ` as proxy) |
| D (or D₁) | Dominant function | `Ⅴ` |
| D₂ | Second Dominant function | `Ⅱ`, `Ⅱ7`, `Ⅳ` |
| D₃~D₆ | 3rd~6th Dominant functions | `Ⅵ`, `Ⅲ`, `Ⅶ`, `Ⅳ` |
| S | Subdominant function | `Ⅳ` |

**Circle of 5ths**: `Ⅰ` → `Ⅴ` → `Ⅱ` → `Ⅵ` → `Ⅲ` → `Ⅶ` → `Ⅳ` → `Ⅰ` (clockwise = D progression)

### Common Cadential Units

| Type | Progression | Notation |
|------|-------------|----------|
| Cadential Unit Type 1 | T → D → T | `Ⅰ` → `Ⅴ` → `Ⅰ` |
| Cadential Unit Type 2 | T → D₂ → D → T | `Ⅰ` → `Ⅱ` → `Ⅴ` → `Ⅰ` |
| Cadential Unit Type 3 | T → S → T | `Ⅰ` → `Ⅳ` → `Ⅰ` |

### Cadence Types

| Name | Abbrev. | Harmonic Form | Function |
|------|---------|---------------|----------|
| Perfect cadence | □ | → `Ⅴ` → `Ⅰ` | D → T |
| Deceptive cadence | □̷ | → `Ⅴ` → `Ⅵ` | D → T(proxy) |
| Half cadence | ▷ | → `Ⅴ` | D |
| Plagal cadence | □̱ | → `Ⅳ` → `Ⅰ` | S → T |

**Closed cadence**: ends on `Ⅰ` (perfect/plagal). **Open cadence**: ends on unstable chord (deceptive/half).

## SATB Fundamentals

### Voices
Top to bottom: Soprano (Sop) → Alto (Alt) → Tenor (Ten) → Bass (Bas)
- **Outer voices**: Sop + Bas (most important contrapuntal relationship)
- **Inner voices**: Alt + Ten
- **Upper 3 voices**: Sop + Alt + Ten

### Basic Disposition Rules
1. The only omissible constituent is the **5th** (root omission in rootless dominants is a special form)
2. The 5th may be doubled; the 3rd and root are generally not doubled (root doubling in triads is a special disposition)
3. Distance between adjacent voices: within an octave is standard; beyond a 15th is extreme separation (avoid)
4. Standard upper-3-voice disposition: **close position** (within an octave) or **open position** (exceeding an octave)

### Connection Rules
1. **Common-tone retention**: common tones between consecutive chords should be retained in the same voice when possible
2. **Obligatory motion tones**: the leading tone (7th degree = half step above the 3rd) must ascend by step to the tonic; the 7th (chordal 7th) must descend by step
3. **Forbidden**: hidden octaves/5ths (outer voices moving in similar motion to a perfect octave/5th), parallel octaves/5ths
4. **Permitted**: diminished 5th → perfect 5th (when ascending), contrary 5ths/8ves, oblique 5ths/8ves

## SATB Writing Procedure

The following steps apply to any given exercise (such as a specified Sop melody or Bas line). Following this order produces an SATB texture conforming to the Shimaoka system.

> If the exercise is **an existing melody given in advance** (rather than free composition — e.g., a soprano line extracted from MusicXML), Steps 1–3 must be inferred in reverse from the melody itself. First run the three sub-steps in [references/melody-harmonization.md](references/melody-harmonization.md) (phrase-boundary detection, Sop-formula alignment, cadential-chain assembly), then feed their output into Steps 1–3 below before continuing to Steps 4–8.

### Step 1: Determine Key and Cadence Layout
- Identify the key of the exercise (major/minor, tonic pitch).
- Determine phrase structure: where to place perfect cadences (closed) and half cadences (open).
- For longer exercises (>4 bars), intermediate deceptive or plagal cadences may supplement.

### Step 2: Select Cadential Unit Skeleton
- Based on the exercise's chord distribution, choose a sequence of cadential units. Most common combinations:
  - K2 (`Ⅰ` → `Ⅱ` → `Ⅴ` → `Ⅰ`): the most standard cadential unit
  - K1 (`Ⅰ` → `Ⅴ` → `Ⅰ`): a shorter close
  - K3 (`Ⅰ` → `Ⅳ` → `Ⅰ`): for plagal cadence use
- Ensure at least one complete cadential unit precedes each cadence point.

### Step 3: Determine Cadence Formula (Critical Step)
1. At perfect cadences: choose cadence formula = D₂ → D → T (`Ⅱ` → `Ⅴ7` → `Ⅰ`, etc.).
2. Select from [references/d-formation.md](references/d-formation.md):
   - Sop formulas (1)–(5): determine the outer-voice Sop motion pattern
   - Bas formulas (a) or (b): determine the Bas motion pattern
3. At non-cadence points: Dominant formula (g) `Ⅴ` → `Ⅵ` can serve as a deceptive cadence basis.

### Step 4: Fill in the Bas Line
- Extend outward from the cadence formula in both directions, filling the complete Bas progression.
- Basic principle: Bas moves primarily within a 4th; avoid unnecessary wide leaps.
- In sequential passages: move the Bas systematically according to transposition rules.

### Step 5: Construct the Sop Melody
- At cadence formula points, assign Sop motion according to the chosen Sop formula.
- Non-cadence points: Sop melody should aim for fluency; prefer stepwise motion (2nds up/down), moderate use of leaps (3rds and larger).
- Sop as the highest voice should have melodic integrity; avoid excessively long repeated tones.

### Step 6: Fill Inner Voices (Alt + Ten)
- Following upper-3-voice disposition rules, fill in Alt and Ten:
  - Identify common tones between consecutive chords; retain in the same voice.
  - Leading tone (7th degree) must ascend by step to the tonic.
  - Chordal 7th must descend by step.
  - Remaining voices move to the nearest available tone.
- Disposition consistency: close → close, open → open (or Oct → close/open as approximate dispositions).

### Step 7: Rules Check
Check each clause (A–G) in [references/rules.md](references/rules.md):
- **A Disposition rules**: 5th omission/doubling compliance; 9th placement correctness.
- **B Motion rules**: obligatory leading-tone/chordal-7th resolution; hidden 5ths/8ves.
- **C Simultaneous motion rules**: parallel 8ves/5ths; direct 8ves/5ths; voice crossing.
- **D Bass rules**: excessive Bas leaps.
- **E Disposition-change rules**: indirect consecutive 5ths/8ves.
- **F/G Ornamentation rules** (if ornaments/displacements are used).

### Step 8: Add Ornamentation (Optional)
- In strict Bas exercises, with the given Bas as skeleton, Sop may add passing chords, neighbor-tone figures, appoggiaturas, suspensions, and other displacements/ornaments.
- Rules F1–F3 and G1–G2 require special attention.

## Key Concepts Quick Reference

### Dominant Formula
Fixed connection patterns for `Ⅴ` → `Ⅰ`. Sop has 8 formula types, Bas has corresponding different bass motions.

### Cadence Formula
The perfect cadence D → T reinforced by a D₂ chord: D₂ → D → T (`Ⅱ` → `Ⅴ` → `Ⅰ`, etc.).

### VI as T
`Ⅵ` may serve as a proxy for `Ⅰ` in the T position of a cadential unit. Commonly used in T-succession form `Ⅰ` → `Ⅵ`.

### Modulation / Borrowing / Enharmonic Reinterpretation
- **Modulation**: change of key center (tonic moves)
- **Mode shift**: change of mode (major ↔ minor)
- **Borrowing**: temporarily borrowing chords from another key (notation: `+Ⅱ`, `+Ⅳ`, etc.)
- **Enharmonic reinterpretation**: functional respelling without changing the tonic, but altering the perceived key color

### Incidental Chords
Chord collections formed incidentally through swing (displacement). Identification of incidental chords requires reduction to the originating chord.

### Sustained Bass
The `Ⅰ` or `Ⅴ` tone held long in the bass while upper voices form freely swinging harmonic progressions.

### Sequential Progression
A fixed harmonic pattern repeated at regular intervals ascending or descending.
- **Diatonic sequence**: moves within a single key
- **Modulating sequence**: modulates with each repetition
- **D-type**: based on D progressions / **S-type**: based on S progressions / **Compound-type**: compound harmonic patterns

## Detailed References

- **Chord System & Functional Theory**: see [references/chord-system.md](references/chord-system.md)
- **Voice Leading & Disposition Rules**: see [references/voice-leading.md](references/voice-leading.md)
- **Cadential Units & Cadences**: see [references/cadence.md](references/cadence.md)
- **Dominant Formula & Cadence Formula**: see [references/d-formation.md](references/d-formation.md)
- **Modulation / Borrowing / Enharmonic Reinterpretation**: see [references/modulation.md](references/modulation.md)
- **Various D Chords & D₂ Chords**: see [references/d-chords.md](references/d-chords.md)
- **S Chords & Plagal Cadence**: see [references/s-chord.md](references/s-chord.md)
- **Displacement & Ornamentation**: see [references/ornamentation.md](references/ornamentation.md)
- **Sequential Progressions**: see [references/sequence.md](references/sequence.md)
- **Incidental Chords & Sustained Bass**: see [references/nonchord.md](references/nonchord.md)
- **Compiled Learning Rules**: see [references/rules.md](references/rules.md)
- **Writing Examples**: see [references/examples.md](references/examples.md) (includes complete 4-voice examples)
- **Plain-Text Notation Syntax**: see [references/notation-syntax.md](references/notation-syntax.md)
- **Melody Harmonization Workflow (when a melody is given)**: see [references/melody-harmonization.md](references/melody-harmonization.md)

---

# Plain-Text Chord Notation Syntax (English)

The notation system defined here is the English mirror of the original Chinese notation system. It serves the same purpose: to provide a plain-text, typeable, searchable, and collaboration-friendly chord notation that replaces the special typographic symbols used in the original textbooks, without losing harmonic function or chord-form information.

## 1. Design Principles

- Notation is composed of a **degree core + prefix(es) + suffix(es)**.
- Prefixes describe the chord's nature, function, or formal origin; suffixes describe its alterations, inversions, added tones, or supplemental markers.
- The recommended order is: "first the degree, then the extension, then the inversion, then the alterations, then the markers."
- This spec defines notation-level writing conventions; it does not replace harmonic functional interpretation itself.

## 2. Basic Syntax Skeleton

```text
<notation> ::= <prefix>* <degree> <extension>? <inversion>? <alteration>* <addition>* <marker>*
<prefix>   ::= p | + | - | m | r
<degree>   ::= Ⅰ | Ⅱ | Ⅲ | Ⅳ | Ⅴ | Ⅵ | Ⅶ
<extension> ::= 7 | 9
<inversion> ::= 0 | 1 | 2 | 3 | 4
<alteration> ::= f | s
<addition>  ::= F | S
<marker>    ::= @<target-degree> | /<bass-degree> | (<group>) | [<group>] | {<group>}
```

## 3. Degree Symbols

| Symbol | Unicode | ASCII Fallback | English Name |
|--------|---------|----------------|--------------|
| Ⅰ | U+2160 | I | Tonic |
| Ⅱ | U+2161 | II | Supertonic |
| Ⅲ | U+2162 | III | Mediant |
| Ⅳ | U+2163 | IV | Subdominant |
| Ⅴ | U+2164 | V | Dominant |
| Ⅵ | U+2165 | VI | Submediant |
| Ⅶ | U+2166 | VII | Leading Tone / Subtonic |

### Notes

The degree symbols are the core of the entire notation. They may stand alone to represent a chord, or combine with prefixes and suffixes to form more precise chord notations. In environments where Unicode Roman numerals are difficult to input, the ASCII fallback (`Ⅰ` → `I`, `Ⅱ` → `II`, etc.) may be used.

## 4. Prefixes

Prefixes are placed before the degree symbol and describe the chord's nature or origin.

| Prefix | Name | Meaning |
|--------|------|---------|
| `p` | Neapolitan | Neapolitan II (forces a major triad on the lowered 2nd degree, 1st inversion implied) |
| `+` | Forced major | Enforce a major triad quality (e.g., Picardi Tonic, Dorian IV as forced dominant) |
| `-` | Forced minor | Enforce a minor triad quality (used only when necessary for disambiguation) |
| `m` | Quasi | The diatonic chord of the same degree borrowed from the omnitonic parallel minor/major |
| `r` | Rootless | Root-omitted form for dominants; 5th-omitted form for subdominants |

### Prefix Order

When multiple prefixes apply, they follow the order: `p` → `+`/`-` → `m` → `r`

### Examples

- `Ⅴ` : plain dominant chord
- `+Ⅴ` : dominant chord forced to major (redundant by default; used for emphasis)
- `-Ⅴ` : dominant chord forced to minor
- `rⅤ` : rootless dominant (rootless form)
- `mⅤ` : quasi dominant (borrowed from omnitonic minor)
- `pⅡ` : Neapolitan II
- `+Ⅳ` : subdominant forced to major (Dorian IV)

## 5. Suffixes

Suffixes follow the degree (and any extension/inversion digits) and describe the chord's variations and supplemental information.

### 5.1 Extensions

| Suffix | Meaning |
|--------|---------|
| `7` | 7th chord |
| `9` | 9th chord |

Extensions are placed immediately after the degree symbol.

### 5.2 Inversions

| Suffix | Meaning |
|--------|---------|
| `0` | Unspecified inversion (placeholder) |
| `1` | 1st inversion (3rd in bass) |
| `2` | 2nd inversion (5th in bass) |
| `3` | 3rd inversion (7th in bass) |
| `4` | 4th inversion (9th in bass — theoretical, rarely used) |

Inversions follow the extension digit. If no extension and the chord is a triad, the inversion digit directly follows the degree (e.g., `Ⅰ1` = Tonic 1st inversion). If the chord is in root position, the inversion digit `0` may be omitted.

#### Examples

- `Ⅴ72` : Dominant 7th, 2nd inversion
- `Ⅴ93` : Dominant 9th, 3rd inversion
- `Ⅴ00` : Dominant chord (whether 7th or 9th), unspecified inversion
- `Ⅱ1` : Supertonic triad, 1st inversion

### 5.3 Alterations

| Suffix | Meaning | Context |
|--------|---------|---------|
| `f` | ♭5 — flattened 5th | Placed after any extension/inversion digits |
| `s` | ♯5 — sharpened 5th | For dominant-function chords |

If the 6th added to a subdominant-function chord is itself chromatically altered, the addition marker `S` is prefixed with the alteration: `sS` for ♯6, `fS` for ♭6. (This avoids collision with `s` as ♯5.)

Alterations follow the extension and inversion digits.

#### Examples

- `Ⅴ7f` : Dominant 7th ♭5
- `Ⅴ91s` : Dominant 9th 1st inversion ♯5
- `ⅣsS` : Subdominant with added ♯6th
- `mrⅤ91s` : quasi rootless Dominant 9th 1st inversion ♯5

### 5.4 Additions

| Suffix | Meaning |
|--------|---------|
| `F` | Add 4th (from German "Quarte", via Japanese 付加4) |
| `S` | Add 6th (from German "Sexte", via Japanese 付加6) |

Additions follow alterations.

#### Examples

- `ⅣS` : Subdominant add 6th
- `ⅣF` : Subdominant add 4th
- `rⅣS` : Subdominant add 6th, omit 5th
- `rⅣF` : Subdominant add 4th, omit 5th

## 6. Markers

| Marker | Name | Meaning |
|--------|------|---------|
| `@` | Tonicization target | Marks the secondary key toward which a chord tonicizes |
| `/` | Sustained bass | Marks a sustained/pedal bass note |

### Notes

These two markers typically appear at the end of a notation string, indicating the "functional target direction" or "bass sustain." The content following the marker may be a degree symbol or a bracketed group.

#### Examples

- `Ⅴ@Ⅱ` : Dominant tonicizing to II
- `Ⅴ71@Ⅴ` : Dominant 7th 1st inversion tonicizing to V
- `rⅤ91@mⅣ` : rootless Dominant 9th 1st inversion tonicizing to quasi-IV
- `mrⅤ91@Ⅳ` : quasi rootless Dominant 9th 1st inversion tonicizing to IV
- `mrⅤ93@mⅣ` : quasi rootless Dominant 9th 3rd inversion tonicizing to quasi-IV
- `rⅤ92f@Ⅴ` : rootless V9 2nd inversion ♭5, tonicizing to V
- `mrⅤ91f@Ⅴ` : quasi rootless Dominant 9th 1st inversion ♭5, tonicizing to V
- `mrⅤ91s` : quasi rootless Dominant 9th 1st inversion ♯5
- `Ⅴ7/Ⅰ` : V7 on sustained I
- `mrⅤ93@Ⅴ/Ⅴ` : quasi rootless Dominant 9th 3rd inversion tonicizing to V, on sustained V

## 7. Grouping and Nesting

Parentheses, brackets, and braces wrap compound harmonies, nested structures, or segments requiring emphasis.

- `()` : Parentheses — wrap compound notations or descriptive segments
- `[]` : Square brackets — wrap secondary descriptions or internal structures
- `{}` : Curly braces — wrap more complex combinatorial relationships

## 8. Recommended Writing Order

To maintain readability and consistency, write in the following order:

1. Prefix(es)
2. Degree symbol
3. Extension (`7`, `9`)
4. Inversion (`1`, `2`, `3`, `4`)
5. Alterations (`f`, `s`)
6. Additions (`F`, `S`)
7. Markers (`@...`, `/...`)
8. Grouping symbols

### Full Examples

- `Ⅰ` : Tonic
- `Ⅱ` : Supertonic (D₂)
- `Ⅴ` : Dominant
- `Ⅰ1` : Tonic 1st inversion
- `Ⅱ1` : Supertonic 1st inversion
- `Ⅴ2` : Dominant 2nd inversion
- `Ⅴ7` : Dominant 7th
- `Ⅴ9` : Dominant 9th
- `Ⅴ71` : Dominant 7th 1st inversion
- `Ⅴ93` : Dominant 9th 3rd inversion
- `rⅤ7` : rootless Dominant 7th
- `rⅤ9` : rootless Dominant 9th
- `rⅤ71` : rootless Dominant 7th 1st inversion
- `rⅤ93` : rootless Dominant 9th 3rd inversion
- `ⅣS` : IV add 6th
- `ⅣF` : IV add 4th
- `rⅣS` : IV add 6th omit 5th
- `rⅣF` : IV add 4th omit 5th
- `mⅣ` : quasi IV
- `mrⅤ91` : quasi rootless Dominant 9th 1st inversion
- `Ⅴ@Ⅱ` : Dominant tonicizing to II
- `Ⅴ71@Ⅴ` : Dominant 7th 1st inversion tonicizing to V
- `rⅤ91@mⅣ` : rootless Dominant 9th 1st inversion tonicizing to quasi-IV
- `mrⅤ91@Ⅳ` : quasi rootless Dominant 9th 1st inversion tonicizing to IV
- `mrⅤ93@mⅣ` : quasi rootless Dominant 9th 3rd inversion tonicizing to quasi-IV
- `rⅤ92f@Ⅴ` : rootless V9 2nd inversion ♭5, tonicizing to V
- `mrⅤ91f@Ⅴ` : quasi rootless Dominant 9th 1st inversion ♭5, tonicizing to V
- `mrⅤ91s` : quasi rootless Dominant 9th 1st inversion ♯5
- `ⅣsS` : IV add ♯6th
- `+Ⅳ7` : Dorian IV as Dominant 7th
- `pⅡ1` : Neapolitan II 1st inversion
- `+Ⅰ` : Picardi Tonic
- `Ⅴ7/Ⅰ` : V7 on sustained I
- `mrⅤ93@Ⅴ/Ⅴ` : quasi rootless Dominant 9th 3rd inversion tonicizing to V, on sustained V

## 9. Scope

This notation system is suitable for:

- SATB part-writing exposition
- Chord analysis and functional annotation
- Concise notation in teaching materials
- Plain-text collaboration and search

Within this repository, it should be regarded as a typeable, searchable, cross-platform alternative to the special typographic chord symbols used in the original textbooks.

---

# Chord System and Functional Theory

## Key and Degrees

- **Tonic**: the central tone of a key
- **Key position**: expressed by the tonic's pitch name (C, D, E, ...)
- **Mode**: major mode (major scale) / minor mode (minor scale)
- **24 keys**: 12 key positions × 2 modes

### Degrees
The tonic is degree `Ⅰ` (I). Counting upward: `Ⅱ`, `Ⅲ`, `Ⅳ`, `Ⅴ`, `Ⅵ`, `Ⅶ`. Octave-related tones share the same degree number.

### Degree Alteration
Each degree may be chromatically altered while retaining its identity:
- **Upper alteration** (raised): `♯Ⅰ`, `♯Ⅱ`, ... `♯Ⅶ`
- **Lower alteration** (lowered): `♭Ⅰ`, `♭Ⅱ`, ... `♭Ⅶ`
- The unaltered position is the **natural** position.

## Chord Fundamentals

### Triad
Formed from root (1), 3rd (3), 5th (5).

Prototype: root in the lowest position.

### 7th Chord
A triad prototype plus the 7th (7), a 7th above the root.

### Bass Positions
- **Fundamental position** ⟨fund⟩: root in bass
- **1st inversion** ⟨1st⟩: 3rd in bass
- **2nd inversion** ⟨2nd⟩: 5th in bass
- **3rd inversion** ⟨3rd⟩: 7th in bass

### Soprano Positions
Highest tone = root: 1-pos, 3rd: 3-pos, 5th: 5-pos, 7th: 7-pos.

### Doubling and Omission of Constituent Tones
- Omissible: **5th** (the only omissible constituent)
- Doublable: **5th** (root omission in rootless dominants is a special form)

## Circle of 5ths and Functions

### Circle of 5ths (Clockwise = D Progression)
`Ⅰ` → `Ⅴ` → `Ⅱ` → `Ⅵ` → `Ⅲ` → `Ⅶ` → `Ⅳ` → `Ⅰ`

### Functional Positions
- **T (Tonic function)**: the position of `Ⅰ`. Stable. May move freely to any unstable chord.
- **D (Dominant function, D₁)**: `Ⅴ`. One D-progression step from T.
- **D₂~D₆**: 2~6 D-progression steps from T.
- **S (Subdominant function, S₁)**: `Ⅳ`. One S-progression step (counterclockwise) from T.

Functional position is determined by "number of D-progression steps from T."

### Common Functions
In practice the most frequently used: T, D(D₁), D₂, S.

## Chord Notation System

| Notation | Name |
|----------|------|
| `Ⅰ`, `Ⅱ`, `Ⅲ`... | Degree symbols (plain-text core notation) |
| `Ⅰ7`, `Ⅱ7`, `Ⅴ7`... | 7th chords |
| `Ⅰ2`, `Ⅱ2`, `Ⅴ2`... | 2nd inversion |
| `rⅤ7`, `rⅤ9` | rootless Dominant 7th / rootless Dominant 9th |
| `+Ⅳ`, `+Ⅱ` | borrowed chords |
| `♭Ⅶ` | Secondary D₂ chord (borrowed on lowered Ⅶ; not to be confused with `♭Ⅴ`, "lowered V") |
| `Ⅰ@Ⅴ` | relative-key chord / compound chord |
| `pⅡ1` | Neapolitan II |
| `+Ⅰ` | Picardi Tonic |

## D Chords (on `Ⅴ`)

- `Ⅴ` (triad)
- `Ⅴ7` (7th chord)
- `Ⅴ9` (9th chord)
- `rⅤ7` (rootless Dominant 7th)
- `rⅤ9` (rootless Dominant 9th)

## D₂ Chords (on `Ⅱ`)

- `Ⅱ`, `Ⅱ7`, `Ⅳ` (diatonic)
- `+Ⅱ`, `+Ⅳ`, `♭Ⅶ` (borrowed/altered)
- Various rootless forms

### Augmented 6th Chords
Special D₂ chords formed by lowering the 5th of `Ⅴ7` (♭5):
- **Aug 3-4** (French 6th)
- **Aug 3-6** (Italian 6th)
- **Aug 5-6** (German 6th)

## Rootless Dominant Chords

Forms with the root omitted. Notated with the `r` prefix combined with the degree.

- **rⅤ7**: root-omitted `Ⅴ7` → formed from 3rd, 5th, 7th
- **rⅤ9**: root-omitted `Ⅴ9`

Rootless dominant chords are not independent chords; they are omitted forms of `Ⅴ7`/`Ⅴ9` and still belong to the D function.

In 4-voice disposition, since only 3 constituent tones remain, some tone must be doubled. The 5th may often be doubled. In ⟨2nd⟩ inversion, doubling of the 7th is also common.

## `♭Ⅴ` — lowered V

A chord formed by lowering the 5th of `Ⅴ` (♭5). Common in minor keys.
`♭Ⅴ7` is applicable only in D₂ (on `Ⅱ`); `♭Ⅴ7` on other degrees is not applicable (it would lead to modulation).

## `Ⅵ` as T

`Ⅵ` is an unstable chord at the D₃ position, but after `Ⅴ` (→ `Ⅵ`) it is used as a proxy for `Ⅰ` (T).

- `Ⅵ`(T) is used only in ⟨fund⟩
- Deceptive cadence = `Ⅴ7` → `Ⅵ` (the `Ⅰ` of the Dominant formula `Ⅴ` → `Ⅰ` replaced by `Ⅵ`)
- T succession `Ⅰ` → `Ⅵ`: `Ⅰ` often precedes `Ⅵ`
- `Ⅵ`(T) is typically followed by a D₂ chord

## S Chords (on `Ⅳ`)

### Five Forms
`Ⅳ` (triad) → `Ⅳ7` → `rⅣ7` → `Ⅳ9` → `rⅣ9`, plus the `+Ⅳ` series (Dorian, etc.).

### S Formula
S → T progression (basis of plagal cadence): `Ⅳ` → `Ⅰ`.

---

# SATB Voice Leading and Disposition Rules

## Voices

Top to bottom: Soprano (Sop) → Alto (Alt) → Tenor (Ten) → Bass (Bas)

- **Outer voices**: Sop + Bas (most important contrapuntal relationship)
- **Inner voices**: Alt + Ten
- **Upper 3 voices**: Sop + Alt + Ten

## Voice Ranges

Sop: c¹ ~ a² (dotted to c³)
Alt: g ~ f² (dotted to a²)
Ten: c ~ c² (dotted to f¹)
Bas: F ~ c¹ (dotted to e¹)

## Standard Distance Between Adjacent Voices

- **Close position**: the highest and lowest of the upper 3 voices are within an octave
- **Open position**: the highest and lowest of the upper 3 voices exceed an octave
- **Extreme separation**: adjacent voices exceed a 15th (avoid)
- **Octave position**: Sop–Alt or Alt–Ten at an octave's distance

## Standard Upper-3-Voice Dispositions

Each triad has 4 standard upper-3-voice dispositions:
1. 1-pos, 3, 5 (root in soprano)
2. 3-pos, 1, 5
3. 5-pos, 1, 3
4. 3-pos, 5, 1 (only for `Ⅰ`, `Ⅳ`, `Ⅴ` triads)

## Basic Principles of Connection

### Common-Tone Retention
Common tones between consecutive chords should be retained in the same voice without moving.

### Three-Voice Motion
- **Stepwise motion**: up or down by a 2nd
- **Leap**: a 3rd or larger
- **Three-voice principle**: within the upper 3 voices, each voice moves independently; two voices moving in similar motion to the same pitch (unison) is forbidden.

### Obligatory Motion Tones
- **Leading tone** (7th degree = half step above the 3rd): must ascend by step to the tonic
- **Chordal 7th** (the 7th constituent of a 7th chord): must descend by step
- Doubling the leading tone is generally forbidden (especially strict in `Ⅴ7` → `Ⅰ`)

## Forbidden Practices

### Parallel Octaves/5ths
- Two voices moving in similar motion to a perfect octave or perfect 5th
- Especially strict between the upper 2 voices
- Most strict between the outer voices

### Hidden Octaves/5ths
- Outer voices moving in similar motion to a perfect octave/5th (when Sop leaps)

### Direct Octaves/5ths
- Two voices arriving at the same pitch (unison) from different pitches in similar motion

## Permitted Practices

- Diminished 5th → perfect 5th (consecutive 5ths formed by obligatory motion tones)
- Contrary consecutive 5ths/8ves
- Oblique consecutive 5ths/8ves
- Consecutive 5ths between inner voices (more relaxed than outer voices)
- Indirect consecutive 5ths/8ves caused by disposition changes

## Disposition Changes

The chord degree remains the same; only the disposition changes (including form/bass-position changes).

### D-Chord Form Ascension
Triad → 7th chord → 9th chord: unconditionally possible.

### D-Chord Form Descension
- 9 → 3: forbidden
- 9 → 7: permitted
- 7 → 3: forbidden

### Forbidden in Disposition Changes
- 7th → root by ascending 2nd
- 9th → 3rd by ascending 2nd

### 5ths/8ves in Disposition Changes
- Consecutive 5ths occurring simultaneously with a disposition change: if the preceding 5th is diminished, the following perfect 5th is permitted
- Direct 5ths/8ves caused by disposition changes: all acceptable between the two outer voices

---

# Cadential Units and Cadences

## Swing (Yure)

The fundamental perspective on harmony. Chords, like a pendulum, swing back and forth between stable positions (rest) and deviated positions (displacement).

- **Rest position** (定位): stable form (originating tones)
- **Displacement** (転位): deviated form, generating tension
- **Cadential unit** (曳動単位): a complete swing process from release to resolution
- **Cadential chain** (曳動連鎖): multiple cadential units linked together

## The Chord Pathway

The return path of unstable chords to `Ⅰ` (T):

- T (stable) freely departs to any D₁~D₆
- D₁ (`Ⅴ`) goes directly → T
- D₂ (`Ⅱ`) must pass through D₁ → T
- D₃ (`Ⅵ`) must pass through D₂ → D₁ → T
- D₄ (`Ⅲ`) must pass through D₃ → D₂ → D₁ → T
- D₅ (`Ⅶ`) must pass through D₄ → D₃ → D₂ → D₁ → T
- D₆ (`Ⅳ`) must pass through D₅ → D₄ → D₃ → D₂ → D₁ → T

## Various Cadential Units

### Common Cadential Units

| Name | Progression | Function | Abbrev. |
|------|-------------|----------|---------|
| Cadential Unit Type 1 | T → D → T | `Ⅰ` → `Ⅴ` → `Ⅰ` | K1 |
| Cadential Unit Type 2 | T → D₂ → D → T | `Ⅰ` → `Ⅱ` → `Ⅴ` → `Ⅰ` | K2 |
| Cadential Unit Type 3 | T → S → T | `Ⅰ` → `Ⅳ` → `Ⅰ` | K3 |

### Uncommon Cadential Units

| Length | Progression Example |
|--------|---------------------|
| 4-term | `Ⅰ` → `Ⅵ` → `Ⅱ` → `Ⅴ` → `Ⅰ` (T → D₃ → D₂ → D → T) |
| 5-term | `Ⅰ` → `Ⅲ` → `Ⅵ` → `Ⅱ` → `Ⅴ` → `Ⅰ` |
| 6-term | `Ⅰ` → `Ⅶ` → `Ⅲ` → `Ⅵ` → `Ⅱ` → `Ⅴ` → `Ⅰ` |
| 7-term | `Ⅰ` → `Ⅳ` → `Ⅶ` → `Ⅲ` → `Ⅵ` → `Ⅱ` → `Ⅴ` → `Ⅰ` |
| 8-term | (longest; seen in sequential forms) |

Shorter cadential units are more frequently used. T is highest frequency, D₁ next, and frequency decreases with distance from T.

## Cadence Types

### Basic Cadences

| Name | Abbrev. | Harmonic Form | Function | Punctuation Sense |
|------|---------|---------------|----------|-------------------|
| Perfect cadence | □ | → `Ⅴ7` → `Ⅰ` | D → T | Period (.) |
| Deceptive cadence | □̷ | → `Ⅴ7` → `Ⅵ` | D → T(proxy) | Semicolon (;) |
| Half cadence | ▷ | → `Ⅴ` | D | Comma (,) |
| Plagal cadence | □̱ | → `Ⅳ` → `Ⅰ` | S → T | Period (.) |

### Other Cadences

| Name | Harmonic Form |
|------|---------------|
| Incomplete cadence | Ending on an unstable chord other than `Ⅴ` |
| Proxy cadence | Ending on a V proxy (e.g., `Ⅱ`) |

### Closed and Open Cadences

- **Closed cadence**: ends on `Ⅰ` (perfect/plagal). The phrase is fully stable.
- **Open cadence**: ends on an unstable chord (deceptive/half). The phrase is incomplete.

## Cadence Formula

The perfect cadence D → T reinforced by a D₂ chord:

**D₂ → D → T** (e.g., `Ⅱ` → `Ⅴ` → `Ⅰ`)

The cadence formula is the most commonly used cadential form in Classical music.

### The D₂ Term of the Cadence Formula
Available chords: `Ⅱ`, `Ⅱ7`, `Ⅳ`, `rⅡ7`, `+Ⅱ`, `+Ⅳ`, etc.

### Cadence Formula Sop Formulas

| Formula | Sop Motion | Description |
|---------|------------|-------------|
| (1) | `Ⅱ` `Ⅴ7` `Ⅰ` | Basic form |
| (2) | `Ⅱ7` `Ⅴ` `Ⅰ` | With 7th chord |
| (3) | `Ⅱ7` `Ⅴ7` `Ⅰ` | Double 7th |
| (4) | `Ⅳ` `Ⅴ7` `Ⅰ` | IV type |
| (5) | `Ⅱ` `Ⅴ` `Ⅰ` | `Ⅴ` omits 7th |

### Cadence Formula Bas Formulas
Bas in `Ⅱ` → `Ⅴ` is typically an ascending 4th (`Ⅱ` → `Ⅴ`); descending 5th is less common.

### Application of `Ⅰ2 rⅤ7` in the Cadence Formula

When `Ⅰ2 rⅤ7` is connected with `Ⅴ7`, the function of `Ⅰ2` is not T but rather D, integrated with `Ⅴ7`.
`Ⅰ2 rⅤ7` follows a strong → weak relationship; it is mostly used in strong-beat → weak-beat contexts.

### Exceptional Leading-Tone Motion

To avoid conflict with a suspension, the leading tone may move exceptionally to 5 or 3 (rather than ascending to 1). Descending leading-tone motion in Sop should be avoided.

## Cadential Chains

Multiple cadential units linked together, with nodal points at `Ⅰ` (T):

Example: K3 + K1 + K2 = `Ⅰ` → `Ⅳ` → `Ⅰ` → `Ⅴ` → `Ⅰ` → `Ⅱ` → `Ⅴ` → `Ⅰ`

## Common Cadential Combinations

### Final Cadences
- Most common: perfect cadence (cadence formula)
- Plagal supplement: perfect cadence followed by plagal cadence
- Final section: either perfect or deceptive cadence acceptable

### Intermediate Cadences
- Phrase cadence point `Ⅰ` → deceptive cadence
- Half cadence: mid-phrase sections

### D₂ Succession Before the Cadence Formula
D₂ chords may be used in succession before the cadence formula: `Ⅱ` → `Ⅱ7` → `Ⅴ7` → `Ⅰ`

---

# Dominant Formula and Cadence Formula

## Dominant Formula

Fixed connection patterns for `Ⅴ7` → `Ⅰ`.

### Bas Dominant Formulas (7 types)

| Formula | Bas Motion | Description |
|---------|------------|-------------|
| (a) | `Ⅴ7` → `Ⅰ` (descending 4th) | Most fundamental |
| (b) | `Ⅴ7` → `Ⅰ` (ascending 2nd) | Same-degree Bas |
| (c) | `Ⅴ7` → `Ⅰ` (ascending 4th) | Ascending leap |
| (d) | `rⅤ7` → `Ⅰ` | Rootless dominant |
| (e) | `Ⅴ7` → `Ⅰ2` (descending 2nd) | Arriving at 2nd inversion |
| (f) | `Ⅴ` → `Ⅰ` | Triad dominant |
| (g) | `Ⅴ` → `Ⅵ` | Dominant formula supplement (deceptive cadence) |

### Sop Dominant Formulas (8 types)

| Formula | Sop Motion |
|---------|------------|
| (1) | `Ⅴ7` → `Ⅰ` → `Ⅰ` |
| (2) | `Ⅴ7` → `Ⅰ` → 3 |
| (3) | `Ⅴ7` → 3 → `Ⅰ` |
| (4) | `Ⅴ7` → 3 → 3 |
| (5) | `Ⅴ7` → 5 → `Ⅰ` |
| (6) | `Ⅴ` → `Ⅰ` → `Ⅰ` |
| (7) | `Ⅴ` → `Ⅰ` → 3 |
| (8) | `Ⅴ` → 3 → `Ⅰ` |

### Dominant Formula Connection Rules
- `Ⅴ7` ⟨fund⟩ → `Ⅰ` ⟨fund⟩: upper 3 voices close → close or open → open (consistent/approximate)
- Leading tone must ascend by step (mandatory)
- Chordal 7th must descend by step (mandatory)
- Incomplete `Ⅴ7` → `Ⅰ` standard-outer disposition (5th missing)

### Special Treatment of `Ⅴ7` → `Ⅰ2` (⟨2nd⟩)
- When the 7th is below the 3rd: the 7th may ascend by step (exception)
- When the 7th is above the 3rd: ascending 7th would produce consecutive 5ths — forbidden. `Ⅰ2` with doubled 3rd (non-standard disposition) is permitted.

### Dominant Formula (g) `Ⅴ` → `Ⅵ`
- Basis of the deceptive cadence
- Upper 3 voices: leading tone ascends by step, chordal 7th descends by step, 5th/root each descend by step to the nearest tone
- `Ⅵ` upper 3 voices: root omitted, 3rd doubled
- `Ⅴ7` must be complete; incomplete form not used

## Cadence Formula

### Cadence Formula Structure

**D₂ → D → T** (basic form of the cadence formula)

The D → T portion is the same as the Dominant formula. The D₂ → D connection is the critical part.

### D₂ → D Connection

| Progression | Disposition Rule |
|-------------|------------------|
| `Ⅱ` → `Ⅴ7` | Consistent (close → close, open → open) or approximate (Oct → close, Oct → open) |
| `Ⅱ7` → `Ⅴ7` | Same as above |
| `Ⅳ` → `Ⅴ` | Same as above |

### Cadence Formula Sop Formulas

Corresponding to the Dominant formula Sop formulas:

| Formula | Sop Motion | D₂ Term |
|---------|------------|---------|
| (1) | `Ⅱ` `Ⅴ7` `Ⅰ` | `Ⅱ` ⟨fund⟩ |
| (2) | `Ⅱ7` `Ⅴ` `Ⅰ` | `Ⅱ7` ⟨fund⟩ |
| (3) | `Ⅱ7` `Ⅴ7` `Ⅰ` | `Ⅱ7` ⟨fund⟩ |
| (4) | `Ⅳ` `Ⅴ7` `Ⅰ` | `Ⅳ` ⟨fund⟩ |
| (5) | `Ⅱ` `Ⅴ` `Ⅰ` | `Ⅱ` ⟨fund⟩ |

Together with the two-outer-voice combination cadence formulas (5 types) and Bas formulas (2 types), various actual forms are produced.

### Application of `Ⅰ2 rⅤ7` in the Cadence Formula

When `Ⅰ2 rⅤ7`(D) is used as the D term of the cadence formula, the Sop formulas become (2')~(5'):

| Formula | Variation |
|---------|-----------|
| (2') | `Ⅱ` `Ⅰ2 rⅤ7` `Ⅰ` |
| (3') | `Ⅱ7` `Ⅰ2 rⅤ7` `Ⅰ` |
| (4') | `Ⅱ7` `Ⅰ2 rⅤ7` `Ⅰ` (same as 3') |
| (5') | `Ⅳ` `Ⅰ2 rⅤ7` `Ⅰ` |

When `Ⅰ2 rⅤ7` is used in succession with `Ⅰ2` → `Ⅴ7`, the function of `Ⅰ2` is not T but D, integrated with `Ⅴ7`.

### Cadence Formula Rules
- D₂ → D disposition: consistent or approximate
- `Ⅰ2 rⅤ7`(D) connection: both chords in consistent disposition
- D₂ → `Ⅰ2 rⅤ7`(D) connection: disposition consistent or approximate
- Open-position `Ⅱ` used in formula (5'): consecutive 5ths would occur between inner voices — forbidden. This formula uses close-position `Ⅱ` only.

### Cadence Formula Bas Formulas

| Formula | Bas Motion |
|---------|------------|
| (a) | `Ⅱ` → `Ⅴ` → `Ⅰ` (ascending 4th → descending 4th) |
| (b) | `Ⅱ` → `Ⅴ` → `Ⅰ` (same degree → descending 4th) |

### Two-Outer-Voice Combination Cadence Formulas

Bas formula (a)(b) × Sop formula (1)~(5) combinations, giving 10 basic combinations.

### `Ⅰ2 rⅤ7` at Half Cadence Points

At a half cadence point, `Ⅴ` may also use `Ⅰ2 rⅤ7`:
- `Ⅰ2 rⅤ7` → `Ⅴ` in succession: `Ⅰ2` has D function; strong → weak relationship
- Outside half cadences, `Ⅴ` → `Ⅰ2 rⅤ7` also follows strong → weak

---

# Modulation / Borrowing / Enharmonic Reinterpretation

## Keys on Each Degree

In a given key X, the keys whose tonics are the triads on `Ⅰ`, `Ⅱ`, `Ⅲ`, `Ⅳ`, `Ⅴ`, `Ⅵ`, `Ⅶ`:

- `Ⅰ` key = the home key itself
- `Ⅴ` key = the dominant key
- `Ⅱ` key = the supertonic key
- etc.

## Modulation

A change of key during the course of a piece.

### Closely Related Modulation
- The `Ⅴ` key of the home key (dominant key)
- The `Ⅱ` key of the home key (supertonic key)
- The `Ⅵ` key of the home key (submediant key)

### Modulation via Pivot Key
Modulation through an intermediate key. Example: C major → A minor → C major.

### Modulation Methods
- Common-chord modulation
- Reinterpretation modulation
- Enharmonic modulation

## Borrowing

Temporarily borrowing chords from another key.

### Common Borrowings
- **`+Ⅳ` (major `Ⅳ`)**: in minor, borrowing `Ⅳ` from major
- **`+Ⅱ` (major `Ⅱ`)**: in minor, borrowing `Ⅱ` from major
- **`♭Ⅶ`**: in major, borrowing the subtonic from minor
- **`pⅡ` (Neapolitan `Ⅱ`)**: a major triad on the lowered 2nd degree, 1st inversion (`pⅡ1`)

### Borrowing Notation
`+Ⅱ` = in minor, borrowing `Ⅱ` from major (major triad)
`+Ⅳ` = in minor, borrowing `Ⅳ` from major (major triad)
`+Ⅱ7` = in minor, borrowing `Ⅱ7` from major
`+Ⅳ7` = in minor, borrowing `Ⅳ7` from major

## Enharmonic Reinterpretation

Functional respelling through enharmonic equivalence. Changes the perceived key color without changing the tonic.

Enharmonic reinterpretation understands chord function through enharmonic conversion.

## Enharmonic Modulation

Modulation using enharmonic equivalence (same pitch, different spelling).

### Enharmonic Reinterpretation of Diminished 7ths
The constituent tones of a diminished 7th are all 3 semitones apart; a single diminished 7th can be grasped in 4 enharmonically distinct ways.

### Enharmonic Modulation Procedure
1. The diminished 7th of the target key = the diminished 7th of the original key (enharmonic reinterpretation)
2. Resolve that diminished 7th to the target key's `Ⅰ`

## Expanded Key Relationships via Modulation + Enharmonic Reinterpretation

Through combinations of modulation and enharmonic reinterpretation, distantly related keys become accessible.

### D-Circle Key Relationships
D₁ (dominant key) → D₂ (supertonic key) → D₃ (submediant key) → ... progressively expanding the reachable range.

### S-Circle Key Relationships
S₁ (subdominant key) → S₂ (subtonic key) → S₃ (mediant key) → ...

## Modulation Connection Rules

During modulation, ordinary connection rules apply, but:
- Augmented 2nds may be permitted (special treatment in modulation connections)
- The leading tone in the new key must still ascend by step to the new tonic
- Avoid obligatory-tone conflicts near modulation points

---

# Various D Chords and D₂ Chords

## D Chords at a Glance (Major/Minor)

| Type | Triad | 7th | Rootless 7th | 9th | Rootless 9th |
|------|-------|-----|-------------|-----|-------------|
| Diatonic Ⅴ | `Ⅴ` | `Ⅴ7` | `rⅤ7` | `Ⅴ9` | `rⅤ9` |
| Sub-Ⅴ | `♭Ⅴ` | `♭Ⅴ7` | `r♭Ⅴ7` | `♭Ⅴ9` | `r♭Ⅴ9` |
| Borrowed +Ⅳ | — | `+Ⅳ7` | `r+Ⅳ7` | `+Ⅳ9` | `r+Ⅳ9` |

## `Ⅴ9` and `rⅤ9`

### `Ⅴ9` Disposition
- Major 9th / minor 9th: at least a 9th above the root
- The major 9th must be above the 3rd (leading tone)
- When prepared, the major 9th may be below the 3rd
- The minor 9th may be below the 3rd

### `Ⅴ9` Resolution
- 9th: descends by step
- 7th: descends by step
- Leading tone: ascends by step

### `rⅤ9` Disposition
The rootless 9th has only 3 constituent tones; in 4 voices, doubling is necessary. The 5th may often be doubled; in ⟨2nd⟩ inversion, doubling of the 7th is also common (except doubling in the upper 2 voices).

### `rⅤ9` Resolution
- 7th and leading tone follow the same obligatory motion as in `Ⅴ7`
- When the 5th is doubled: one descends by step, the other descends by 5th or ascends by 4th
- ⟨2nd⟩ without doubling: the voice below the 7th may ascend by step
- 7th doubled: one descends by step, the other (below the 3rd) ascends by step

## `Ⅴ7` and `rⅤ7`

### `Ⅴ7` Disposition
Complete form (4 distinct constituent tones) and incomplete form (5th missing, 3rd doubled).

- `Ⅴ7` ⟨fund⟩ → `Ⅰ`: `Ⅰ` must be in non-standard outer disposition (5th missing)
- `Ⅴ7` ⟨1st⟩: various possibilities
- `Ⅴ7` ⟨2nd⟩: various possibilities
- `Ⅴ7` ⟨3rd⟩: various possibilities

### `rⅤ7` Disposition
- ⟨fund⟩: 3rd, 5th, 7th
- ⟨1st⟩: same tones, inverted
- ⟨2nd⟩: same tones, inverted (7th doubling common)
- ⟨3rd⟩: same tones, inverted

### Sop Formulas for `Ⅴ7`/`rⅤ7`

| Formula | Description |
|---------|-------------|
| (a) | Basic two-outer-voice formula |
| (b) | Extra formula specific to `Ⅴ7` (major 9th) |
| (c)–(d) | Various soprano-position variations |

When the 5th lies below the 9th: descending 5th would produce consecutive 5ths; must instead ascend by step or ascend by 4th.

### Leading-Tone Doubling
`Ⅴ7` → `Ⅰ` (triad `Ⅰ`): leading-tone doubling forbidden.
`Ⅴ7` → `Ⅰ7`: leading-tone doubling permitted.

## D₂ Chords (on `Ⅱ`) at a Glance

| Type | Triad | 7th | Rootless 7th | 9th | Rootless 9th |
|------|-------|-----|-------------|-----|-------------|
| Diatonic Ⅱ | `Ⅱ` | `Ⅱ7` | `rⅡ7` | `Ⅱ9` | `rⅡ9` |
| `Ⅳ` (has D₂ function) | `Ⅳ` | `Ⅳ7` | `rⅣ7` | `Ⅳ9` | `rⅣ9` |
| `+Ⅱ` (borrowed) | `+Ⅱ` | `+Ⅱ7` | `r+Ⅱ7` | `+Ⅱ9` | `r+Ⅱ9` |
| `+Ⅳ` (borrowed) | `+Ⅳ` | `+Ⅳ7` | `r+Ⅳ7` | `+Ⅳ9` | `r+Ⅳ9` |
| `♭Ⅶ` (sub) | `♭Ⅶ` | `♭Ⅶ7` | `r♭Ⅶ7` | `♭Ⅶ9` | `r♭Ⅶ9` |

## Augmented 6th Chords

Special D₂ chords formed by lowering the 5th of `Ⅴ7` (♭5).

### Three Forms of Augmented 6th
- **Aug 3-4** (French 6th)
- **Aug 3-6** (Italian 6th)
- **Aug 5-6** (German 6th)

### Augmented 6th Disposition
- ⟨2nd⟩ most commonly used
- The lowered tone (♭5 of `rⅤ`) and the upper 3rd (3rd of T/`Ⅳ`) form an augmented 6th

### Augmented 6th Usage
- In the cadence formula: at `Ⅱ`, Aug 6th → `Ⅴ`
- Altered chords are basically applicable only in D₂ (on `Ⅱ`)
- Sub `Ⅴ7` on degrees other than `Ⅴ` is not applicable (would lead to modulation)

## D₂ Chords Outside the Cadence Formula

### Usage A (4-note D₂ formula)
`Ⅰ` → `Ⅱ` → `Ⅱ` → `Ⅴ` → `Ⅰ`
Bas is fixed; the D term may use various `Ⅴ7` forms.

### Usage B (chromatic passing chord)
`Ⅰ` → `Ⅵ` → `Ⅱ` → `Ⅰ`: a chromatic passing chord is inserted between D₂ → D.
`+Ⅳ` may substitute for `Ⅱ`.

## Full Range of D₂ Formula Possibilities

The bass of the two chords D₂ → D may in principle use all constituent tones (including alterations) of the 9th chords on `Ⅱ` and `Ⅴ`.

### Key Points of the D₂ Formula Inventory
- `Ⅱ` (or its lowered form) may originate from various degrees
- `Ⅴ` (or its lowered form) may originate from various degrees
- Combinations exclude: obligatory-tone conflicts, 7th-doubling conflicts, rule C5 conflicts, upper-voice consecutive 5ths

### Minor-Key D₂ Formulas
- Two types of diatonic `Ⅶ`: diatonic `Ⅶ` + raised `Ⅶ` (`♯Ⅶ` = leading tone)
- Dominant formula / cadence formula: at `Ⅴ`, use `♯Ⅶ`
- Other diatonic chords (`Ⅱ7`, `Ⅲ7`, etc.): use diatonic `Ⅶ`
- The 7th of `Ⅱ7` (`Ⅶ`) is diatonic `Ⅶ`; its preparation tone (`Ⅴ`) also uses diatonic `Ⅶ`

---

# S Chords and Plagal Cadence

## S Chords (on `Ⅳ`)

### Five Forms

| Form | Constituents |
|------|-------------|
| `Ⅳ` (triad) | root + 3 + 5 |
| `Ⅳ7` | root + 3 + 5 + 7 |
| `rⅣ7` | 3 + 5 + 7 (rootless) |
| `Ⅳ9` | root + 3 + 5 + 7 + 9 |
| `rⅣ9` | 3 + 5 + 7 + 9 (rootless) |

### S Chord Disposition
S chord disposition rules are the same as for D chords.

### S Chord Connection
S → T (plagal cadence): `Ⅳ` → `Ⅰ`; the upper 3 voices of both chords are in consistent disposition.

## Plagal Cadence

### Basic Form
S → T: `Ⅳ` → `Ⅰ`

### Two-Outer-Voice Formula
Sop: `Ⅳ` → `Ⅰ` (same degree or descending)
Bas: `Ⅳ` → `Ⅰ` (descending 4th)

### Upper-3-Voice Disposition
Both chords in consistent disposition (close → close or open → open).

### Supplementary Use of Plagal Cadence
The plagal cadence is often appended after a perfect cadence (as a supplementary cadence).

## S Formula

### `Ⅳ` → `Ⅰ` (S → T)
Basic S formula. Upper 3 voices in consistent disposition.

### `♭Ⅱ` — lowered-II chord
Secondary S: `♭Ⅱ` and other altered chords.

### S Progression
S circle (counterclockwise): `Ⅰ` → `Ⅳ` → `Ⅶ` → `Ⅲ` → `Ⅵ` → `Ⅱ` → `Ⅴ` → `Ⅰ`

## S Chord Succession
S chords may be used in succession to form S progressions.

### Common S Successions
- `Ⅳ` → `Ⅳ7` → `Ⅰ`
- `Ⅳ` → `♭Ⅱ` → `Ⅰ`

## S Chord Alterations

### Upper Alteration of `Ⅳ`
`♯Ⅳ` series chords.

### Lower Alteration of `Ⅳ`
`♭Ⅳ` series chords (sub `Ⅳ` series).

## S Chords in Cadences

### Plagal Cadence (Final Supplement)
Perfect cadence → `Ⅳ` → `Ⅰ`

### Independent Plagal Cadence
Less common; used primarily in specific styles (e.g., Gregorian/Phrygian cadence).

### Phrygian Cadence
A type of half cadence: `Ⅳ` → `Ⅴ` (S → D). Bas descends by half step, Sop ascends by whole step.

### Plagal + Perfect Cadence
A plagal cadence followed by a perfect cadence forming a compound cadence: `Ⅳ` → `Ⅰ` → `Ⅴ7` → `Ⅰ`

---

# Displacement and Ornamentation

## Displacement (Yure)

Constituent tones deviate from their rest positions while retaining their identity.

### Resolution (Reduction)
Returning displaced tones to their rest-position tones.

### Displacement Forms

#### Passing Tones (経和音, カ)
Displaced tones that connect two rest-position tones at different pitches via scale-step motion.

#### Neighbor Tones (隣和音)
Displaced tones surrounding a single rest-position tone with adjacent degrees.

**1. Neighbor Figure / Auxiliary Tone (刺繍音, シ)**
A neighbor tone sandwiched between two rest-position tones.
- Upper neighbor / Lower neighbor

**2. Appoggiatura (侍音, イ)**
The initial rest-position tone is omitted; the figure begins directly from the displaced tone.
- Upper appoggiatura / Lower appoggiatura (commonly with upper alteration)

**3. Suspension (掛留音, ケ)**
An appoggiatura that is prepared and sustained from the preceding chord.
- Upper suspension / Lower suspension (lower suspensions are less common)

**4. Escape Tone (逸音, ツ)**
The inverse of an appoggiatura; the following rest-position tone is omitted.
- Upper escape tone / Lower escape tone

**5. Anticipation (先取音, セ)**
An escape tone that is re-struck in the following chord.
- Upper anticipation / Lower anticipation

### Resolution of Displaced Tones
Neighbor tones resolve to their rest-position tones; passing tones arrive at their rest-position tones.
Resolution = the dissolution of tension caused by displacement.

### Successive Displacement
Two or more displaced tones used in succession.

Common: successive neighbor figures, successive appoggiaturas.

### Chromatic Passing Tones (半カ)
Chromatic step connection between two rest-position tones separated by a major 2nd. Indicated with alteration symbols (↑↓).

### Secondary Displacement
Displacement of a displaced tone.
- Upper displacement of an upper displacement = T²
- Lower displacement of an upper displacement = T↓²
- Lower displacement of a lower displacement = ↓²
- Upper displacement of a lower displacement = ↓T²

## Ornament

The originating tone leaps to a different constituent tone (a non-displacement adjacent-degree motion).

### Displacement vs. Ornament
- Displacement: originating tone → adjacent degree (stepwise), type unchanged, only position changes
- Ornament: originating tone → other constituent tone (leap), the pitch itself changes

### Ornamental Resolution
An ornamental tone may be reduced to the originating tone.

## Ornamentation Rules

### Disposition Rules
1. A simultaneous 2nd between an appoggiatura/suspension/neighbor tone and its originating tone (same pitch class) in two voices is not permitted (Rule F1)
2. An appoggiatura/suspension must not have its originating tone simultaneously in a voice above (Rule F2)
3. An appoggiatura/suspension with its originating tone simultaneously in a voice below is not an error, but should be avoided outside the Bas
4. Missing constituent tones or voice separation outside the ornamental tone's beat position is acceptable
5. Prohibitions on obligatory-tone doubling and 9th–root relationships still apply during ornamental tones (Rule F3)

### Motion Rules
- When ornamental tones are present, Rule B1 restrictions do not directly apply
- 7ths, 9ths, and various augmented intervals are all permitted

### Simultaneous Motion Rules
1. Consecutive 5ths/8ves containing displaced tones are generally forbidden, but post-appoggiatura 5ths are acceptable (Rule G1)
2. Contrary consecutive 5ths/8ves and direct 5ths/8ves containing ornamental tones are permitted (Rule G1 appendix)
3. Parallel consecutive 5ths/8ves in the underlying harmony remain forbidden even after ornamentation. However, oblique-arrival 5ths in the aftermath are acceptable (Rule G2)
4. Consecutive 5ths/8ves and direct 5ths/8ves in the underlying harmony that are subsequently indirected by appoggiaturas become entirely acceptable (Rule G2 appendix 1)
5. Contrary consecutive 5ths/8ves in the underlying harmony that are subsequently indirected after ornamentation become acceptable (Rule G2 appendix 2)
6. Direct 5ths/8ves in the underlying harmony that are subsequently indirected after ornamentation become acceptable (Rule G2 appendix 3)

## Disposition Changes

The chord degree remains the same; only the disposition changes (form/bass-position change).

### D-Chord Form Changes
- Ascension: 3 → 7 → 9 unconditionally possible
- Descension: 9 → 3 forbidden, 9 → 7 permitted, 7 → 3 forbidden

### Consecutive 5ths During Disposition Changes
When the preceding 5th is diminished, the following perfect 5th is permitted.

### Indirect Consecutive 5ths/8ves
Indirect consecutive 5ths/8ves produced by disposition changes:
Forbidden only when consecutive perfect 8ves/5ths occur within 2 chords and the second perfect 8ve/5th occurs at the chord alternation point (Rule E2).

## Free Soprano Exercises

### Characteristics
1. Sop contains displacements/ornaments
2. Lower 3 voices use ornaments sparingly
3. All displacement types are available (passing tones, neighbor figures, appoggiaturas are frequently used)
4. No special restrictions on chords or keys
5. Based on Classical and later styles

### Differences from Strict Bass Exercises
- Free Sop exercises: Sop is the protagonist, ornamentation is free, chords unrestricted
- Strict Bass exercises: Bas is the protagonist, contrapuntal style, rules are stricter

---

# Sequential Progressions

## Definition of Sequential Progression

A fixed harmonic pattern repeated at regular intervals, ascending or descending.

- **Sequence unit** (反復句): the harmonic pattern that is repeated
- **Interval of transposition**: the interval by which the unit moves
- **Direction**: upward / downward

## Types of Sequential Progression

### By Content of the Sequence Unit
- **D-type**: sequence unit = D progression
- **S-type**: sequence unit = S progression
- **Compound-type**: sequence unit = compound harmony

### By Interval of Transposition
- Ascending 2nd / Descending 2nd
- Ascending 3rd / Descending 3rd
- etc.

### Combined Notation
D2°↑ = D-type, ascending 2nd; S3°↓ = S-type, descending 3rd; C3°↑ = Compound-type, ascending 3rd

### Common Sequence Types (★ = especially frequent)

**D-type**:
- ★ D ascending-2nd type: `Ⅰ` `Ⅳ` `Ⅱ` `Ⅴ` `Ⅲ`... (diatonic or modulating)
- ★ D descending-2nd type: `Ⅴ` `Ⅰ` `Ⅵ` `Ⅳ`... (diatonic or modulating)
- D ascending-3rd type: `Ⅰ` `Ⅲ` `Ⅱ` `Ⅳ`...
- D descending-3rd type: `Ⅴ` `Ⅲ` `Ⅰ` `Ⅵ`...

**S-type**:
- S descending-2nd type: `Ⅰ` `Ⅵ` `Ⅳ` `Ⅱ`...
- ★ S descending-3rd type: `Ⅰ` `Ⅵ` `Ⅳ`...

**Compound-type**:
- ★ Compound ascending-2nd type: cadence-formula style
- ★ Compound descending-2nd type: reverse of above
- Compound ascending-3rd type: containing `Ⅱ7`
- Compound descending-3rd type: reverse of above

## Methods of Transposition

### Diatonic Sequence (移度反復)
Moves within a single key, using diatonic tones.
- May encounter augmented 4ths / cross relations en route; these are permitted.

### Modulating Sequence (移調反復)
Modulates with each repetition, fully preserving the original D-progression shape.

## Implementing Sequences

### Disposition of Each Chord
Within a sequence unit, the disposition of each chord: consistent or approximate.

### Completion Methods
A sequential progression must ultimately close on the tonic:
`Ⅴ7` → `Ⅰ(7)` or `Ⅰ` final close.

### `Ⅴ7` Succession Disposition
⟨fund⟩ 7th chords in succession: complete/incomplete forms alternate.
The disposition of the first 7th chord determines the subsequent alternation.

### Minor-Key Sequential Progressions

#### Two Types of `Ⅶ`
- **Diatonic `Ⅶ`**: the minor mode's diatonic (minor 7th)
- **Raised `Ⅶ` (`♯Ⅶ`)**: the leading tone

#### Usage Distinction
1. Dominant formula / cadence formula at `Ⅴ`: use `♯Ⅶ` (leading tone)
2. Other diatonic chords (`Ⅱ7`, `Ⅲ7`, etc.): use diatonic `Ⅶ`
3. Preparation tone of the 7th of `Ⅱ7` (`Ⅶ`): use diatonic `Ⅶ`

## Sub `Ⅴ7` Sequences

Each sequence unit is formed by: sub `Ⅴ7` → diatonic triad (Dominant formula in each degree's key) or sub `Ⅴ7` → sub `Ⅴ7` (sub `Ⅴ7` succession).

Sub `Ⅴ7` succession follows the same rules as diatonic `Ⅴ7` succession.

## Imitative Sequences

Voice-leading imitation is formed within a sequential progression.

### Imitation via `Ⅴ7` 7th Ornamentation
When the 7th of each `Ⅴ7` is ornamented, the resulting melodic pattern produces imitation between the upper 2 voices.

### Notes on 7th Ornamentation
- `Ⅴ7` → `Ⅰ` (triad `Ⅰ`): leading-tone doubling forbidden
- `Ⅴ7` → `Ⅰ7`: leading-tone doubling permitted
- In sub `Ⅴ7` ornamentation, the leading tone (3rd) must not be used

### Diversity of Ornamental Types
Diatonic `Ⅴ7` can use many ornamental types; sub `Ⅴ7` has fewer options since the leading tone cannot be used.

## Supplementary Rules for Suspensions

### Suspension Disposition
The same rules as appoggiaturas apply.

### Exceptional Leading-Tone Motion
When the tonic (1) arrived at in `Ⅴ7` → `Ⅰ` conflicts with a suspension (T) in another voice:
- The leading tone may move exceptionally to 5 or 3 (permitted)
- Descending leading-tone motion in Sop should be avoided
- Leading-tone ornamentation can cover irregular motion

### Simultaneous Suspensions
Simultaneous suspension of the leading tone and 5th can avoid conflicts, but simultaneous suspensions between outer voices should be avoided.

### Leading-Tone Exception in `Ⅴ` → `Ⅵ`
Permitted only in close-position Alt (`Ⅶ` → `Ⅵ` motion).

---

# Incidental Chords and Sustained Bass

## Incidental Chords

Chord collections formed incidentally through swing (displacement). They are not independent chords; they must be understood by reduction to the originating chord.

### Identifying Incidental Chords
1. Reduce displaced tones to their rest-position tones
2. Determine the originating chord
3. Incidental chord = the temporary tone collection formed during displacement

### Incidental Formations of `Ⅴ7`
Neighbor tones and appoggiaturas in various bass positions of `Ⅴ7` produce incidental chords:
- Nearly all are diminished-7th forms

### Various `Ⅴ7` Incidental Chords
- Neighbor tones / appoggiaturas on `Ⅴ7` (various bass positions)
- Various displacement combinations above/below `Ⅴ7`

## Sustained Bass (Pedal Point)

### Definition
The `Ⅰ` or `Ⅴ` tone is held long in the bass while the upper voices form freely swinging harmonic progressions.

### Sustained Bass on `Ⅰ`
The `Ⅰ` tone is sustained; upper harmonies are formed above it.

### Sustained Bass on `Ⅴ`
The `Ⅴ` tone is sustained; upper harmonies are formed above it.

### Notation
Upper chord symbols are enclosed in parentheses ( ), with the sustained bass degree noted separately.

Example: `Ⅰ(Ⅴ7)` = `Ⅴ7` on sustained `Ⅰ`

Upper chords generally do not carry inversion indices (the actual bass is the sustained tone).

### Plans for Upper Harmony

#### Plan 1: Neighbor Chords and Their Ornamentation
The simplest plan: using neighbor chords (`Ⅰ` sustained above = `Ⅳ2`; `Ⅴ` sustained above = `Ⅰ2`) as a skeleton, expanded with passing tones and other ornamentation.

#### Plan 2: Cadential Units and Their Chains
Using cadential units T D₂ D T or their chains to form a somewhat developed shape.

#### Plan 3: Sequential Progressions
Sequential progressions are frequently used over sustained bass.

## Compound Chords

When the sustained bass is brief, parentheses are removed; the sustained bass degree is noted below, the upper chord above.

### Notation
`Ⅰ(Ⅴ7)` = `Ⅴ7` on `Ⅰ` = `Ⅴ7` over degree `Ⅰ`

### Common Compound Chords
- `Ⅴ7` on `Ⅰ` (`Ⅴ7` over `Ⅰ`): most common
- `Ⅱ` on `Ⅰ` (`Ⅱ` over `Ⅰ`)
- `Ⅱ` on `Ⅴ` (`Ⅱ` over `Ⅴ`)
- `Ⅴ7` on `Ⅴ` (`Ⅴ7` over `Ⅴ`)

### Sub `Ⅴ7` on Various Degrees
The `Ⅴ7`-on-`Ⅰ` form can be applied to the resolution chords of sub `Ⅴ7`:
- `Ⅴ7` on `Ⅱ` = `Ⅴ7` over `Ⅱ`
- `Ⅴ7` on `Ⅲ` = `Ⅴ7` over `Ⅲ`
- etc.

### Fully Compound Chords
`Ⅴ7` on `Ⅰ` (`ⅠⅤ7`), etc.: the sustained bass and upper chord are fully compounded.

## Simultaneous Sustained Bass

`Ⅰ` and `Ⅴ` are sustained simultaneously in the lower 2 voices. For multi-voice (5+ voices) contexts.

Simultaneous sustained bass = the stationary part formed by the root and 5th of `Ⅰ`.

In notation, degree numbers are doubled (e.g., `Ⅰ[Ⅴ]`).

### Sustained `Ⅰ`
`Ⅰ[Ⅴ]` where all constituent tones (1, 3, 5) are simultaneously sustained = sustained triad.

## Sustained Bass on Degrees Other Than `Ⅰ`/`Ⅴ`

In incidental formations, the stationary bass may be on degrees other than `Ⅰ`/`Ⅴ`.

- Sustained bass on `Ⅲ` = expansion/extension of `Ⅱ`(T)
- Sustained bass on `Ⅳ` = expansion/extension of `Ⅱ7`(D₂)

### Grasping as Compound Chords
When sustained bass on degrees other than `Ⅰ`/`Ⅴ` is brief, remove parentheses for compound chords:
- `Ⅱ(Ⅰ)` = `Ⅰ` over `Ⅱ`
- `Ⅴ(ⅠⅤ7)` = `Ⅳ7` over `Ⅴ`

## Usage of Incidental Chords

### Neighbor Chords
Incidental neighbor-figure chords in sustained bass / sequential progressions.

### Appoggiatura Chords
Incidental chord collections formed by appoggiaturas.

### Passing Chords
Incidental chord collections formed by passing tones.

### Compound Incidental Formations
Complex incidental formations from combinations of multiple displacement types.

## Incidental Chord Analysis Procedure
1. Identify whether the bass is sustained / in rest position
2. Reduce upper-voice displaced tones to rest positions
3. Determine the originating chord
4. Incidental chord = the temporary tone collection during displacement

---

# Compiled SATB Learning Rules

## A. Disposition Rules

### A1: Omissible Tones
The 5th may be omitted. Root omission is a special form (rootless dominant chord).

### A2: Doublable Tones
The 5th may be doubled. The root and 3rd are generally not doubled (root doubling in triads is a special disposition).
In rootless dominant disposition, doubling of the 5th is often possible.

### A2 Appendix: ⟨2nd⟩ Rootless Dominant Disposition
In ⟨2nd⟩ rootless dominant disposition, doubling of the 7th is also common (except doubling in the upper 2 voices).

### A3: 9th Placement
The 9th (major/minor) must be at least a 9th above the root.

### A4: Major 9th Placement
The major 9th must be above the 3rd (leading tone). When prepared, it may be below the 3rd.

### A4 Appendix: Prepared Major 9th
When prepared, the major 9th may be below the 3rd.

### A5: 9th-Chord Bass Positions
⟨4th⟩ (4th inversion) is not used (the 9th-in-bass condition is difficult to satisfy).

## B. Motion Rules

### B1: Voice Motion
7ths, 9ths, and augmented intervals are generally forbidden (exceptions for disposition changes / ornamental tones).

### B1 Appendix: Modulation Connections
Augmented 2nds may be permitted in modulation connections.

### B2: Obligatory Motion Tones
- Leading tone (7th degree): ascends by step (mandatory)
- Chordal 7th: descends by step (mandatory)

### B2 Appendix: Exceptions
- `rⅤ7` → `Ⅰ2`: the 7th may ascend by step (to avoid doubling the 3rd of `Ⅰ2`)
- The leading tone may move exceptionally to 5 or 3 (to avoid suspension conflicts)
- `Ⅴ` → `Ⅵ`: the leading tone in close-position Alt may descend to `Ⅵ`

### B3: Hidden 5ths/8ves
Outer voices moving in similar motion to a perfect 5th/8ve (when Sop leaps).

### B3 Appendix: Sequential Progressions
Augmented 4ths / cross relations are permitted during sequential progressions.

## C. Simultaneous Motion Rules

### C1: Parallel 8ves/5ths
Two voices moving in similar motion to a perfect 8ve/5th: forbidden.

### C2: Diminished 5th → Perfect 5th
When the preceding 5th is diminished, the following perfect 5th is permitted (exception: between the upper 2 voices).

### C2 Appendix 1: Root-Leap Consecutive 5ths
Consecutive 5ths formed by a root leap in the preceding bass are permitted.

### C2 Appendix 2: Inner-Voice Consecutive 5ths
Consecutive 5ths between inner voices are more relaxed and generally permitted.

### C3: Direct 8ves/5ths
Two voices arriving at the same pitch (unison) from different pitches in similar motion: forbidden.

### C3 Appendix: Disposition-Change Direct Intervals
Direct 5ths/8ves caused by disposition changes: all acceptable between the two outer voices.

### C4: Contrary 5ths/8ves
Contrary motion into perfect 5ths/8ves: permitted.

### C5: Voice Crossing
Voice crossing forbidden (Sop < Alt, Alt < Ten, Ten < Bas).

## D. Bass Rules

### D1: Bass Motion
Bas should generally move within a 4th.

### D2: Bass Leaps
Unprepared 4th leaps in 9th-chord basses should be avoided.

## E. Disposition Change Rules

### E1: Forbidden in Disposition Changes
During disposition changes:
- 7th → root by ascending 2nd: forbidden
- 9th → 3rd by ascending 2nd: forbidden

### E2: Indirect Consecutive 5ths/8ves
Indirect consecutive perfect 5ths/8ves produced by disposition changes:
Forbidden only when consecutive perfect 8ves/5ths occur within 2 chords and the second perfect 8ve/5th occurs at the chord alternation point.

## F. Ornamentation Rules

### F1: Appoggiatura / Neighbor-Figure Disposition
A simultaneous 2nd between an appoggiatura/suspension/neighbor figure and its originating tone in two voices is not permitted.

### F2: Appoggiatura Upper Voice
An appoggiatura/suspension must not have its originating tone simultaneously in a voice above.

### F3: Ornamental Obligatory Tones
Prohibitions on obligatory-tone doubling and 9th–root relationships still apply during ornamental tones.

## G. Simultaneous Motion Rules with Ornamentation

### G1: Displaced-Tone Consecutive 5ths
Consecutive 5ths/8ves containing displaced tones are generally forbidden, but post-appoggiatura 5ths in the aftermath are acceptable.

### G1 Appendix: Ornamental-Tone Consecutive Intervals
Contrary consecutive 5ths/8ves and direct 5ths/8ves containing ornamental tones are permitted.

### G2: Underlying-Harmony Consecutive Intervals
Parallel consecutive 5ths/8ves in the underlying harmony remain forbidden even if not obliterated by ornamentation. Oblique-arrival 5ths in the aftermath are acceptable.

### G2 Appendix 1: Appoggiatura Indirectization
Consecutive 5ths/8ves and direct 5ths/8ves in the underlying harmony that are subsequently indirected by appoggiaturas become entirely acceptable.

### G2 Appendix 2: Contrary Indirectization
Contrary consecutive 5ths/8ves in the underlying harmony that are subsequently indirected after ornamentation become acceptable.

### G2 Appendix 3: Direct Indirectization
Direct 5ths/8ves in the underlying harmony that are subsequently indirected after ornamentation become acceptable.

---

# SATB Part-Writing Examples

The following examples demonstrate the full workflow from cadential-unit selection to concrete 4-voice realization, and may serve as concrete reference when an LLM executes the "SATB Writing Procedure."

## Example 1: C Major Cadential Phrase

### Exercise Setting
- Key: C major
- Length: 4 bars (one complete cadential unit)
- Requirement: end with a perfect cadence (closed cadence)

---

### Steps 1 & 2: Key Determination + Cadential Unit Selection
Choose the most standard K2 cadential unit:
**T → D₂ → D → T** = `Ⅰ` → `Ⅱ` → `Ⅴ` → `Ⅰ`

### Step 3: Cadence Formula Determination
- Sop formula: (1) — `Ⅱ` `Ⅴ7` `Ⅰ` (basic form)
- Bas formula: (a) — `Ⅱ` → `Ⅴ` → `Ⅰ` (ascending 4th → descending 4th)
- D₂ term: `Ⅱ` ⟨fund⟩

### Steps 4 & 5: Bas Line + Sop Melody

```
Sop: c'' - a'  - b'  - c''
Alt: g'  - f#' - g'  - e'
Ten: e'  - d'  - d'  - c'
Bas: C   - F   - G   - C
```

### Chord Notation

| Beat | Chord | Bass Position | Notes |
|------|-------|---------------|-------|
| 1 | `Ⅰ` ⟨fund⟩ | root position | T, starting point; outer voices 8ve apart (close position) |
| 2 | `Ⅱ7` ⟨fund⟩ | root position | D₂; Alt leading tone f#' (raised 4th) |
| 3 | `Ⅴ7` ⟨fund⟩ | root position | D; Ten chordal 7th d' → c' (descending step) |
| 4 | `Ⅰ` ⟨fund⟩ | root position | T, endpoint (perfect cadence), closed cadence |

---

### Rules Check Reduction

| Rule | Check Content | Result |
|------|---------------|--------|
| B2 | Leading tone f#' (Alt, beat 3) → g' (Alt, beat 4): ascending step | ✓ |
| B2 | Chordal 7th d' (Ten, beat 3) → c' (Ten, beat 4): descending step | ✓ |
| C1 | Parallel 8ves/5ths check | ✓ None |
| C3 | Direct 8ves/5ths check | ✓ None |
| C5 | Voice crossing (Sop > Alt > Ten > Bas) | ✓ None |
| A1 | 5th omission | ✓ Not omitted |
| Common-tone retention | Beat 2→3: Alt f#'→g' (ascending step), Ten d'→d' (retained) | ✓ |

---

## Example 2: Same Phrase in Dominant-Formula Table Form

Using the plain-text notation from `notation-syntax.md`:
- Progression: `Ⅰ` → `Ⅱ7` → `Ⅴ7` → `Ⅰ` (K2 perfect cadence)
- Sop formula: (1) `Ⅱ` `Ⅴ7` `Ⅰ`
- Bas formula: (a) `Ⅱ` → `Ⅴ` → `Ⅰ` (asc 4 → desc 4)

Four voices (C major):
```
Sop: Ⅰ(1-pos) → Ⅱ7(3-pos) → Ⅴ7(5-pos) → Ⅰ(1-pos)
Alt: Ⅰ(5)     → Ⅱ7(1)     → Ⅴ7(3)     → Ⅰ(3)
Ten: Ⅰ(3)     → Ⅱ7(7)     → Ⅴ7(1)     → Ⅰ(5)
Bas: Ⅰ(1)     → Ⅱ7(1)     → Ⅴ7(1)     → Ⅰ(1)
```

> Note: "(1-pos)(3-pos)(5-pos)(7-pos)" above indicates which constituent tone
> the Sop takes in each chord; "(1)(3)(5)(7)" indicates the corresponding
> constituent tone the Bas takes. For example, `Ⅱ7(3-pos)` means: in the `Ⅱ7`
> chord, Sop sings the 3rd (f#'), Bas sings the root (F).

---

## Example 3: Sustained Bass in C Major

### Exercise
`Ⅰ` sustained in Bas for 4 beats; upper voices swing freely.

### Upper Plan (Neighbor-Chord Skeleton)
On sustained `Ⅰ` = `Ⅰ(Ⅳ2)` → `Ⅰ` → `Ⅰ(Ⅱ)` → `Ⅰ`

```
Sop: e'' - c'' - d'' - c''
Alt: g'  - e'  - f#' - e'
Ten: c'  - c'  - c'  - c'
Bas: C   - C   - C   - C
```

### Chord Notation (Compound Chord Notation)
| Beat | Compound Chord | Description |
|------|----------------|-------------|
| 1 | `Ⅰ` | T, rest position |
| 2 | `Ⅳ2@Ⅰ` (or `Ⅰ(Ⅳ2)`) | Neighbor chord (= IV 2nd inversion), over sustained Ⅰ |
| 3 | `Ⅱ@Ⅰ` (or `Ⅰ(Ⅱ)`) | Supertonic chord, over sustained Ⅰ |
| 4 | `Ⅰ` | T, resolution to rest position |

---

## Example 4: Minor (A Minor) K2 Perfect Cadence

### Chord Progression
`Ⅰ` → `Ⅱ` → `Ⅴ7` → `Ⅰ` (A minor: i → ii° → V7 → i)

```
Sop: a'' - f'' - g#' - a''
Alt: e'  - d'' - d'' - c''
Ten: c'  - a'  - b'  - a'
Bas: A   - F   - E   - A
```

> Note: In minor, `Ⅱ` is a diminished triad; root position is usable.
> The leading tone g#' of `Ⅴ7` must ascend by step to a''.

---

## Example 5: Cadence Formula Variant with `Ⅰ2 rⅤ7`

Using cadence formula variant (2'): `Ⅱ` → `Ⅰ2 rⅤ7` → `Ⅰ`

### Chord Progression
`Ⅰ` → `Ⅱ` → `Ⅰ2 rⅤ7` → `Ⅰ` (C major)

```
Sop: c'' - a'  - b'  - c''
Alt: g'  - f#' - d'  - e'
Ten: e'  - d'  - g   - c'
Bas: C   - F   - E   - C
```

> `Ⅰ2 rⅤ7` = rootless dominant 7th chord on the 2nd inversion of `Ⅰ`.
> In this context, the function of `Ⅰ2` is not T but rather D,
> integrated with `Ⅴ7`.
> Ten: g → c' (descending 5th, the other doubled-5th's motion) is within the permitted range.

---

# Melody Harmonization Workflow (When a Melody Is Given)

Gap this file addresses: [SKILL.md](../SKILL.md)'s "SATB Writing Procedure" Steps 1–3 assume the writer is **free to choose** the key structure, cadential units, and cadence formulas. But when the task is to **harmonize an existing melody** (e.g., a soprano line extracted from MusicXML) according to the Shimaoka system, Steps 1–3 must run in reverse: infer phrase boundaries, cadence types, and formula assignments *from* the melody itself.

This file introduces no new theory — it reorganizes the existing modules (cadential units in [cadence.md](cadence.md), Dominant/Cadence formulas in [d-formation.md](d-formation.md), sequences in [sequence.md](sequence.md)) into a **melody-first decision procedure**. Three sub-steps, executed in order:

1. Phrase Boundary Detection & Cadence Slot Assignment
2. Melody Alignment to Sop Formulas
3. Cadential Chain Assembly

## 1. Phrase Boundary Detection & Cadence Slot Assignment

### Boundary Signals

Mark the following positions as phrase-boundary candidates:
- **Long notes**: duration noticeably longer than surrounding notes (e.g., ≥2× the average)
- **Rests**: gaps in the voice
- **Repeat / volta markings**: notated sectional divisions
- **Fermatas**: explicit section endings
- **Melodic contour turns**: stepwise motion followed by a large leap, or a sudden register shift

### Cadence-Type Determination Table

At each boundary candidate, observe the melody's **landing tone** and its **preceding tone**, and cross-reference the cadence-type table in [cadence.md](cadence.md):

| Landing Degree | Typical Preceding Degree | Inferred Cadence Type | Rationale |
|---|---|---|---|
| `Ⅰ` | `Ⅶ` (leading tone) or `Ⅱ` | Perfect cadence | Landing = T, preceding = leading tone of D7 or D2, matches `Ⅴ7`→`Ⅰ` |
| `Ⅰ` | `Ⅳ` | Plagal cadence | Landing = T, preceding = S, matches `Ⅳ`→`Ⅰ` |
| `Ⅴ` | any (often `Ⅵ`/`Ⅳ`) | Half cadence | Lands on an unstable tone (D); phrase not closed |
| `Ⅵ` | `Ⅶ` (leading tone) | Deceptive cadence | Same melodic shape as perfect cadence, but harmonized with `Ⅵ` as proxy |
| Other than `Ⅰ`/`Ⅴ`/`Ⅵ` | — | Incomplete/no cadence | Not a true phrase boundary here; merge into the next phrase, or consider modulation ([modulation.md](modulation.md)) |

### Phrase Length → Cadential Unit Chain Length

| Phrase Length (approx.) | Suggested Cadential Unit Organization |
|---|---|
| 2 bars | Single K1 (`Ⅰ`→`Ⅴ`→`Ⅰ`) or a half cadence (open, no full return needed) |
| 4 bars | Single K2 (`Ⅰ`→`Ⅱ`→`Ⅴ`→`Ⅰ`) or K3 |
| 8 bars | Two combined units (e.g., K3+K2), or an extended cadential chain |
| Repeating short motifs | Prefer the sequence model in [sequence.md](sequence.md) over assigning separate cadential units per phrase |

## 2. Melody Alignment to Sop Formulas

Once each cadence slot's type is determined, take the melody's **last 2–3 notes** at that point and match them against the Sop formulas enumerated in [d-formation.md](d-formation.md) to identify the specific formula number.

### Cadence Formula (D₂→D→T) Sop Alignment

| 2nd-to-last Melody Degree | Cadential Melodic Shape | Matching Sop Formula |
|---|---|---|
| `Ⅳ` (passing to `Ⅲ`) | `Ⅳ`→`Ⅲ` (3rd of `Ⅰ`) | (4) `Ⅳ` `Ⅴ7` `Ⅰ` |
| `Ⅶ` (leading tone, step up to `Ⅰ`) | stepwise ascent | (1)/(3) `Ⅱ`/`Ⅱ7` `Ⅴ7` `Ⅰ` |
| `Ⅴ` (leap to `Ⅰ`) | 4th/5th motion | (2) `Ⅱ7` `Ⅴ` `Ⅰ` |
| No 7th-chord trace (melody hovers near the 3rd) | — | (5) `Ⅱ` `Ⅴ` `Ⅰ` (`Ⅴ` without 7th) |

### Dominant Formula (`Ⅴ7`→`Ⅰ`) Sop Alignment (for general D→T resolutions outside cadence formulas)

| Melody's Motion After Landing | Matching Sop Formula |
|---|---|
| Lands on `Ⅰ`, stays on `Ⅰ` | (1)/(6) `→Ⅰ→Ⅰ` |
| Lands on `Ⅰ`, moves to the 3rd | (2)/(7) `→Ⅰ→3` |
| Reaches the 3rd first, then `Ⅰ` | (3)/(8) `→3→Ⅰ` |
| Stays around the 3rd throughout | (4) `→3→3` |
| Passes through the 5th to `Ⅰ` | (5) `→5→Ⅰ` |

### Reducing Ornaments

If a melody note doesn't match any standard formula, first determine — per [ornamentation.md](ornamentation.md) — whether it's a passing tone, neighbor figure, appoggiatura, or suspension. These are ornamented forms of a skeletal tone; **reduce them to their rest-position tone first**, then re-match against the tables above. Ornamental tones should never be mistaken for independent chord tones.

## 3. Cadential Chain Assembly

After Step 1 divides the piece into phrases and each phrase's cadential unit type is determined, they must be joined end-to-end into a coherent whole:

### Assembly Rules

1. **After a closed cadence** (perfect/plagal): `Ⅰ` is both the endpoint and the starting point (T) of the next cadential unit. The next phrase may freely choose K1/K2/K3.
2. **After an open cadence** (half/deceptive): the phrase stops on an unstable chord (`Ⅴ` or `Ⅵ`). The next phrase's first chord must continue the "path back to T" from that functional position — see [cadence.md](cadence.md)'s "The Chord Pathway" table:
   - Stopped on `Ⅴ` (D₁): the next chord may go straight to `Ⅰ`, or pass through other D positions first
   - Stopped on `Ⅵ` (D₃): the next chord must pass through D₂→D₁→T to return to stability
3. **End of piece**: the final phrase must be a closed cadence (perfect, optionally reinforced with a plagal cadence).
4. **Sequential passages**: if several consecutive phrases show a melody with a fixed interval-transposition pattern, switch to the diatonic/modulating sequence model in [sequence.md](sequence.md) instead of assigning cadential units phrase-by-phrase.

### Assembly Example

Given a melody with 3 phrase boundaries determined (in order) as: half cadence → deceptive cadence → perfect cadence. The resulting cadential-unit chain:

```
Phrase 1: Ⅰ → Ⅳ → Ⅴ            (first half of K3, opens on D, half cadence)
Phrase 2: Ⅴ → Ⅱ → Ⅴ7 → Ⅵ      (from D1 via D2 back to D1, then deceptive cadence)
Phrase 3: Ⅵ → Ⅱ → Ⅴ7 → Ⅰ      (D3 via D2→D1→T, cadence formula closes the piece)
```

This chain is assembled entirely from existing cadential-unit/cadence-formula modules — no new chord type was introduced.

## 4. Appendix: Pitch-to-Degree Bridging (Out of Scope for File-Format Parsing)

If the melody originates from MusicXML or another score format, this file does not concern itself with the actual file-format reading/writing — that should be handled by a general-purpose score-format-processing skill. The only thing this repository needs to specify is: **once the key is determined, how absolute pitches map onto this repository's degree symbols.**

1. First determine the key (major/minor, tonic pitch) — see "Key and Degrees" in [chord-system.md](chord-system.md).
2. For each melody pitch, compute the interval from the tonic and map it to `Ⅰ`–`Ⅶ`; chromatic alterations use the `♯`/`♭` prefixes defined in [chord-system.md](chord-system.md)'s "Degree Alteration".
3. All subsequent phrase-boundary detection, cadence determination, and formula alignment operate on these degree symbols — absolute pitch is no longer needed after this point.

## 5. Handoff to SKILL.md's Writing Procedure

After completing Steps 1–3 above, feed the results into [SKILL.md](../SKILL.md)'s "SATB Writing Procedure":
- Step 1's key/cadence layout = output of this file's Section 1
- Steps 2–3's cadential units and cadence formula = output of this file's Sections 2–3
- Step 5's Sop melody is already fixed by the given melody — no need to construct it
- Steps 4, 6, 7, 8 (Bas fill, inner-voice fill, rules check, ornamentation) proceed as usual, unaffected by this file

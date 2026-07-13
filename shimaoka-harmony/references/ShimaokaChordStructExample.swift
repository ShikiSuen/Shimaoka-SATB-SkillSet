#!/usr/bin/env swift
import Foundation

/// 区分岛冈让体系中的长调（大调）与短调（小调）性质。
/// 用于判定和音的固有音响结构或强制调式转换。
enum ChordModeQuality: Int, Codable {
  /// 长调性质（长三度，包含 4 个半音）
  case ofDur = 4
  /// 短调性质（短三度，包含 3 个半音）
  case ofMoll = 3
}

/// 抽象的音级记号（I 级至 VII 级），不包含任何变音与调式借用信息。
/// 对应纯文本记号中的「壹、贰、叁、肆、伍、陆、柒」。
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

  /// 提供罗马数字的 Unicode 映射，便于跨体系转换或 UI 渲染。
  var unicodeRepr: UInt16 {
    switch self {
    case .of1: 0x2160
    case .of2: 0x2161
    case .of3: 0x2162
    case .of4: 0x2163
    case .of5: 0x2164
    case .of6: 0x2165
    case .of7: 0x2166
    }
  }
}

/// 带有调式修饰或借用状态的具体调内音级结构。
struct DegreeInMode: CustomStringConvertible, Codable {
  /// 核心音级（I - VII）
  let degree: AbstractDegreeInMode

  /// 音级的变音或借用状态。
  /// 若为 `nil` 则代表纯粹的调内固有音。
  let alteration: PitchModifier?

  /// 指示该音级是否为「准固有和音」的根音（即从同主音短调/长调借用而来）。
  /// 在纯文本记号中对应前缀「准」。
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

/// 和音的转位状态（岛冈让体系规定最多支持到第三转位）。
/// 在纯文本中直接紧跟在长度后（如：伍72 中的 '2'）。
enum ChordInversion: Int, CustomStringConvertible, Codable {
  /// 原位（无转位）
  case inv0 = 0
  /// 第一转位（三音在低音部）
  case inv1 = 1
  /// 第二转位（五音在低音部）
  case inv2 = 2
  /// 第三转位（七音在低音部）
  case inv3 = 3

  var description: String {
    "Inv\(rawValue)"
  }
}

/// 和音的核心结构长度。岛冈让体系最大只定义到九和音。
/// 十一、十三和音在该体系中均使用「附加音（Tone-Addition）」语法来描述。
enum ChordLength: Int, CustomStringConvertible, Codable {
  /// 三和音（包含根、三、五音）
  case len5 = 5
  /// 七和音（包含根、三、五、七音）
  case len7 = 7
  /// 九和音（包含根、三、五、七、九音，实际写作中常省略五音）
  case len9 = 9

  var description: String {
    switch self {
    case .len5: "TriadChord"
    case .len7: "SeventhChord"
    case .len9: "NinthChord"
    }
  }
}

/// 音高修饰符，用于表示升降变音或未指定的调式借用。
enum PitchModifier: Int, Codable {
  /// 升高半音
  case sharpened = 1
  /// 借用调未指定具体升降（隐式转化，如「准」功能）
  case notSpecified = 0
  /// 降低半音
  case flattened = -1
}

/// 附加音结构。用于表示岛冈体系中的添加音（如 肆+6 里的六度音，或各种特殊变音追加）。
struct PitchAddition: Codable {
  /// 附加音相对于和音根音的抽象音程级数
  let degree: AbstractDegreeInMode
  /// 附加音的变音修饰
  let modifier: PitchModifier
}

/// 和音音的省略状态。
enum PitchOmission: Int, Codable {
  /// 省略根音。在岛冈体系中表现为原创符号「右下角圆圈」（例如无根属七、无根属九）。
  /// 在纯文本中对应前缀「省」。
  case rootless = 0
  /// 省略第五音。常出现在三和音原位、七和音以及九和音的四声部写作中。
  case fifthless = 5
}

/// 核心结构：具体的和声功能和音（Tonal Chord）。
/// 封装了岛冈让体系中单个和音形体、转位、附加音及所有功能变化的可能性。
struct TonalChord: Codable {
  /// 音级与调式借用信息
  let degree: DegreeInMode
  /// 和音基本长度（三/七/九和音）
  let length: ChordLength
  /// 转位状态
  let inversion: ChordInversion
  /// 附加音列表（如 +6, +4 或带修饰的附加音）
  let pitchAddition: [PitchAddition]
  /// 省略音状态（省根/省五）
  let pitchOmission: PitchOmission?
  /// 第五音的独立变音状态（如 f5/s5 导致的减五度或增五度进行）
  let fifthAlteration: PitchModifier?
  /// 强制指定的和音性质（如强制大调化 `+` 或 `长`）
  let qualityEnforcement: ChordModeQuality?

  /// 判定该和音是否属于借用自同主音调的准固有和音。
  var isReferredFromShorterParallelMode: Bool { degree.isReferredFromShorterParallelMode }

  /// 计算属性：判断当前和音是否为那不勒斯二度和音（Neapolitan Chord，纯文本记号：「拿贰」）。
  /// 推导依据：在二级音上（II），根音被降低（或大调中从同主音短调借用且具备降音特征）。
  var isNeopolitan: Bool {
    // 1. 必须是二级音
    let isSecondDegree = degree.degree == .of2

    // 2. 根音必须被降低（或者在长调中作为从短调借用的“准”固有和音且低音具有降低特征）
    // 岛冈体系中，“拿贰”的底层就是降低根音的下属功能变和音
    let isFlattened = degree.alteration == .flattened || degree.isReferredFromShorterParallelMode

    // 3. 结构上：如果是长三和音(ofDur)，或者是由省略/变音自然导致的大三和音性质
    // 在岛冈体系中，更保险的做法是检查它是否显式标记了“拿”前缀，或者符合降II级大三的特征

    return isSecondDegree && isFlattened
  }

  /// 计算属性：判断当前和音是否为多利安肆和音（Dorian IV，纯文本记号：「+肆」或「长肆」）。
  /// 推导依据：在短调（小调）语境下，将四级和音（IV）由原本的小三和音强制指定为大三和音性质。
  var isDorianDominant: Bool {
    // 1. 必须是四级音 (IV)
    let isFourthDegree = degree.degree == .of4

    // 2. 必须被强制指定为长和音性质 (ofDur)
    // 在短调中，这将原本的小三和音 (iv) 变成了大三和音 (IV)，即提升了和音三音（音阶的第6音），产生多利安调式色彩
    let isForcedDur = qualityEnforcement == .ofDur

    return isFourthDegree && isForcedDur
  }

  /// 计算属性：判断当前和音是否为皮卡第主和音（Picardy Third，纯文本记号：「+壹」或「长壹」）。
  /// 推导依据：在短调乐曲终止式中，将本应是小三和音的主和音（I）强制替换为大三和音。
  var isPicardiTonic: Bool {
    // 1. 必须是一级音 (I)
    let isFirstDegree = degree.degree == .of1

    // 2. 必须被强制指定为长和音性质 (ofDur)
    // 通常出现在短调乐曲的结尾，将本应是短三和音的主和音 (i) 强制替换为长三和音 (I)
    let isForcedDur = qualityEnforcement == .ofDur

    return isFirstDegree && isForcedDur
  }
}

/// 容器结构：代表一个特定上下文环境下的和音序列。
/// 封装了副次调（离调范围）和保续低音（持续低音域）等作用域（Scope）标记。
struct Content: Codable {
  /// 包含的和音实例序列
  let content: [TonalChord]

  /// 副次调指定（指向的副次调目标音级）。
  /// 如果不为 `nil`，代表当前 Scope 内的所有和音均为该目标音级的副属/副下属和音（离调状态）。
  /// 在纯文本中对应「@」后接的音级。
  var relativeKey: DegreeInMode?

  /// 共享的保续低音（持续低音音级）。
  /// 用于标记某一声部（通常是低音部）保持不变，而上方和音连续变换的情况。
  /// 在纯文本中对应「/」后接的音级。
  var sharedSustainedBassTone: DegreeInMode?

  /// 判定当前环境是否处于副次调（离调）状态。
  var isTonicized: Bool { relativeKey != nil }

  /// 判定当前环境是否激活了保续低音。
  var hasSharedSustainedBass: Bool { sharedSustainedBassTone != nil }

  /// 便利构造函数，支持通过可变参数传入和音序列，并可选择性地附加副次调或保续低音标记。
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

// MARK: - CustomStringConvertible Extensions for Syntax Mapping

extension DegreeInMode {
  /// 输出纯文本记号中的音级表示
  var syntaxRepr: String {
    var result = ""
    if isReferredFromShorterParallelMode {
      result += "准"
    }
    switch degree {
    case .of1: result += "壹"
    case .of2: result += "贰"
    case .of3: result += "叁"
    case .of4: result += "肆"
    case .of5: result += "伍"
    case .of6: result += "陆"
    case .of7: result += "柒"
    }
    return result
  }
}

extension TonalChord: CustomStringConvertible {
  /// 依据 shimoka-harmony/references/notation-syntax.md 规范输出纯文本和音记号
  public var description: String {
    var prefixStr = ""
    
    if isNeopolitan {
      prefixStr += "拿"
    } else {
      if qualityEnforcement == .ofDur {
        prefixStr += "+"
      } else if qualityEnforcement == .ofMoll {
        prefixStr += "短"
      }
      if isReferredFromShorterParallelMode {
        prefixStr += "准"
      }
      if pitchOmission == .rootless {
        prefixStr += "省"
      }
    }
    
    var degreeStr = ""
    let targetDegree = isNeopolitan ? .of2 : degree.degree
    switch targetDegree {
    case .of1: degreeStr = "壹"
    case .of2: degreeStr = "贰"
    case .of3: degreeStr = "叁"
    case .of4: degreeStr = "肆"
    case .of5: degreeStr = "伍"
    case .of6: degreeStr = "陆"
    case .of7: degreeStr = "柒"
    }
    
    var lengthAndInvStr = ""
    if length == .len7 {
      lengthAndInvStr += "7"
      if inversion != .inv0 {
        lengthAndInvStr += "\(inversion.rawValue)"
      }
    } else if length == .len9 {
      lengthAndInvStr += "9"
      if inversion != .inv0 {
        lengthAndInvStr += "\(inversion.rawValue)"
      }
    } else { // len5 (triad)
      if inversion != .inv0 {
        lengthAndInvStr += "\(inversion.rawValue)"
      }
    }
    
    var fifthAlterStr = ""
    if fifthAlteration == .flattened {
      fifthAlterStr = "降5"
    } else if fifthAlteration == .sharpened {
      fifthAlterStr = "升5"
    }
    
    var additionStr = ""
    for add in pitchAddition {
      additionStr += "+"
      if add.modifier == .sharpened {
        additionStr += "升"
      } else if add.modifier == .flattened {
        additionStr += "降"
      }
      additionStr += "\(add.degree.rawValue)"
    }
    
    return prefixStr + degreeStr + lengthAndInvStr + fifthAlterStr + additionStr
  }
}

extension Content: CustomStringConvertible {
  /// 依据 shimoka-harmony/references/notation-syntax.md 规范输出包含副次调及持续低音的语境记号
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

// MARK: - Testing Notation Synthesis

print("\n--- Testing Notation Synthesis ---")

let tests: [(String, Content)] = [
  ("壹：主和音", Content(content: TonalChord(degree: .init(degree: .of1, alteration: nil), length: .len5, inversion: .inv0, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),
  
  ("拿贰1：那不勒斯贰第一转", Content(content: TonalChord(degree: .init(degree: .of2, alteration: .flattened), length: .len5, inversion: .inv1, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),
  
  ("省伍92降5@伍：相对于伍的无根伍9第二转 ♭5", Content(content: TonalChord(degree: .init(degree: .of5, alteration: nil), length: .len9, inversion: .inv2, pitchAddition: [], pitchOmission: .rootless, fifthAlteration: .flattened, qualityEnforcement: nil), relativeKey: .init(degree: .of5, alteration: nil))),
  
  ("+肆7：多利安肆属七", Content(content: TonalChord(degree: .init(degree: .of4, alteration: nil), length: .len7, inversion: .inv0, pitchAddition: [], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: .ofDur))),
  
  ("肆+升6：肆加升六", Content(content: TonalChord(degree: .init(degree: .of4, alteration: nil), length: .len5, inversion: .inv0, pitchAddition: [.init(degree: .of6, modifier: .sharpened)], pitchOmission: nil, fifthAlteration: nil, qualityEnforcement: nil))),
  
  ("准省伍93@伍/伍：在持续伍上相对于伍的准无根属九", Content(content: TonalChord(degree: .init(degree: .of5, alteration: .notSpecified), length: .len9, inversion: .inv3, pitchAddition: [], pitchOmission: .rootless, fifthAlteration: nil, qualityEnforcement: nil), relativeKey: .init(degree: .of5, alteration: nil), sharedSustainedBassTone: .init(degree: .of5, alteration: nil)))
]

for (expected, content) in tests {
  print("Expected: \(expected)")
  print("Parsed   : \(content.description)")
  print("---")
}

print("Compilation Succeeded.")

# Shimaoka-SATB-SkillSet

[Tap here to read the English version](./README_EN.md)

东京艺术大学 **岛冈让体系** 四声体和声学教学 —— 面向 AI Agent 的结构化知识库。

## 这是什么？

本仓库将岛冈让（Shimaoka Yuzuru）的四声体和声学教材整理为结构化、可供 LLM 引用的知识体系。核心理念是**曳动理论（ゆれ理論）**：和音如钟摆，在稳定位置（定位）与偏离位置（转位）之间来回摆动，形成和声运动的本质。

`SKILL.md` 作为入口档，提供完整的术语体系、8 步骤写作流程与概念速查；`references/` 下 14 个子文件按主题细分，Agent 可按需检索。`_SKILL-Amalgamated.md` 则是全量合并档，方便一次性载入。

将此仓库作为上下文提供给任何支持文件引用的 AI Agent，即可让其按岛冈让体系的规则完成四声体写作、和音分析、功能标注等任务。

## 仓库结构

```
Shimaoka-SATB-SkillSet/
├── AGENTS.md                          # 团队工作哲学（给 AI Agent 的元指令）
├── Makefile                           # 构建脚本
├── README.md                          # 中文 README（本文件，内容源本）
├── README_EN.md                       # 英文 README
├── VALUEADD/                          # 各 LLM 对体系的评测与开发笔记
│   ├── zh-Hans/
│   │   ├── Reviews/                   # 中文评测（9 篇）
│   │   │   ├── [Deepseek-v4]Review-on-Shimaoka-Harmonielehre.md
│   │   │   ├── [Sonnet5]Review-on-Shimaoka-Harmonielehre.md
│   │   │   ├── [Qwen]Review-on-Shimaoka-Harmonielehre.md
│   │   │   └── ...（共 9 篇）
│   │   └── DevMemo/                   # 开发过程备忘录（非知识库主体）
│   └── en-US/
│       └── Reviews/                   # 英文评测（同 9 篇，对应翻译）
├── shimaoka-harmony/                  # 知识库主体 — 简体中文
│   ├── SKILL.md                       # 入口：核心哲学、术语、写作步骤、概念速查
│   ├── _SKILL-Amalgamated.md          # 全量合并档（15 个 .md 合一）
│   └── references/                    # 细项参考文件（14 个 .md + 1 个 .swift）
│       ├── ShimaokaChordStructExample.swift  # Swift 数据和音结构示例代码
│       ├── notation-syntax.md         # 纯文本和声记号语法
│       ├── chord-system.md            # 和音体系与功能理论
│       ├── voice-leading.md           # 四声体配置与连接规则
│       ├── cadence.md                 # 曳动单位与终止式
│       ├── d-formation.md             # D 定型与终止定型
│       ├── modulation.md              # 转调/借用/转旋
│       ├── d-chords.md                # 各种 D 和音与 D2 和音
│       ├── s-chord.md                 # S 和音与变终止
│       ├── ornamentation.md           # 转位与装饰
│       ├── sequence.md                # 反复进行
│       ├── nonchord.md                # 偶成和音与保续低音
│       ├── rules.md                   # 学习规则汇总（A~G 条款）
│       ├── examples.md                # SATB 四声体写作示例
│       └── melody-harmonization.md    # 旋律配和声工作流程（给定主旋律时）
└── shimaoka-harmony-en/                # 知识库主体 — 英文（镜像）
    ├── SKILL.md
    ├── _SKILL-Amalgamated.md
    └── references/                    # （同 15 个文件，已翻译）
```

## 如何使用

将 `SKILL.md` 或 `_SKILL-Amalgamated.md` 作为系统提示词（system prompt）或上下文提供给 AI Agent，即可使其掌握岛冈让体系的和声学规则。具体方式取决于你使用的工具：

- **Zed**：将 `shimaoka-harmony/` 目录放入 `~/.agents/skills/`，然后在对话中 `@shimaoka-harmony`
- **Cursor / Claude Code / Copilot**：将 `_SKILL-Amalgamated.md` 作为上下文文件附加，或将整个 `shimaoka-harmony/` 目录纳入工作区
- **ChatGPT / Claude / 其他 Chat UI**：将 `_SKILL-Amalgamated.md` 全文粘贴到系统提示词中
- **API 调用**：将 `_SKILL-Amalgamated.md` 内容作为 system message 传入

## 构建

`_SKILL-Amalgamated.md` 是衍生档，由 `SKILL.md` + `references/*.md` 合并生成。修改源码后需重建。

```bash
# 重建合并 markdown
make amalgamated

# 或直接 make（等同于 make amalgamated）
make

# 清除衍生档
make clean
```

## 涵盖内容速览

| 主题 | 说明 |
|------|------|
| **曳动理论** | 定位/转位、曳动单位（K1~K3）、曳动连锁 |
| **功能体系** | T/D/D2/S、5 度圈、D 进行与 S 进行 |
| **终止式** | 全终止、伪终止、半终止、变终止；终止定型（Sop 定型 1~5 + Bas 定型 a/b） |
| **四声体配置** | 密集/开放配分、声部音域、构成音省略与重复 |
| **连接规则** | 限定进行音（导音/第 7 音）、平行 5/8 度、隐伏 5/8 度、并达 5/8 度 |
| **D 定型** | `伍7` → `壹` 的 8 种 Sop 定型 × 7 种 Bas 定型 |
| **转调/借用/转旋** | 近亲转调、借用标记（`+肆`/`+贰`）、减 7 异名同音转调 |
| **增 6 和音** | 法国/意大利/德国增 6 的 3 种形体与用法 |
| **反复进行** | D 型/S 型/复合型、移度/移调反复 |
| **偶成和音/保续低音** | 转位偶然形成的音集合、`壹`/`伍` 持续低音上的上部和声 |
| **装饰** | 经和音/刺绣音/侍音/挂留音/逸音/先取音、装饰规则 F1~F3, G1~G2 |
| **纯文本记号** | 音度记号（`壹`~`柒`）+ 前缀（`省`/`+`/`拿`）+ 后缀（转位/变音/附加标记） |
| **旋律配和声** | 给定主旋律时的乐句边界侦测、Sop 定型对齐、曳动单位链拼接 |

## 文件说明

### `SKILL.md`
知识库入口。包含前设（YAML frontmatter）宣告名称与描述，正文覆盖核心哲学、术语体系、四声体基础规则、完整的 **8 步骤写作流程**，以及所有关键概念的速查表。Agent 应首先读取此档以建立全局认知。

### `_SKILL-Amalgamated.md`
全部 15 个 markdown 档案（SKILL.md + references/*.md）的合并版。适用于需要一次性载入完整知识库的场景（如上下文窗口充裕或需要离线参考）。档名以 `_` 开头表示它是衍生档，由 `make amalgamated` 生成。

### `references/`
14 个细项参考文件，每个聚焦一个主题。Agent 按需单独检索对应文件，比加载整份合并档更节省 token。

### `VALUEADD/`
各 LLM 对岛冈让体系教材的独立评测。这些评测档展示不同模型对同一体系的理解深度与教学抓力，可作为比较参考。**非知识库主体**。

### `references/ShimaokaChordStructExample.swift`
以 Swift 数据结构模拟岛冈让和声记号体系的概念验证代码。定义了音度、功能、和音类型、低音位、转位等枚举与结构体，展示该记谱系统在程序语言中的建模可能性。

## 四声体写作步骤（8 Steps）

`SKILL.md` 中定义了完整的写作流水线，Agent 会依序执行：

1. **调性确定与终止配置** — 辨明调性、规划终止点
2. **曳动单位骨架选择** — K1/K2/K3 序列
3. **终止定型确定** — Sop 定型 (1)~(5) × Bas 定型 (a)/(b)
4. **Bas 线条填充** — 从终止点向两端延伸
5. **Sop 旋律构建** — 顺次进行为主，适度跳越
6. **内声（Alt + Ten）填充** — 共同音保持 + 限定进行
7. **规则检查** — 逐条对照 A~G 条款
8. **装饰添加**（可选）— 经和音/刺绣音/侍音/挂留音

> 若课题是**给定一条现成主旋律**（而非自由创作），Step 1 ~ Step 3 需改为从旋律反推：先执行 [references/melody-harmonization.md](shimaoka-harmony/references/melody-harmonization.md) 的三个子步骤（乐句边界侦测、Sop 定型对齐、曳动单位链拼接），再代入上述 Step 1 ~ Step 3，然后继续 Step 4 ~ Step 8。

## 相关资料

- 島岡譲《総合和声：実技・分析・原理》（东京艺术大学教材）

## License

本仓库为教学参考用途。和声学理论内容属学术公共领域；代码（Swift）、仓库结构编排与纯文本记号语法设计采用 MIT License。

本仓库的 notation-syntax 当中的「基于中文大写数字的调性和声记号」乃作曲家孙志贵设计、便于 AI Agent 理解消化。

# Shimaoka-SATB-SkillSet

[Tap here to read the zh-Hans (简体中文) version](./README.md)

Tokyo University of the Arts — **Shimaoka Yuzuru System** of Four-Part Harmony: a structured knowledge base for AI Agents.

## What Is This?

This repository organizes the four-part harmony textbook of Shimaoka Yuzuru (島岡譲) into a structured, LLM-referenceable knowledge system. The core philosophy is **Swing Theory (yure theory)**: chords, like a pendulum, oscillate between stable positions (rest) and deviated positions (displacement), forming the essential motion of harmony.

`SKILL.md` serves as the entry point, providing the complete terminology, an 8-step writing procedure, and a concept quick-reference. The 14 files under `references/` are subdivided by topic for on-demand retrieval by Agents. `_SKILL-Amalgamated.md` is the full merged file for one-shot loading.

Provide this repository as context to any AI Agent that supports file references, and it can perform SATB part-writing, chord analysis, functional annotation, and other tasks following the Shimaoka system.

## Repository Structure

```
Shimaoka-SATB-SkillSet/
├── AGENTS.md                                      # Team working philosophy (meta-instructions for AI Agents)
├── Makefile                                       # Build script
├── README.md                                      # Chinese README (this file's source of truth)
├── README_EN.md                                   # English README (this file)
├── VALUEADD/                                      # LLM reviews & dev memos on the system
│   ├── zh-Hans/
│   │   ├── Reviews/                                # Chinese reviews (9 total)
│   │   │   ├── [Deepseek-v4]Review-on-Shimaoka-Harmonielehre.md
│   │   │   ├── [Sonnet5]Review-on-Shimaoka-Harmonielehre.md
│   │   │   ├── [Qwen]Review-on-Shimaoka-Harmonielehre.md
│   │   │   └── ... (9 reviews total)
│   │   └── DevMemo/                                # Development memos (not part of the knowledge base proper)
│   └── en-US/
│       └── Reviews/                                # English reviews (same 9, translated)
├── shimaoka-harmony/                              # Knowledge base — Simplified Chinese
│   ├── SKILL.md                                   # Entry: core philosophy, terms, writing steps, concept quick-ref
│   ├── _SKILL-Amalgamated.md                      # Full merge (15 .md files combined)
│   └── references/                                # Topic-specific reference files (14 .md + 1 .swift)
│       ├── ShimaokaChordStructExample.swift        # Swift type-system reference code
│       ├── notation-syntax.md                     # Plain-text chord notation syntax
│       ├── chord-system.md                        # Chord system & functional theory
│       ├── voice-leading.md                       # SATB disposition & connection rules
│       ├── cadence.md                             # Cadential units & cadences
│       ├── d-formation.md                         # Dominant formula & cadence formula
│       ├── modulation.md                          # Modulation / borrowing / enharmonic reinterpretation
│       ├── d-chords.md                            # D chords & D₂ chords
│       ├── s-chord.md                             # S chords & plagal cadence
│       ├── ornamentation.md                       # Displacement & ornamentation
│       ├── sequence.md                            # Sequential progressions
│       ├── nonchord.md                            # Incidental chords & sustained bass
│       ├── rules.md                               # Compiled learning rules (A–G)
│       ├── examples.md                            # SATB writing examples
│       └── melody-harmonization.md                # Melody harmonization workflow (when a melody is given)
└── shimaoka-harmony-en/                           # Knowledge base — English (mirror)
    ├── SKILL.md
    ├── _SKILL-Amalgamated.md
    └── references/                                # (same 15 files, translated)
```

## How to Use

Provide `SKILL.md` or `_SKILL-Amalgamated.md` as system prompt or context to an AI Agent to equip it with the Shimaoka system's harmonic rules. The exact method depends on your tool:

- **Zed**: place the `shimaoka-harmony/` (or `shimaoka-harmony-en/`) directory under `~/.agents/skills/`, then `@shimaoka-harmony` (or `@shimaoka-harmony-en`) in conversation
- **Cursor / Claude Code / Copilot**: attach `_SKILL-Amalgamated.md` as a context file, or include the entire skill directory in your workspace
- **ChatGPT / Claude / other chat UIs**: paste the full content of `_SKILL-Amalgamated.md` into the system prompt
- **API calls**: pass the `_SKILL-Amalgamated.md` content as a system message

## English Notation System

The English notation (`shimaoka-harmony-en/`) uses a compact prefix-degree-suffix scheme with Roman numeral degrees (`Ⅰ`–`Ⅶ`), isomorphic to the Chinese character notation (`壹`–`柒` in `shimaoka-harmony/`):

```
[r | m | p | + | -]  Ⅰ–Ⅶ  [7 | 9]  [1 | 2 | 3 | 4]  [f | s]  [F | S]  [@target]  [/bass]
```

| Token | Meaning | Example |
|-------|---------|---------|
| `r` | rootless / 5thless | `rⅤ7` = rootless Dom 7th |
| `m` | quasi (borrowed from parallel mode) | `mⅣ` = quasi IV |
| `p` | Neapolitan II | `pⅡ1` = Neapolitan II 1st inv |
| `+` / `-` | forced major / minor | `+Ⅰ` = Picardi Tonic |
| `7` / `9` | 7th / 9th chord | `Ⅴ7`, `Ⅴ9` |
| `1`–`4` | inversion | `Ⅴ71` = Dom 7th 1st inv |
| `f` / `s` | ♭5 / ♯5 | `Ⅴ7f`, `Ⅴ91s` |
| `F` / `S` | add 4th / add 6th (prefix `s`/`f` for altered additions) | `ⅣS` = IV add 6th, `ⅣsS` = IV add ♯6th |
| `@` | tonicizing to | `Ⅴ@Ⅱ` = V tonicizing to II |
| `/` | sustained on | `Ⅴ7/Ⅰ` = V7 on sustained I |

Full syntax specification: [`shimaoka-harmony-en/references/notation-syntax.md`](shimaoka-harmony-en/references/notation-syntax.md)

## Building

`_SKILL-Amalgamated.md` is a derived file, generated by merging `SKILL.md` + `references/*.md`. Rebuild after editing source files.

```bash
# Rebuild both language amalgamations
make

# Simplified Chinese only
make amalgamated-hans

# English only
make amalgamated-en

# Remove generated files
make clean
```

## Coverage at a Glance

| Topic | Description |
|-------|-------------|
| **Swing Theory** | Rest/displacement, cadential units (K1–K3), cadential chains |
| **Functional System** | T/D/D₂/S, circle of 5ths, D progression & S progression |
| **Cadences** | Perfect, deceptive, half, plagal; cadence formulae (Sop 1–5 × Bas a/b) |
| **SATB Disposition** | Close/open position, voice ranges, tone omission & doubling |
| **Connection Rules** | Obligatory motion tones (leading tone / chordal 7th), parallel 5ths/8ves, hidden 5ths/8ves, direct 5ths/8ves |
| **Dominant Formula** | `Ⅴ7` → `Ⅰ`: 8 Sop formulas × 7 Bas formulas |
| **Modulation / Borrowing / Enharmonic Reinterpretation** | Closely-related modulation, borrowing notation (`+Ⅳ`/`+Ⅱ`), diminished-7th enharmonic modulation |
| **Augmented 6th Chords** | French/Italian/German 6th — 3 forms and usage |
| **Sequential Progressions** | D-type / S-type / compound-type; diatonic / modulating transposition |
| **Incidental Chords / Sustained Bass** | Tone collections formed incidentally through displacement; upper harmony over `Ⅰ`/`Ⅴ` pedal |
| **Ornamentation** | Passing tones, neighbor figures, appoggiaturas, suspensions, escape tones, anticipations; ornament rules F1–F3, G1–G2 |
| **Plain-Text Notation** | Degree symbols + prefixes (`r`/`m`/`p`/`+`) + suffixes (inversion / alteration / addition / markers) |
| **Melody Harmonization** | Phrase-boundary detection, Sop-formula alignment, and cadential-chain assembly when a melody is given |

## File Descriptions

### `SKILL.md`
Knowledge base entry point. Contains YAML frontmatter declaring the skill name and description; the body covers core philosophy, terminology, SATB fundamentals, the complete **8-step writing procedure**, and quick-reference tables for all key concepts. Agents should read this file first to establish a global understanding.

### `_SKILL-Amalgamated.md`
The full merge of all 15 markdown files (SKILL.md + references/*.md). Use when you need to load the complete knowledge base in one shot (e.g., ample context window, or offline reference). The filename prefix `_` marks it as a derived file, generated by `make`.

### `references/`
14 topic-specific reference files, each focused on one subject. Agents retrieve individual files on demand — more token-efficient than loading the full amalgamation.

### `VALUEADD/`
Independent reviews of the Shimaoka system by various LLMs, plus development memos tracking the skillset's own design decisions. Split by locale (`zh-Hans/`, `en-US/`). The reviews demonstrate different models' depth of understanding and teaching grip on the same system, serving as comparative reference. **Not part of the knowledge base proper.**

### `references/ShimaokaChordStructExample.swift`
Proof-of-concept Swift code modeling the Shimaoka chord notation system as data structures. Defines enums and structs for degrees, functions, chord types, bass positions, inversions, etc., demonstrating the notational system's modelability in a programming language.

## SATB Writing Procedure (8 Steps)

`SKILL.md` defines a complete writing pipeline. Agents execute in sequence:

1. **Key Determination & Cadence Layout** — identify the key, plan cadence points
2. **Cadential Unit Skeleton Selection** — K1/K2/K3 sequence
3. **Cadence Formula Determination** — Sop formulas (1)–(5) × Bas formulas (a)/(b)
4. **Bas Line Fill** — extend outward from cadence points
5. **Sop Melody Construction** — primarily stepwise, moderate leaps
6. **Inner Voice Fill (Alt + Ten)** — common-tone retention + obligatory motion
7. **Rules Check** — verify against A–G clause by clause
8. **Ornamentation** (optional) — passing tones, neighbor figures, appoggiaturas, suspensions

> If the exercise is **an existing melody given in advance** (rather than free composition), Steps 1–3 must be inferred in reverse from the melody: first run the three sub-steps in [references/melody-harmonization.md](shimaoka-harmony/references/melody-harmonization.md) (phrase-boundary detection, Sop-formula alignment, cadential-chain assembly), then feed their output into Steps 1–3 above before continuing to Steps 4–8.

## Related Materials

- 島岡譲《総合和声：実技・分析・原理》(Tokyo University of the Arts textbook)

## License

This repository is intended for educational reference. Harmonic theory content belongs to the academic public domain; the Swift code, repository structural arrangement, and plain-text notation syntax designs are provided under the MIT License.

The plain-text chord notation system used in this repository was designed by composer Shiki Suen (孫志貴). The original Chinese-character version (`notation-syntax.md` in `shimaoka-harmony/`) was created for AI Agent comprehension; the English Roman-numeral version (`notation-syntax.md` in `shimaoka-harmony-en/`) is an isomorphic redesign of it.

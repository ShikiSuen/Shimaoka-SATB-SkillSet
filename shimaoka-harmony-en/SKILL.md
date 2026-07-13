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

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

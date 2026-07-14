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

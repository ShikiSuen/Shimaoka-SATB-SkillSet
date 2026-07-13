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

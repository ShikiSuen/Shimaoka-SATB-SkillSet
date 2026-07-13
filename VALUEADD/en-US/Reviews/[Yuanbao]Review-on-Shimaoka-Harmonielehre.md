> Hi, Yuanbao. Drawing on your contact with the Shimaoka harmony system knowledge base, please discuss the advancements (and possible shortcomings) of Shimaoka's theory compared to the Sponsobin Soviet harmony system and Western harmony systems.

This is a fascinating question — the Shimaoka (Shimaoka Yuzuru) system is rarely discussed in Chinese-language circles, but as the pedagogical backbone of four-part writing at the Tokyo University of the Arts, it is actually a seriously underappreciated, finely crafted product situated between the "French harmony writing tradition" and "German functional theory." Below, I'll place the three systems on the same table and discuss where the advancements lie and where the boundaries fall.

First, let's locate the lineage of the three systems
----------

*   **The general Western system** (centered on the Austro-German axis): from Riemann's functional theory → Schenkerian linear analysis → American undergraduate Roman Numeral + Figured Bass pedagogy. The underlying layer is "historical harmonic style imitation" — the main axis before the late 19th century, which after the 20th century fractured into multiple strands (Schenkerian, jazz, pop).

*   **The Sponsobin system** (Soviet *Harmony Textbook*): a product of the Moscow Conservatory — T-S-D three-function + secondary dominants / applied dominants / tonicization + extremely standardized four-part prohibitions. In essence, it is an industrialized textbook for "late Romantic + nationalist school" writing, with extremely high rule density, suitable for drill-based practice.

*   **The Shimaoka system**: Tokyo Geidai. Influenced by both the Paris Conservatoire writing tradition (the Dubois/Gevaert lineage) and German functional theory, then re-packaged using Japanese-native pedagogical language. The core metaphor is **swing (yure)**, not a functional cycle.

Shimaoka System Advancements
--------

### 1. Replacing the "Functional Cycle" with "Swing," Capturing the Physical Essence of Tension–Resolution

Both the Sponsobin and general Western systems' T-S-D is a **static classification** — a chord gets a function label, and then you memorize a rule table: "T can go to any D/S, D returns to T, S goes to D or T." Shimaoka doesn't do this. He treats chords like a pendulum:

*   **Rest position** = stability (originating tones; the `Ⅰ` of T)
*   **Displacement** = deviation (tension; D1–D6 are all calibrated by "number of D-progression steps from T")
*   **Cadential unit** = one complete process of "release → swing out → swing back"

The benefit of this metaphor is: **function is no longer a property of the chord, but the chord's position within motion**. The same `Ⅱ`, in `Ⅰ→Ⅱ→Ⅴ→Ⅰ`, is D2 (one step of deviation), and elsewhere it might be something else — but it is determined by "how many steps from T," not by "whether it belongs to the S circle." This is far finer-grained than the T-S-D tripartite function (D1–D6: six gradations vs. three).

### 2. The D Progression (Clockwise Circle of 5ths) as Universal Grammar

Shimaoka calls the circle of 5ths `Ⅰ→Ⅴ→Ⅱ→Ⅵ→Ⅲ→Ⅶ→Ⅳ→Ⅰ` the **D progression**, and the counterclockwise direction the S progression. Function is "the number of D-progression steps from T" — this definition is exceptionally clean:

*   D1 = `Ⅴ` (1 D-progression step)
*   D2 = `Ⅱ`/`Ⅳ` (2 steps)
*   D3 = `Ⅵ` (3 steps)
*   …

Sponsobin's "subdominant function group / dominant function group" is a fuzzy set ("Ⅱ, Ⅳ, Ⅵ all count as subdominant group," but without quantification); Riemann's "dual-function harmony" is excessively philosophical. Shimaoka's method of **using circle-distance to calibrate functional position** is the most mathematical and computable of the three — the Swift struct `TonalChord` you provided maps directly onto it, demonstrating this system's friendliness to formalization.

### 3. Cadence Formulae / Dominant Formulae Made into "Reusable Templates"

General Western pedagogy says "V–I cadence" and that's it; Sponsobin says "D–T perfect/imperfect cadence." Shimaoka makes `D₂→D→T` into a **cadence formula**, further decomposing it into Sop formulas (1)–(5) × Bas formulas (a)(b), and even embedding special forms like `Ⅰ2 rⅤ7` — this is **writing-oriented** rather than **analysis-oriented**. Students leave the classroom not just able to "analyze" a piece, but able to "write" a passage of four-part texture conforming to Classical grammar. This is even more "artisanal" than Sponsobin.

### 4. The Explanatory Power of Incidental Chords + Sustained Bass

Sponsobin treats pedal points as a "special phenomenon"; the Western figured bass tradition also treats them as a subsidiary technique. Shimaoka makes **sustained bass** and **incidental chords** (temporary tone collections formed during displacement, requiring reduction to the originating chord for understanding) into resident concepts within the system, even providing compound notation like `Ⅰ(Ⅴ7)` / `Ⅰ@Ⅴ`. This is exceptionally smooth for explaining the Baroque/Classical practice of "freely swinging over a sustained bass" — in essence, elevating "ornamental writing" to a position equal with "skeletal writing."

### 5. The Notation System's Friendliness to East Asian Contexts

`ⅠⅡⅢⅣⅤⅥⅦ` + `r / ♯ / ♭ / +` + inversion indices — compared to Roman Numerals (I II V) in Chinese/Japanese environments, this removes one layer of translation, and is more readable than the Arabic-numeral stacks of figured bass. The `notation-syntax.md` + Swift struct you attached already proves this can be implemented directly as code — neither Sponsobin's notation (which mixes function letters T S D with scale-degree numbers) nor Western figured bass has been formalized this cleanly.

Possible Shortcomings / Boundaries
----------

### 1. Still Essentially a Pre-19th-Century Four-Part Textbook; The World Beyond Tonality Is Nearly Absent

The pedagogical endpoint of the Shimaoka system probably stops around Brahms. The toolkit of `rⅤ7`, `augmented 6th chords`, `pⅡ`, `modulation / borrowing / enharmonic reinterpretation` can cover up to Franck / Tchaikovsky, but:

*   Tonal dissolution (post-Debussy)
*   Jazz harmony (Shimaoka's D1–D6 cannot fit into the voice-leading logic of ii–V–I)
*   Pop harmony (functional harmony itself is adequate, but Shimaoka's "cadential unit" granularity is too heavy for pop)

Sponsobin has the same problem, but the Western system, because of the Schenker → 20th-century theoretical divergence, at least has a "subsequent map." In Japan, Shimaoka's subsequent development breaks off around Takemitsu analysis.

### 2. The Cognitive Load of the "Swing" Metaphor

For Japanese/Chinese-native students, the "pendulum" is very intuitive. But for students already familiar with T-S-D or RN, they must first rewire the brain circuit from "function = property" to "function = number of steps around the circle from T," then layer on "rest position / displacement / cadential unit / cadential chain" — **the entry threshold is higher than Sponsobin**. Sponsobin may be rigid, but T-S-D three-function + a prohibition table can be worked through in three months. Truly digesting the full Shimaoka set — cadence / d-formation / sequence / nonchord — takes longer.

### 3. D1–D6 Calibration Gets Strained at Boundary Cases

Shimaoka defines "functional position = number of D-progression steps from T" — but:

*   In minor keys, diatonic `Ⅶ` vs. raised `Ⅶ` (leading tone) must be handled differently depending on context (the minor-key D₂ formula section in d-chords.md already exposes this)
*   During enharmonic modulation / diminished-7th enharmonic equivalence, the physical distance of "how many D-progression steps from T" decouples from the perceived aural distance
*   Borrowed chords like `+Ⅳ`, `+Ⅱ`, `♭Ⅶ` require additional patches for their functional positions

Sponsobin's "functional group" fuzzy handling is actually more resilient — its fault is crudeness, but boundary cases don't break. Shimaoka's precision is a double-edged sword.

### 4. Compared to Schenker, Lacks a "Deep Structure" Layer

From the mid-20th century onward, the Western system has the Schenkerian strand — beneath the surface four-part texture lie Ursatz / Züge / Auskomponierung. Shimaoka's "swing" stays at the surface level of motion (tension–resolution), without a corresponding "prolongation / elaboration" deep grammar. **Incidental chords** somewhat approach the intention of Auskomponierung, but Shimaoka treats them as "temporary tone collections during displacement to be reduced" — a reverse operation. Schenker's approach is "strip away surface ornamentation to see the skeleton"; Shimaoka's is "the incidentally formed collections formed during skeletal swing must be traced back to their origins." The directions are opposite; the depth differs by a tier.

### 5. Weak International Dissemination

Sponsobin has circulating editions in Chinese, English, and Russian; the Western system has the Anglo-American textbook chain of Piston / Aldwell & Schachter / Laitz. Shimaoka's original book *Harmony* probably exists only in Japanese; the teaching language is locked within the Japanese-language sphere — the 15 markdown files you provided this time look like someone is doing Chinese-side organization (notation already Sinicized), but this hasn't scaled yet. No matter how good the theory, inability to disseminate is a disadvantage.

A Comparative Table to Close
-------

| Dimension | Shimaoka | Sponsobin | General Western (Austro-German–American) |
|---|---|---|---|
| Core Metaphor | Swing (pendulum) | T-S-D functional groups | Historical style + RN/Figured Bass |
| Functional Granularity | D1–D6 (circle-steps from T) | T / S / D three groups | Fuzzy; relies on RN scale degrees |
| Pedagogical Endpoint | Late Romantic four-part | Late Romantic + nationalist school | Baroque–Classical as core; Schenker/jazz divergence |
| Writing Orientation | Strong (cadence/D formulae reusable) | Strong (prohibition table + exercises) | Moderate (analysis/writing split evenly) |
| Formalization Friendliness | High (ⅠⅡⅢ + Swift-mappable) | Medium | Low (figured bass is messy) |
| Beyond-Tonality Coverage | Virtually none | Virtually none | Present (Schenker / 20th-century branches) |
| Entry Barrier | Relatively high | Low–medium | Medium |

> 💡 My judgment: The Shimaoka system is an **optimized version in the "writing pedagogy" dimension** — it welds together Austro-German functional theory + French Conservatoire four-part writing + Japanese pedagogical fastidiousness. In the matter of "teaching a student to write a passage of four-part texture that sounds acceptably Classical," it is more refined than Sponsobin and more structured than the general Western approach. But it falls silent beyond 1900, and the entry cost of metaphorical re-framing is not low. If used to teach the first two years of composition undergraduate writing, it is the "sharpest" of the three; if used for analysis or covering post-20th-century music, it lacks the staying power of the Western system.

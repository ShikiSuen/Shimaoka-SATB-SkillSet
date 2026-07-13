> Hi. Drawing on your contact with the Shimaoka harmony system knowledge base, please discuss the advancements (and possible shortcomings) of Shimaoka's theory compared to the Sponsobin Soviet harmony system and Western harmony systems. // P.S.: The plain-text notation system used in these files was designed by composer Shiki Suen. The original Tokyo University of the Arts Shimaoka harmony textbook uses its own Roman numeral notation, which is different from and incompatible with the Classical harmony notation currently prevalent in Europe and America. Shiki Suen developed this plain-text notation purely to facilitate LLM understanding and learning of the Geidai harmony system. Furthermore, terminological and logical isolation between different institutional theory systems is critically important; otherwise, students may end up understanding none of them.

Hello! I'm delighted to explore this topic of both depth and breadth with you.

First, I fully agree with your P.S. addendum: **terminological and logical isolation between different institutional harmony systems is critically important**. The Sponsobin system, the German functional system (Riemann), and the Shimaoka system rest on fundamentally different underlying logics and observational perspectives. If they are conflated (for instance, directly equating Shimaoka's "D₂" with Sponsobin's "ii" or "Sii"), logical conflicts inevitably arise, ultimately leaving students at a loss. At the same time, I am deeply grateful to composer Shiki Suen for designing this plain-text notation system — this notation not only greatly facilitates structured parsing of Geidai harmony by LLMs (as demonstrated by the rigorous `TonalChord` data model in the Swift code), but also forms a physical terminological barrier against the Classical/jazz harmony notation prevalent in Europe and America (such as I7, V/V, ii-V-I), preserving the logical purity of the system.

Based on the reference files and system knowledge, here are the **advancements** and **possible shortcomings** of the Shimaoka theory compared to the Sponsobin (Soviet) system and traditional Western harmony systems:

### I. Advancements of the Shimaoka Theory

#### 1. A Leap in Core Philosophy: "Swing (yure)" Theory Replaces Static Chord Stacking

*   **Western / Sponsobin systems**: Tend to treat harmony as independent "static blocks," focusing more on the chord's own structure (major, minor, dominant seventh) and the rules connecting block to block.
*   **Shimaoka system**: Introduces the pendulum-like **swing theory**. The essence of harmony is oscillation between "rest position (stable)" and "displacement (deviation/tension)." Shimaoka unifies the scattered "non-chord tones" of traditional Western theory (passing tones, appoggiaturas, suspensions, anticipations, etc.) under the category of "displacement," regarding them as dynamic deviations of the chord's core constituents, all ultimately requiring "resolution." This perspective highly unifies voice leading with harmonic function, coming closer to the actual dynamic auditory psychology of music.

#### 2. Rigorous Mathematical Deduction of the Functional Circle: The Systematic Nature of D1–D6

*   **Western / Sponsobin systems**: Typically treat the subdominant (S/IV), dominant (D/V), and tonic (T/I) as the core, with other chords (e.g., iii, vi, ii) often explained as "functional substitutes" or "secondary dominants" — logically somewhat patchwork.
*   **Shimaoka system**: Uses the circle of 5ths (D progression) entirely as the underlying logic, deriving the distance scale D1 (Ⅴ) through D6 (Ⅳ). The function of each degree is not defined by "feeling" or "substitution" but strictly determined by its number of D-progression steps from T (Ⅰ). This systematic "pathway" (return route, e.g. D4 must pass through D3→D2→D1→T) endows harmonic progressions with extremely strong logical necessity.

#### 3. Highly Modular Cadences and Two-Outer-Voice Formulae

*   **Sponsobin system**: At cadence points, emphasizes overall voice-leading rules (avoid parallel fifths/octaves, leading tone ascends, etc.) but provides fewer specific melodic modules.
*   **Shimaoka system**: Distills the Dominant formula (Ⅴ7→Ⅰ) and cadence formula (D₂→D→T) into specific 8 and 5 "formula types" for Sop (soprano) and Bas (bass). This method of solidifying complex contrapuntal rules into "pluggable modules" dramatically improves the teaching efficiency and standardization of four-part writing, and closely matches the actual writing conventions of the Classical period.

#### 4. Independent Self-Consistency of the "Rootless Dominant" and Borrowing System

*   In Western theory, a dominant 9th chord with the root omitted is often interpreted as a different chord (e.g., V9 without root is often interpreted as vii°7). But in the Shimaoka system, it is explicitly identified as a **"rootless dominant chord" (`rⅤ7`/`rⅤ9`)**, preserving its D-function identity without letting omission change its underlying identity. Similarly, for concepts like "borrowing" (e.g., quasi chords) and "enharmonic reinterpretation," the Shimaoka system draws exceptionally clear boundaries, perfectly reflected in fields like `qualityEnforcement` and `isReferredFromShorterParallelMode` in the Swift code.

### II. Possible Shortcomings and Limitations of the Shimaoka Theory

#### 1. Extremely Strong Closed-Loop System, Limited Applicability to Late Romantic / Modern Music

*   The core of the Shimaoka system is built on the four-part chorale style of the Classical through early Romantic periods. Its rules (such as the pathway requirement of D₂→D→T, reliance on D-type cadences) are razor-sharp when handling Bach, Mozart, and Beethoven; but when facing the extreme chromaticism after Wagner, Debussy's coloristic harmony, or popular/jazz music, its logic of "swing" and "functional return" can appear insufficiently explanatory or even overly rigid. By comparison, Western chord-scale theory (CST) is far more flexible in handling modern tonality.

#### 2. Steep Learning Curve, Heavily Dependent on "Strict Bas" and "Free Sop" Exercise Training

*   Although the Sponsobin system is rigid, its entry threshold is relatively low (as long as you calculate intervals correctly and avoid forbidden rules, you can produce a passing voice-leading). The Shimaoka system requires students to deeply understand "formulae" and "swing," and its four-part writing is heavily dependent on specific exercise types of "given bass" or "given soprano." Without extensive formula muscle-memory training, students find it difficult to directly apply its rules for composition.

#### 3. High-Context Threshold of the Notation System

*   As you noted in your P.S., Shimaoka's original Roman numeral notation is "different from and incompatible with" current European and American notation. It forms a high-context closed loop within Geidai. Without the transcription and abstraction provided by Shiki Suen's "plain-text character notation" (i.e., reducing complex typesetting symbols to a `<prefix> <degree> <suffix>` data structure), this system would easily encounter parsing obstacles in the digital age and cross-cultural transmission.

#### 4. Reductionist Tendency Toward "Incidental Chords"

*   The Shimaoka system tends to "reduce" the complex sonorities produced by intersecting voices back to displacements or omissions of fundamental chords (i.e., incidental chord theory). This is pedagogically beneficial for students to see the essence, but in post-20th-century music analysis, this "must reduce" fixation can sometimes obscure the independent structural significance of the sonority itself in modern music.

### Summary

The Shimaoka system does not aim to replace Western or Soviet systems; rather, it **provides a highly precise "dissecting microscope for tonal music."** Through swing theory and circle-of-5ths functional deduction, it strips the internal logic of Classical harmony exceptionally clean.

As can also be seen from the Swift code you provided, every concept in the Shimaoka system (inversion, form, borrowing, quasi, Neapolitan) can be abstracted with extreme precision into object-oriented data structures. This precisely demonstrates that the system has reached an exceptionally high standard of **logical self-consistency** and **structural rigor**. As long as we practice "system isolation" in teaching and use — preventing Sponsobin's "secondary dominant" or jazz's "ii-V-I" concepts from sneaking in — Shimaoka theory is one of the strongest tools for training logical thinking in Classical four-part writing.

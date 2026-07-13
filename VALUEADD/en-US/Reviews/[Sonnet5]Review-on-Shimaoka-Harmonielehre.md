> Hi, Sonnet 5. Drawing on your contact with the Shimaoka harmony system knowledge base (the entire shimaoka-harmony directory), please discuss the advancements (and possible shortcomings) of Shimaoka's theory compared to the Sponsobin Soviet harmony system and Western harmony systems. (Your reasoning need not be influenced by Deepseek's opinion.)

This is my independent assessment based on the repository contents.

## I. Shimaoka's Core Innovation: Redefining "Function" as "Distance"

Traditional Sponsobin and Western systems treat chord function as a **discrete classification** — a chord is either T, or S, or D, a three-way choice with clear but rigid boundaries (hence debates like "does VI count as a T proxy?" requiring a dedicated rule to adjudicate).

The Shimaoka system does the opposite, defining D1–D6 as **"the number of D-progression steps from T"** — as stated in chord-system.md:

> Functional position is determined by "number of D-progression steps from T."

This means function is not a label, but a **distance** measured on the circle of 5ths `Ⅰ→Ⅴ→Ⅱ→Ⅵ→Ⅲ→Ⅶ→Ⅳ→Ⅰ`. The advancement in this design is that it directly translates the musical intuition of "how far this chord sounds from the tonic" into a computable integer (1 step, 2 steps... 6 steps), rather than first classifying and then relying on experience to judge "how strong this cadence sounds."

**But this very point exposes an internal contradiction within the system**: `Ⅳ` has an ambiguous identity under this measuring stick — it is simultaneously "S (1 step counterclockwise from T)" and also listed as "D6 (6 steps clockwise from T)." The same chord is described in the same documentation using two opposite-direction distances. S and D6 have not truly been unified; they are merely listed side by side. This is, in my view, where the system is not yet fully self-consistent. It is more complex than the Western textbook question of "what exactly is IV" being simply categorized as "subdominant," but the added complexity does not yield stronger explanatory power — it merely lays the contradiction on the table without truly resolving it.

## II. Treatment of Root-Omitted Chords: Conceptually More Honest than the Soviet System

chord-system.md states explicitly:

> Rootless dominant chords are not independent chords; they are omitted forms of `Ⅴ7`/`Ⅴ9` and still belong to the D function.

This is, in my view, the single strongest design decision in the entire system. The Soviet Sponsobin system calls this chord a "leading-tone seventh chord" and assigns it an independent Roman numeral identity (VII degree) — this is a **notational convenience but a conceptual lie**: it makes students believe there exists "an independent chord built on the leading tone," when in reality it is, from start to finish, simply a dominant seventh chord with the root removed.

The Shimaoka system uses notation like `rⅤ7`, forcing the user to explicitly acknowledge on every writing occasion that "this remains an omitted form of the dominant." The omission prefix is not optional decoration but a necessary component of the notational grammar. This is **using the notational grammar itself to correct a common conceptual error** — something neither Sponsobin nor Western textbooks achieve.

**Shortcoming**: This "honesty" comes at a cost. `rⅤ92f@Ⅴ` precisely describes "root-omitted dominant 9th, 2nd inversion, ♭5, leading to V," but compared to a Western shorthand like `viiø7/V`, the information density is actually lower — you need more characters to express the same thing. Precision and brevity are in tension here, and the Shimaoka system clearly chooses precision first.

## III. Swing Theory vs. Tension-Resolution Model: An Underappreciated Philosophical Difference

Western harmony pedagogy (whether functional harmony or Schenkerian) almost universally defaults to "tension → resolution" as a unidirectional arrow-like process: dissonant tones "want" to resolve to consonant tones, and after resolution the narrative is over.

The Shimaoka system uses the "pendulum" metaphor (SKILL.md: "chords, like a pendulum, oscillate between stable positions (rest) and deviated positions (displacement)") to imply something Western textbooks generally do not state explicitly: **after resolution, harmonic motion does not truly stop; it merely returns to another equilibrium point, ready to be "released" again at any moment**. This better fits the actual listening experience of Baroque-Classical music — cadences are rarely true periods; they are more like commas immediately followed by the next cadential unit.

The direct engineering product of this philosophy is "cadential chains" (the concatenation notation K3 + K1 + K2), which describes an entire harmonic passage as splicing together multiple swing processes, rather than a string of independent chord labels. **This is an abstraction level that the Sponsobin system completely lacks** — Sponsobin would talk about "a cadence can be followed by another cadence" in discursive terms, but gives this splicing operation no formal notation or name of its own.

## IV. Combinatorial Completeness of Cadence Formulae: Teaching Engineering, Not Mere Music Theory

d-formation.md cross-references Sop formulas (1)–(5) with Bas formulas (a)(b) to list "10 basic combinations in total," and further shows how Sop formulas mutate into (2')–(5') when `Ⅰ2 rⅤ7` intervenes. This approach is fundamentally **turning harmony writing rules into an exhaustible decision table** — something conveyed implicitly through large numbers of exercises in Sponsobin or Western textbooks, but never laid out as an explicit table of "all legal cadence formula permutations."

For human learners this may feel like memorizing a dictionary, but for LLMs or any scenario requiring **executable rules**, this design is almost a decisive advantage — the newly added Step 3 "Cadence Formula Determination" in SKILL.md can directly reference this table to select Sop/Bas combinations, without needing to "judge by experience which progression sounds right." This is the fundamental advantage of this skill over any Western harmony textbook in terms of **operability**, and the point I consider most worth demonstrating internally: a harmony teaching system whose skeleton is a "combinatorially complete decision table" rather than "inductive description of canonical works" is naturally better suited for LLM digestion and execution.

## V. Supplementary Shortcomings: Enharmonic Reinterpretation and Augmented 6th Chords Still Stay at the "What" Level

chord-system.md only gives the three form names for augmented 6th chords (French/Italian/German 6th) and their constituent-tone relationships, without explaining **when to choose which one** — this is one of the few places in the entire repository where "classification is complete but decision rules are missing," to some degree repeating the problem I identified with functional distance: the system provides refined classification tools, but how to choose between tools and when to switch still depends on the user's pre-existing musical sensibility rather than rules the system itself provides. This contrasts with the rigorous "combinatorial completeness" of the cadence formulae, demonstrating that the internal rigor of this skill is uneven — some chapters (cadence formulae) have reached engineering-grade enumeration, while others (augmented 6th selection, enharmonic reinterpretation details) remain at the level of concept listing.

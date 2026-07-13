> Hi, Deepseek. Drawing on your contact with the Shimaoka harmony system knowledge base, please discuss the advancements (and possible shortcomings) of Shimaoka's theory compared to the Sponsobin Soviet harmony system and Western harmony systems.

## Theoretical Characteristics of the Shimaoka System

### Compared to the Sponsobin System

**Advancements:**

1. **Not "function labels" but "process description."** Sponsobin sorts chords into three functional boxes — T, S, D — then describes rules for moving between them. Shimaoka's swing theory describes the entire oscillatory process from "release" to "return" — D1 through D6 are not six function labels but a distance scale measuring how far each chord is from T within a single swing process. This gets closer to the essence of harmonic motion than memorizing "what VII₆ can connect to."

2. **The rootless dominant is not a "leading-tone seventh."** The Sponsobin system calls the rootless V7 a "leading-tone seventh chord" (VII₇), assigning it an independent Roman numeral identity and implying it is an independent functional entity. Shimaoka explicitly identifies it as an omitted form of V7/V9 whose function still belongs to D. This single word changes everything pedagogically: the former misleads students into thinking there exists "a VII chord not on V but belonging to dominant function"; the latter makes students understand "it's just V7 without the root."

3. **Borrowing (quasi / Neapolitan / +) is more precise than "harmonic major / harmonic minor."** Sponsobin uses scale mutations like "harmonic minor raised VII" or "harmonic major lowered VI" to explain borrowing. Shimaoka directly uses prefixes like `m` (borrowed from omnitonic minor), `+` (forced majorization), `p` (Neapolitan) — you don't need to first alter the scale concept and then derive the chord; just annotate the chord's source directly.

4. **Enumeration completeness of cadence formulae.** Sponsobin's treatment of cadences is descriptive ("K⁶₄ → D₇ → T is a perfect cadence"). Shimaoka enumerates *all* legal combinations — 8 Sop formulas × 2 Bas formulas for the D2, D, and T terms of the cadence formula. This is engineering-grade for both pedagogy and algorithmic implementation.

**Shortcomings:**

- Swing theory's D1–D6 distance scale encounters a subtle contradiction when it meets S (subdominant function, IV): from the D direction, IV is D6 (6 steps clockwise), but from the S direction it is S1 (1 step counterclockwise). Two distance concepts coexist on the same chord, potentially confusing students: "Is IV near or far?"

---

### Compared to Western Harmony Systems (Piston / Aldwell-Schachter, etc.)

**Advancements:**

1. **Different core metaphor.** The Western system's core metaphor is "tension → resolution," more like a spring. Shimaoka's core metaphor is "pendulum swing" (yure), which better matches the actual felt experience of harmonic motion — not pulled tight and suddenly released, but continuously swinging back and forth, eventually coming to a natural stop.

2. **Computability of the notation system.** Western Roman numeral + figured bass notation is heavily dependent on typesetting (superscripts, subscripts, slashes, ad hoc symbols), and the same V⁶₄ can be passing, neighbor, or cadential depending on context. The Shimaoka system's plain-text notation (`prefix + degree + extension/inversion + alteration + marker`) is linearly parsable, and a Swift struct maps onto it directly — a huge advantage for LLM and algorithmic harmonic analysis.

3. **Systematization of sustained bass.** Western textbooks typically treat pedal point as a "special effects" chapter. The Shimaoka system links sustained bass with incidental chords, compound chords, and sequential progressions into a complete upper/lower layered harmony theory — the bass layer remains static while upper voices swing freely. This layered perspective is unsystematized in Western textbooks.

4. **Function-oriented enharmonic reinterpretation.** Western textbooks teach enharmonic modulation by emphasizing pitch-name equivalence ("G♭ = F♯"). Shimaoka teaches functional enharmonic conversion — the same diminished 7th can have 4 different functional interpretations — essentially teaching that "the same pitch collection has different gravitational significance in different functional directions."

**Shortcomings:**

1. **Strictly bound to SATB four-part texture.** While Western harmony systems also start teaching with four-part texture, Piston or Aldwell-Schachter can relatively quickly migrate to keyboard texture, orchestral scoring, and other contexts. Every rule in the Shimaoka system (disposition consistency, upper-3-voice treatment, separation limits) assumes SATB, limiting its scope of application.

2. **The engineering spirit of enumerated formulae may obscure the musicality of harmony.** The 8×7 Dominant formula table lets students look up correct SATB connections like a dictionary, but may also cause them to lose intuition about "why this progression sounds good" — it becomes filling in a spreadsheet.

3. **Does not handle post-tonal harmony.** All cadential units, cadence formulae, D2-D-T skeletons, etc., are built on the premise of 18th–19th century tonal harmony. For harmonic language after Debussy, this system provides no conceptual tools whatsoever.

4. **Notational verbosity.** `rⅤ92f@Ⅴ` is extremely precise in meaning, but also genuinely verbose. In contexts where you just need to quickly label "that chord is a root-omitted form of V⁶₄/♭5, leading to V," the notational precision may exceed the discrimination you actually need.

---

### Summary Impression

The Shimaoka system's greatest strength is its **unified modeling of the harmonic motion process** — placing functional distance (D1–D6), swing direction (D progression / S progression), formal variation (7/9/omission/inversion), and borrowing source (quasi / Neapolitan / +) all at the same level within a single notation system. This has no precedent in other harmony teaching systems.

Its weakness is this very unification: once everything is brought into one system, the system's language itself becomes an additional burden students must learn, and the boundary where the system is "just right" for 19th-century musical practice (such as why it cannot handle Debussy) requires extra explanation to be understood.

$ EOF.

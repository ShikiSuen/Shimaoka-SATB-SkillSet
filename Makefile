.PHONY: all amalgamated amalgamated-hans amalgamated-en clean

# --- Simplified Chinese (original) ---
SKILL_HANS_DIR  := shimaoka-harmony
SKILL_HANS_SRC  := $(SKILL_HANS_DIR)/SKILL.md
AMALGAMATED_HANS := $(SKILL_HANS_DIR)/_SKILL-Amalgamated.md
REFS_HANS_DIR   := $(SKILL_HANS_DIR)/references

# --- English ---
SKILL_EN_DIR  := shimaoka-harmony-en
SKILL_EN_SRC  := $(SKILL_EN_DIR)/SKILL.md
AMALGAMATED_EN := $(SKILL_EN_DIR)/_SKILL-Amalgamated.md
REFS_EN_DIR   := $(SKILL_EN_DIR)/references

# --- Build all ---
all: amalgamated

# --- Convenience: build both ---
amalgamated: amalgamated-hans amalgamated-en

# --- Rebuild the Simplified Chinese amalgamated markdown ---
amalgamated-hans: $(AMALGAMATED_HANS)

$(AMALGAMATED_HANS): $(SKILL_HANS_SRC) $(shell ls $(REFS_HANS_DIR)/*.md | sort)
	@echo "---" > $@
	@echo "name: shimaoka-harmony" >> $@
	@echo "description: >" >> $@
	@echo "  东京艺术大学岛冈让体系四声体和声学教学。涵盖四声体写作、和音分析、" >> $@
	@echo "  曳动(ゆれ)理论、曳动单位(カデンツ)、功能体系、终止定型、D定型、" >> $@
	@echo "  转调/借用/转旋、反复进行、偶成和音与保续低音等内容。" >> $@
	@echo "  使用此skill当用户询问和声写作、四声体配置、和音连接、功能进行、" >> $@
	@echo "  转调技法、终止式、或任何与岛冈让体系和声学相关的问题时。" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(SKILL_HANS_SRC) | sed '1,/^---$$/d' >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/notation-syntax.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/chord-system.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/voice-leading.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/cadence.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/d-formation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/modulation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/d-chords.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/s-chord.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/ornamentation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/sequence.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/nonchord.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/rules.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_HANS_DIR)/examples.md >> $@

# --- Rebuild the English amalgamated markdown ---
amalgamated-en: $(AMALGAMATED_EN)

$(AMALGAMATED_EN): $(SKILL_EN_SRC) $(shell ls $(REFS_EN_DIR)/*.md | sort)
	@echo "---" > $@
	@echo "name: shimaoka-harmony-en" >> $@
	@echo "description: >" >> $@
	@echo "  Tokyo University of the Arts — Shimaoka Yuzuru System of Four-Part Harmony." >> $@
	@echo "  Covers SATB part-writing, chord analysis, swing (yure) theory, cadential units," >> $@
	@echo "  functional harmony, cadence formulae, Dominant patterns, modulation/borrowing/" >> $@
	@echo "  enharmonic reinterpretation, sequential progressions, incidental chords, and" >> $@
	@echo "  sustained bass. Use this skill when the user asks about harmony writing," >> $@
	@echo "  four-part texture, chord connection, functional progression, modulation" >> $@
	@echo "  techniques, cadences, or any topic related to the Shimaoka system of harmony." >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(SKILL_EN_SRC) | sed '1,/^---$$/d' >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/notation-syntax.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/chord-system.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/voice-leading.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/cadence.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/d-formation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/modulation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/d-chords.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/s-chord.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/ornamentation.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/sequence.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/nonchord.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/rules.md >> $@
	@echo "" >> $@
	@echo "---" >> $@
	@echo "" >> $@
	@cat $(REFS_EN_DIR)/examples.md >> $@

# --- Clean generated files ---
clean:
	rm -f $(AMALGAMATED_HANS) $(AMALGAMATED_EN)

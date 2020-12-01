.PHONY: archives-2021

ARCHIVES = ../../test-comp/archives-2021/2021

archives-2021: $(ARCHIVES)/cmaesfuzz.zip

FILES = \
	fuzzer \
	fuzzer.py \
	cma \
	README.md \
	LICENSE \
	verifiers_bytes \
	verifiers_real

$(ARCHIVES)/cmaesfuzz.zip: $(FILES)
	@echo $@
	@mkdir -p $(ARCHIVES)/cmaesfuzz
	@find -type d -name __pycache__ | xargs rm -r
	@cp -r $(FILES) $(ARCHIVES)/cmaesfuzz
	@(cd $(ARCHIVES); zip cmaesfuzz.zip -r cmaesfuzz)

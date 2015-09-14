INFILES = $(shell find . -name "*.src.html")
OUTFILES = $(INFILES:.src.html=.html)

all: $(OUTFILES)

%.html: %.src.html
	m4 -PEIinc $< > $@

clean:
	rm -f $(OUTFILES)

PHONY: all clean

# Draft Makefile. You will need:
# - mmark (https://github.com/miekg/mmark)
# - xml2rfc (https://xml2rfc.tools.ietf.org/)

DRAFT=hzhang-dprive-update-over-tls
VERSION=01

XML=$(DRAFT).xml
HTML=$(DRAFT)-$(VERSION).html
TXT=$(DRAFT)-$(VERSION).txt

.PHONY: clean

all: $(HTML) $(TXT) 


$(HTML): $(XML) ; xml2rfc --html -o $@ $<
$(TXT): $(XML) ; xml2rfc --text -o $@ $<

clean: ; rm $(XML) $(HTML) $(TXT)

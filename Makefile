BIN_DIRECTORY      = $(HOME)/bin
SERVICES_DIRECTORY = $(HOME)/Library/Services

WORKFLOW = convert-odt-to-docx-service.workflow/
SCRIPT   = convert-odt-to-docx.sh

# XXX: we could be smarter about overwriting the destination if it already
#      exists.
install:
	cp $(SCRIPT) $(BIN_DIRECTORY)
	cp -r $(WORKFLOW) $(SERVICES_DIRECTORY)

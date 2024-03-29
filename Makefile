DOCKER=docker
KIBOT_IMAGE=setsoft/kicad_auto:ki6

PRJ_ROOT=/projects
BUILD_DIR=$(PRJ_ROOT)/build

CONF_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kibot.yaml
SCH_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kicad_sch
PCB_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kicad_pcb
OUT_DIR=$(PRJ_ROOT)/build

KIBOT_CMD_PREFIX=$(DOCKER) run --rm -it -v ${CURDIR}:/kicad $(KIBOT_IMAGE) kibot -c $(CONF_FILE) -e $(SCH_FILE) -b $(PCB_FILE) -d $(OUT_DIR) -s all

all:
	$(DOCKER) run --rm -it -v $(CURDIR):$(PRJ_ROOT) $(KIBOT_IMAGE) kibot -c $(PRJ_ROOT)/xdevrf03/xdevrf03.kibot.yaml -e $(PRJ_ROOT)/xdevrf03/xdevrf03.kicad_sch -b $(PRJ_ROOT)/xdevrf03/xdevrf03.kicad_pcb -d $(OUT_DIR)/xdevrf03
	$(DOCKER) run --rm -it -v $(CURDIR):$(PRJ_ROOT) $(KIBOT_IMAGE) kibot -c $(PRJ_ROOT)/xdevstm01/xdevstm01.kibot.yaml -e $(PRJ_ROOT)/xdevstm01/xdevstm01.kicad_sch -b $(PRJ_ROOT)/xdevstm01/xdevstm01.kicad_pcb -d $(OUT_DIR)/xdevstm01
	$(DOCKER) run --rm -it -v $(CURDIR):$(PRJ_ROOT) $(KIBOT_IMAGE) kibot -c $(PRJ_ROOT)/brkcan01/brkcan01.kibot.yaml -e $(PRJ_ROOT)/brkcan01/brkcan01.kicad_sch -b $(PRJ_ROOT)/brkcan01/brkcan01.kicad_pcb -d $(OUT_DIR)/brkcan01

clean:
	rm -rf "$(CURDIR)/build"

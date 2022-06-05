DOCKER=docker
KIBOT_IMAGE=setsoft/kicad_auto:dev_k6

PRJ_ROOT=/kicad
PRJ_NAME=esp-light-controller
CONF_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kibot.yaml
SCH_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kicad_sch
PCB_FILE=$(PRJ_ROOT)/$(PRJ_NAME).kicad_pcb
OUT_DIR=$(PRJ_ROOT)/build

KIBOT_CMD_PREFIX=$(DOCKER) run --rm -it -v ${CURDIR}:/kicad $(KIBOT_IMAGE) kibot -c $(CONF_FILE) -e $(SCH_FILE) -b $(PCB_FILE) -d $(OUT_DIR) -s all

all: build-dir build/xdevrf03
	echo "KiCAD projects build complete"

build-dir:
	mkdir $(OUT_DIR)/build

build/%:
	echo "xdev"

# %:
# 	echo $@

clean:
	rm -rf $(OUT_DIR)

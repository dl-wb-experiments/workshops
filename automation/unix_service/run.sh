#!/bin/bash

docker stop workbench
docker rm workbench

USER_HOME_DIR=/home/workbench
FULL_WORKSHOP_PATH=${USER_HOME_DIR}/.workbench/workshop

rm -rf ${FULL_WORKSHOP_PATH}
git clone https://github.com/dl-wb-experiments/workshops.git ${FULL_WORKSHOP_PATH}

chmod -R 777 ${FULL_WORKSHOP_PATH}

source ${USER_HOME_DIR}/venv/bin/activate
openvino-workbench --image openvino/workbench:latest_release_2022.1 --assets-directory ${USER_HOME_DIR}/.workbench

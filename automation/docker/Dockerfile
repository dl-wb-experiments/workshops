FROM openvino/workbench_private:latest_release_2022.1

USER root

RUN apt update && \
    apt install git -y && \
    apt clean

USER workbench

ADD workshops/2022_opentalksai_nlp/requirements.txt /nlp_requirements.txt

RUN source ${NOTEBOOKS_VENV}/bin/activate && \
    pip install -r /nlp_requirements.txt

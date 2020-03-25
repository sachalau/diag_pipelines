FROM continuumio/miniconda3:4.3.27

RUN conda config --add channels defaults && conda config --add channels conda-forge && conda config --add channels bioconda

RUN useradd -r -u 1080 pipeline_user

RUN apt-get install -y fontconfig

RUN conda install snakemake=5.0.0

ENV main=/home/pipeline_user

ENV pipeline_folder=${main}/snakemake_pipeline

RUN git clone https://github.com/metagenlab/diag_pipelines $pipeline_folder

RUN mkdir /opt/conda/envs/

ENV conda_folder=/opt/conda/envs/

RUN mkdir /home/pipeline_user/

USER pipeline_user

WORKDIR /home/pipeline_user/



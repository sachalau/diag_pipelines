FROM continuumio/miniconda3:4.3.27

RUN conda config --add channels defaults && conda config --add channels conda-forge && conda config --add channels bioconda

RUN useradd -r -u 1080 pipeline_user

RUN apt-get install -y fontconfig

RUN conda install snakemake=5.0.0

ENV main=/home/pipeline_user

ENV pipeline_folder=${main}/snakemake_pipeline

RUN git clone https://github.com/metagenlab/diag_pipelines --branch ReSeqWho $pipeline_folder

RUN mkdir /opt/conda/envs/

ENV conda_folder=/opt/conda/envs/

WORKDIR /home/pipeline_user/

RUN snakemake --snakefile ${pipeline_folder}/workflows/full_pipeline.rules --config --use-conda --conda-prefix ${conda_folder} references/538048/genome_gbwithparts.gbk

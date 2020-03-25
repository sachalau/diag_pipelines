FROM continuumio/miniconda3:4.3.27

RUN conda config --add channels defaults && conda config --add channels conda-forge && conda config --add channels bioconda

RUN useradd -r -u 1080 pipeline_user

RUN apt-get install -y fontconfig

RUN conda install snakemake=5.0.0

RUN conda install snpEff=4.3

RUN conda install entrez-direct=7.70

ENV main=/home/pipeline_user

ENV pipeline_folder=${main}/snakemake_pipeline

RUN git clone https://github.com/sachalau/diag_pipelines --branch ReSeqWho $pipeline_folder

RUN mkdir /opt/conda/envs/

ENV conda_folder=/opt/conda/envs/

WORKDIR /home/pipeline_user/

RUN mv snakemake_pipeline/example_local_samples.tsv .

RUN mv snakemake_pipeline/example_sra_samples.tsv .

RUN mkdir links

RUN snakemake --snakefile ${pipeline_folder}/workflows/reseqwho.rules --configfile ${pipeline_folder}/config.yml references/NC_000962.3/snpEff/data/NC_000962.3/snpEffectPredictor.bin


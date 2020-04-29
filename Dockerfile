FROM ubuntu:bionic

RUN apt -y -qq update

RUN DEBIAN_FRONTEND="noninteractive" apt -y -qq install wget unzip postgresql-client gcc llvm python3-pip libpq-dev git

RUN wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh

RUN bash ~/miniconda.sh -b -p /opt/miniconda/

ENV PATH /opt/miniconda/bin:$PATH

RUN conda config --add channels defaults && conda config --add channels conda-forge && conda config --add channels bioconda

RUN useradd -r -u 1080 pipeline_user

RUN wget -q "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -O "awscliv2.zip"

RUN unzip -qq awscliv2.zip

RUN ./aws/install

RUN rm -rf aws*

RUN pip3 install bcbio-gff biopython psycopg2 snakemake pandas

ENV pipeline_folder=/home/pipeline_user/snakemake_pipeline/

RUN git clone https://github.com/sachalau/diag_pipelines --branch ReSeqWho $pipeline_folder

ENV conda_folder=/opt/miniconda/envs/

WORKDIR /home/pipeline_user/

RUN mv snakemake_pipeline/example_local_samples.tsv .

RUN mv snakemake_pipeline/example_sra_samples.tsv .

RUN mkdir links

RUN snakemake --snakefile ${pipeline_folder}/workflows/reseqwho.rules --configfile ${pipeline_folder}/config.yml --conda-create-envs-only --use-conda --conda-prefix ${conda_folder} references/NC_000962.3/snpEff/data/NC_000962.3/snpEffectPredictor.bin samples/SRR000/genotyping/gatk/NC_000962.3/bwa/raw_deduplicated/snps_split_snpEff.vcf.gz samples/SRR000/genotyping/freebayes/NC_000962.3/bwa/raw_deduplicated/snps_split_snpEff.vcf.gz --cores 1 --config db_host="" db_name="" db_user=""
 
RUN snakemake --snakefile ${pipeline_folder}/workflows/reseqwho.rules --configfile ${pipeline_folder}/config.yml --use-conda --conda-prefix ${conda_folder} references/NC_000962.3/snpEff/data/NC_000962.3/snpEffectPredictor.bin references/NC_000962.3/genome_fasta.fasta.bwt references/NC_000962.3/genome_fasta.dict --config db_host="" db_name="" db_user="" --cores 1

RUN chown -R pipeline_user /home/pipeline_user/

USER pipeline_user

ENTRYPOINT ["/home/pipeline_user/snakemake_pipeline/workflows/reseqwho.rules"]
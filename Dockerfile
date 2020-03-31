FROM continuumio/miniconda3:4.3.27

RUN conda config --add channels defaults && conda config --add channels conda-forge && conda config --add channels bioconda

RUN useradd -r -u 1080 pipeline_user

RUN conda install sra-tools=2.10 snakemake=5.0.0

RUN vdb-config --report-cloud-identity yes

RUN pip install bcbio-gff biopython

ENV pipeline_folder=/home/pipeline_user/snakemake_pipeline

RUN git clone https://github.com/sachalau/diag_pipelines --branch ReSeqWho $pipeline_folder

RUN mkdir /opt/conda/envs/

ENV conda_folder=/opt/conda/envs/

WORKDIR /home/pipeline_user/

RUN mv snakemake_pipeline/example_local_samples.tsv .

RUN mv snakemake_pipeline/example_sra_samples.tsv .

RUN mkdir links

RUN snakemake --snakefile ${pipeline_folder}/workflows/reseqwho.rules --configfile ${pipeline_folder}/config.yml --create-envs-only --use-conda --conda-prefix ${conda_folder} references/NC_000962.3/snpEff/data/NC_000962.3/snpEffectPredictor.bin samples/SRR000/genotyping/gatk/NC_000962.3/bwa/raw_deduplicated/snps_split_snpEff.vcf.gz

RUN snakemake --snakefile ${pipeline_folder}/workflows/reseqwho.rules --configfile ${pipeline_folder}/config.yml --use-conda --conda-prefix ${conda_folder} references/NC_000962.3/snpEff/data/NC_000962.3/snpEffectPredictor.bin references/NC_000962.3/genome_fasta.fasta.fai references/NC_000962.3/genome_fasta.fasta.bwt references/NC_000962.3/genome_fasta.dict

RUN chown -R pipeline_user /home/pipeline_user/

USER pipeline_user
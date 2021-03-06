.. _all_rules:

-----
Rules
-----

.. csv-table:: All rules in productions
   :header: "Location","Rule name"

   "annotation/prokka.rules"," annotate_with_prokka"
   "annotation/prokka.rules"," annotate_with_prokka_unfiltered_assembly"
   "annotation/prokka.rules"," create_blast_database_from_protein_sequences"
   "annotation/prokka.rules"," create_blast_database_from_contig_sequences"
   "annotation/prokka.rules"," remove_fasta_part_from_gff"
   "annotation/virulence.rules"," blast_virulence_protein_to_proteome_or_contigs"
   "annotation/virulence.rules"," remove_redundancy_from_blast_results"
   "annotation/virulence.rules"," extract_protein_sequences_from_blast_results"
   "annotation/virulence.rules"," add_description_to_blast_results"
   "annotation/virulence.rules"," merge_samples_summary"
   "assembly/spades.rules"," correct_error_paired_reads_with_spades"
   "assembly/spades.rules"," correct_error_single_reads_with_spades"
   "assembly/spades.rules"," assemble_genome_paired_reads_with_spades"
   "assembly/spades.rules"," assemble_genome_single_reads_with_spades"
   "core_genome/bed_creation.rules"," extract_core_genome_parsnp_from_ref"
   "downloading/fetch_references.rules"," get_refseq_urls_complete_genomes"
   "downloading/fetch_references.rules"," download_all_complete_genomes_fasta"
   "downloading/fetch_single_reference.rules"," download_reference_from_refseq"
   "downloading/fetch_single_reference.rules"," download_reference_from_nucleotide"
   "downloading/fetch_single_reference.rules"," get_strain_subvalue_identifier_reference"
   "downloading/fetch_single_reference.rules"," download_gff_for_reference_from_refseq"
   "downloading/fetch_virulence_factors.rules"," fetch_virulence_factors_from_uniprot_accessions"
   "downloading/linking_references_for_core_genome_schemes.rules"," link_reference_genome_for_cgMLST"
   "downloading/linking_references_for_core_genome_schemes.rules"," link_reference_genome_for_parsnp"
   "downloading/linking_references_for_core_genome_schemes.rules"," link_full_genome"
   "genotyping/freebayes_first_pass.rules"," genotype_with_freebayes_one_sample"
   "genotyping/freebayes.rules"," genotype_with_freebayes_for_resistance"
   "genotyping/freebayes.rules"," genotype_with_freebayes_on_all_samples"
   "genotyping/freebayes.rules"," genotype_with_freebayes_one_sample_second_pass"
   "genotyping/gatk.rules"," create_dictionary_for_reference"
   "genotyping/gatk.rules"," genotype_with_HaplotypeCaller_GATK_BP_RESOLUTION"
   "genotyping/gatk.rules"," merge_gvcf_files_with_GenomicsDBImport_GATK"
   "genotyping/gatk.rules"," merge_gvcf_files_with_CombineGVCFs_GATK"
   "genotyping/gatk.rules"," genotype_with_GenotypeGVCFs_GATK"
   "mapping/bwa.rules"," map_paired_reads_with_bwa"
   "mapping/bwa.rules"," map_single_reads_with_bwa"
   "mapping/bwa.rules"," filter_reads_on_quality"
   "mapping/bwa.rules"," remove_duplicates_from_mapping"
   "mapping/find_closest_genomes.rules"," sketch_kmers_complete_genomes_with_mash"
   "mapping/find_closest_genomes.rules"," calculate_distance_to_complete_genomes_with_mash"
   "mapping/find_closest_genomes.rules"," extract_closest_genomes_to_all_samples"
   "mapping/indexing_files.rules"," index_reference_fasta"
   "mapping/indexing_files.rules"," index_bam_file"
   "phylogeny/image_creation.rules"," convert_phylogeny_to_image_with_st"
   "phylogeny/image_creation.rules"," convert_phylogeny_to_image_no_st"
   "phylogeny/raxml.rules"," compute_phylogeny_with_raxml"
   "phylogeny/raxml.rules"," compute_phylogeny_bootstraps_with_raxml"
   "quality/assembly_filtering.rules"," copy_raw_assembly_to_reference_folder"
   "quality/assembly_filtering.rules"," extract_contig_coverage"
   "quality/assembly_filtering.rules"," filter_contigs_on_coverage"
   "quality/assembly_filtering.rules"," extract_contigs_longer_than_500bp"
   "quality/assembly_filtering.rules"," rename_contigs"
   "quality/contamination.rules"," calculate_distance_paired_reads_from_refseq_genomes_with_mash"
   "quality/contamination.rules"," calculate_distance_single_reads_from_refseq_genomes_with_mash"
   "quality/contamination.rules"," get_taxonomy_from_mash_results"
   "quality/contamination.rules"," format_distances_from_mash_results"
   "quality/contamination.rules"," format_tsv_to_xlsx_mash_results"
   "quality/contamination.rules"," merge_all_xlsx_mash_results"
   "quality/trimmomatic.rules"," trim_paired_reads_with_trimmomatic"
   "quality/trimmomatic.rules"," trim_single_reads_with_trimmomatic"
   "read_manipulation/get_reads.rules"," copy_fastq_paired_from_link"
   "read_manipulation/get_reads.rules"," copy_fastq_single_from_link"
   "read_manipulation/get_sras.rules"," download_sra_single"
   "read_manipulation/get_sras.rules"," download_sra_paired"
   "report_generation/fastqc.rules"," assess_quality_single_reads_with_fastqc"
   "report_generation/fastqc.rules"," assess_quality_paired_reads_with_fastqc"
   "report_generation/fastqc.rules"," unzip_fastqc_single"
   "report_generation/fastqc.rules"," unzip_fastqc_paired"
   "report_generation/multiqc.rules"," create_multiqc_report_for_assembly"
   "report_generation/multiqc.rules"," create_multiqc_report_for_mapping"
   "report_generation/prepare_files_for_multiqc.rules"," copy_result_files_mapping_paired"
   "report_generation/prepare_files_for_multiqc.rules"," copy_result_files_mapping_single"
   "report_generation/prepare_files_for_multiqc.rules"," copy_result_files_assembly"
   "report_generation/qualimap.rules"," assess_mapping_with_qualimap"
   "report_generation/quast.rules"," calculate_assembly_statistics_with_quast"
   "typing/mlst.rules"," determine_mlst"
   "typing/mlst.rules"," merge_mlst_from_all_samples"
   "typing/mlst.rules"," determine_mlst_reference_genome"
   "typing/mlst.rules"," generate_xlsx_file_from_mlst_results"
   "typing/snp_distance.rules"," distance_columns_to_matrix"
   "typing/snp_distance.rules"," compute_minimum_spanning_tree_with_st"
   "typing/snp_distance.rules"," compute_minimum_spanning_tree_no_st"
   "vcf_manipulation/calculate_differences.rules"," calculate_pairwise_distances_by_type"
   "vcf_manipulation/calculate_differences.rules"," get_pairwise_snps_positions_by_type"
   "vcf_manipulation/calculate_differences.rules"," calculate_distance_with_ref_by_type"
   "vcf_manipulation/calculate_differences.rules"," agregate_distances_from_joint_genotyping_by_type"
   "vcf_manipulation/create_alignment_for_phylogeny.rules"," merge_multiallelic_by_sample"
   "vcf_manipulation/create_alignment_for_phylogeny.rules"," extract_alternative_positions_and_unknown_positions"
   "vcf_manipulation/create_alignment_for_phylogeny.rules"," create_consensus_sequence_by_sample"
   "vcf_manipulation/create_alignment_for_phylogeny.rules"," concatenate_consensus_fasta_files_all_samples"
   "vcf_manipulation/extract_cgMLST.rules"," extract_cgMLST_regions_from_vcf"
   "vcf_manipulation/filtering.rules"," decompose_multiallelics_and_normalize"
   "vcf_manipulation/filtering.rules"," filter_on_coverage"
   "vcf_manipulation/filtering.rules"," filter_on_frequency_per_sample"
   "vcf_manipulation/filtering.rules"," extract_allele_by_type_from_gatk_gvcfs"
   "vcf_manipulation/filtering.rules"," extract_allele_by_type_from_freebayes_joint_genotyping"
   "vcf_manipulation/filtering.rules"," extract_core_genome_parsnp"
   "vcf_manipulation/indexing.rules"," compress_vcf"
   "vcf_manipulation/indexing.rules"," index_vcf"
   "vcf_manipulation/indexing.rules"," sort_vcf"
   "vcf_manipulation/splitting_merging.rules"," extract_sample_entry_from_vcf"
   "vcf_manipulation/splitting_merging.rules"," merge_all_samples_entries_into_vcf"
   "vcf_manipulation/splitting_merging.rules"," merge_all_vcf_freebayes_first_pass"
   "vcf_manipulation/splitting_merging.rules"," merge_freebayes_second_pass"
   "annotation/resistance/format_xlsx.rules"," convert_tsv_to_xlsx"
   "annotation/resistance/format_xlsx.rules"," merge_rgi_or_mykrobe_xlsx"
   "annotation/resistance/m_tuberculosis.rules"," create_reference_lists_from_databases"
   "annotation/resistance/m_tuberculosis.rules"," merge_nucleotides_and_codons_bed_files"
   "annotation/resistance/m_tuberculosis.rules"," extract_all_locus_tags"
   "annotation/resistance/m_tuberculosis.rules"," fetch_locus_tag_sequences_from_accession"
   "annotation/resistance/m_tuberculosis.rules"," remove_shift_from_fasta_sequences"
   "annotation/resistance/m_tuberculosis.rules"," shift_positions_from_genotype_vcf"
   "annotation/resistance/m_tuberculosis.rules"," apply_genotype_to_fasta"
   "annotation/resistance/m_tuberculosis.rules"," extract_mutated_positions"
   "annotation/resistance/m_tuberculosis.rules"," extract_reference_positions"
   "annotation/resistance/m_tuberculosis.rules"," format_resistance_results"
   "annotation/resistance/m_tuberculosis.rules"," add_translation_to_mutated_codons"
   "annotation/resistance/m_tuberculosis.rules"," format_mutated_nucleotides"
   "annotation/resistance/m_tuberculosis.rules"," merge_mutated_nucleotides_and_codons"
   "annotation/resistance/m_tuberculosis.rules"," merge_non_empty_results"
   "annotation/resistance/mykrobe.rules"," search_resistance_paired_reads_with_mykrobe"
   "annotation/resistance/mykrobe.rules"," search_resistance_single_reads_with_mykrobe"
   "annotation/resistance/mykrobe.rules"," generate_mykrobe_tsv_file_from_json_file"
   "annotation/resistance/rgi.rules"," search_resistance_with_rgi"
   "annotation/resistance/rgi.rules"," extract_resistance_from_ontology"
   "annotation/resistance/rgi.rules"," generate_rgi_tsv_file_from_json_file"
   "annotation/resistance/summarize_results.rules"," summary_csv_excel_file"
   "annotation/resistance/summarize_results.rules"," write_congruent_results_fasta"
   "annotation/resistance/summarize_results.rules"," merge_summary_xlsx_files"

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/silver_standard-data.R
\docType{data}
\name{rare_variant_based_silver_standard}
\alias{rare_variant_based_silver_standard}
\title{Silver standard based on rare variant association}
\format{a list of:
  1. table: a data.frame with
     column gene (with Ensembl ID, e.g. ENSG00000084754) ,
     column HPO (HPO term in the format HP:0000512),
     column EFO (e.g. EFO:0004207),
     column trait (trait name, e.g. trait)
  2. script_info: meta information on how data set is generated.}
\source{
\href{https://bitbucket.org/yanyul/rotation-at-imlab/src/master/analysis/fdr_power_specificity/data/gen_ewas_rare_variant_gene_list.R}{Source code generating this silver standard dataset}
}
\usage{
data(rare_variant_based_silver_standard)
}
\description{
Here, we focused on rare variant association evidence reported on height and lipid traits:
  1. low-density lipid cholesterol (LDL),
  2. high-density lipid cholesterol (HDL),
  3. triglycerides (TG),
  4. total cholesterol levels (high cholesterol)
In particular, we collected significant coding/splicing variants reported previously \href{https://www.nature.com/articles/nature21039}{Marouli et al 2017}
and kept variants with effect allele frequency < 0.01
(Table S6: ExomeChip variants with Pdiscovery <2e-07 in the European-ancestry meta-analysis (N=381,625)).
Similarly, we collected significant variants reported by \href{https://www.nature.com/articles/ng.3977}{Liu et al 2017}
(Table S12: Association Results for 444 independently associated variants with lipid traits) and filtered out variants with minor allele frequency < 0.01.
For the whole-exome sequencing study conducted in Finnish isolates \href{https://www.nature.com/articles/s41586-019-1457-z}{Locke et al 2019},
we extracted significant genes identified by a gene-based test using protein truncating variants
(Table S9: Gene-based associations from aggregate testing with EMMAX SKAT-O with P<3.88E-6)
and significant variants (Table S7: A review of all variants that pass unconditional threshold of P<5E-07 for at least one trait)
with gnomAD MAF < 0.01.
}
\examples{
data(rare_variant_based_silver_standard)
head(rare_variant_based_silver_standard$table)

}
\keyword{datasets}

#
# Make sure 'pdfunite' is on your path.
#

LDM-151.pdf:  LDM-151.tex sections/data_release_production_pipelines.tex sections/survey_data_quality_analysis.tex sections/alert_production_pipelines.tex sections/algorithmic_components.tex sections/abstract.tex sections/introduction.tex sections/preface.tex sections/software_primitives.tex sections/suit.tex figures/DMS-Architecture.pdf figures/drp_summary.png figures/measurement-matrix.pdf figures/drp_coaddition_and_diffim.png
	latexmk -bibtex -pdf -f LDM-151.tex


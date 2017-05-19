#
#

LDM-151.pdf:  LDM-151.tex sections/calibration_products.tex sections/data_release_production_pipelines.tex sections/alert_production_pipelines.tex sections/algorithmic_components.tex sections/introduction.tex sections/preface.tex sections/software_primitives.tex figures/DMS-Architecture.pdf figures/drp_summary.png figures/measurement-matrix.pdf figures/drp_coaddition_and_diffim.png
	latexmk -bibtex -pdf -f LDM-151.tex

cover: LDM-151.pdf

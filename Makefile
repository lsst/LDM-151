#
# Make sure 'pdfunite' is on your path.
#

DM_Applications_Design.pdf:  DM_Applications_Design.tex sections/data_release_production_pipelines.tex sections/survey_data_quality_analysis.tex sections/alert_production_pipelines.tex sections/algorithmic_components.tex sections/abstract.tex sections/introduction.tex sections/preface.tex sections/software_primitives.tex sections/suit.tex figures/DMS-Architecture.pdf figures/drp_summary.png figures/measurement-matrix.pdf
	latexmk -bibtex -pdf -f DM_Applications_Design.tex

cover: LDM-151.pdf

LDM-151.pdf: LDM-151-CoverPage.pdf DM_Applications_Design.pdf
	@ echo " "
	@ echo "  Make sure you've updated LDM-151-CoverPage.doc with "
	@ echo "  the changelog information and re-exported it as "
	@ echo "  LDM-151-CoverPage.pdf."
	@ echo " "

	@ pdfunite LDM-151-CoverPage.pdf DM_Applications_Design.pdf LDM-151.pdf && echo "Done. Docgen in LDM-151.pdf"

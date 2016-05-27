#
# Make sure 'pdfunite' is on your path.
#

DM_Applications_Design.pdf:  DM_Applications_Design.tex sections/data_release_production_pipelines.tex sections/SDQA_Pipelines.tex sections/alert_production_pipelines.tex sections/drp_algorithmic_components.tex sections/ap_algorithmic_components.tex sections/abstract.tex sections/introduction.tex sections/prefact.tex sections/software_primitives.tex sections/suit.tex
	latexmk -bibtex -pdf -f DM_Applications_Design.tex

cover: LDM-151.pdf

LDM-151.pdf: LDM-151-CoverPage.pdf DM_Applications_Design.pdf
	@ echo " "
	@ echo "  Make sure you've updated LDM-151-CoverPage.doc with "
	@ echo "  the changelog information and re-exported it as "
	@ echo "  LDM-151-CoverPage.pdf."
	@ echo " "

	@ pdfunite LDM-151-CoverPage.pdf DM_Applications_Design.pdf LDM-151.pdf && echo "Done. Docgen in LDM-151.pdf"

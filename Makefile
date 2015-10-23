#
# Make sure 'pdfunite' is on your path.
#

cover: LDM-151.pdf


LDM-151.pdf: LDM-151-CoverPage.pdf DM_Applications_Design.pdf
	@ echo " "
	@ echo "  Make sure you've updated LDM-151-CoverPage.doc with "
	@ echo "  the changelog information and re-exported it as "
	@ echo "  LDM-151-CoverPage.pdf."
	@ echo " "

	@ pdfunite LDM-151-CoverPage.pdf DM_Applications_Design.pdf LDM-151.pdf && echo "Done. Docgen in LDM-151.pdf"

.. image:: https://img.shields.io/badge/ldm--151-lsst.io-brightgreen.svg
   :target: https://ldm-151.lsst.io
.. image:: https://travis-ci.org/lsst/LDM-151.svg
   :target: https://travis-ci.org/lsst/LDM-151

########################################
Data Management Science Pipelines Design
########################################

LDM-151
=======

The LSST Science Requirements Document (the `LSST SRD`_) specifies a set of data product guidelines, designed to support science goals envisioned to be enabled by the LSST observing program. Following these guidelines, the details of these data products have been described in the LSST Data Products Definition Document (DPDD_), and captured in a formal flow-down from the SRD via the LSST System Requirements (LSR_), Observatory System Specifications (OSS_), to the Data Management System Requirements (DMSR_). LSST Data Management subsystem has the responsibility for design, implementation, deployment and execution of software pipelines necessary to generate these data products. This document, in conjunction with the UML Use Case model (LDM-134_), describes the design of the scientific aspects of those pipelines.

.. _LSST SRD: https://docushare.lsstcorp.org/docushare/dsweb/Get/LPM-17
.. _DPDD: https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-163
.. _LSR: https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-29
.. _OSS: https://docushare.lsst.org/docushare/dsweb/Get/LSE-30
.. _DMSR: https://docushare.lsst.org/docushare/dsweb/Get/LSE-61
.. _LDM-134: https://docushare.lsst.org/docushare/dsweb/Get/LDM-134

**Links**

- Accepted version on DocuShare: http://ls.st/LDM-151
- Live drafts: https://ldm-151.lsst.io
- GitHub: https://github.com/lsst/LDM-151


Building the PDF locally
========================

To build the PDF from the Latex source you need to have the LSST tex styles available.
The easiest way to do this is to clone the `lsst-texmf <https://github.com/lsst/lsst-texmf>`_ repository and set the ``$TEXMFHOME`` environment variable.

From the root directory of the checkout of this repository::

  git clone https://github.com/lsst/lsst-texmf
  export TEXMFHOME=`pwd`/lsst-texmf/texmf
  make

You can also put the ``lsst-texmf`` checkout in a more general location such that it can be shared across multiple documents.

Continuous integration
======================

LDM-151 is continuously integrated with `Travis CI <https://travis-ci.org/lsst/LDM-151>`_ and published to https://ldm-151.lsst.io.

Development branches are available from https://ldm-151.lsst.io/v.

# LDM-151: DM Applications Design

The LSST Science Requirements Document (the [LSST SRD](https://docushare.lsstcorp.org/docushare/dsweb/Get/LPM-17)) specifies a set of data product guidelines, designed to support science goals envisioned to be enabled by the LSST observing program. Following these guidelines, the details of these data products have been described in the LSST Data Products Definition Document ([DPDD](https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-163)), and captured in a formal flow-down from the SRD via the LSST System Requirements ([LSR](https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-29)), Observatory System Specifications ([OSS](https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-30)), to the Data Management System Requirements ([DMSR](https://docushare.lsstcorp.org/docushare/dsweb/Get/LSE-61)). LSST Data Management subsystem has the responsibility for design, implementation, deployment and execution of software pipelines necessary to generate these data products. This document, in conjunction with the UML Use Case model ([LDM-134](https://docushare.lsstcorp.org/docushare/dsweb/Get/LDM-134)), describes the design of the scientific aspects of those pipelines.

## Continuous Integration

LDM-151 is continuously integrated with [Travis CI](https://travis-ci.org/lsst/LDM-151) and published to [https://ldm-151.lsst.io](https://ldm-151.lsst.io).

Each branch is published:

- `master`: [https://ldm-151.lsst.io](https://ldm-151.lsst.io)
- Ticket Branch `tickets/DM-XYWZ`: `https://ldm-151.lsst.io/v/DM-XYWZ/`
- Other branches or tags: `https://ldm-151.lsst.io/v/(slug)/` where `(slug)` is the branch/tag name with `/` converted to `-`.

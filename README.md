# LDM-151: Large Synoptic Survey Telescope Data Management Applications Design

*Mario Juric, R.H. Lupton, T. Axelrod, J.F. Bosch, P.A. Price, G.P. Dubois-Felsmann, Z. Ivezic, A.C. Becker, J. Becla, A.J. Connolly, J. Kantor, K-T Lim, D. Shaw, for the LSST Data Management.*

The LSST Science Requirements Document (the LSST SRD) specifies a set of data product guidelines, designed to support science goals envisioned to be enabled by the LSST observing program.

View this document online at http://dm-applications-design.readthedocs.org/en/tickets-dm-3546/

## Building this document locally

Clone this repository,

```
git clone https://github.com/lsst-dm/dm_applications_design.git
cd dm_applications_design
```

Ensure that Sphinx is installed,

```
pip install sphinx
```

Build the HTML in `_build/`,

```
make html
```

## About readthedocs.org

A GitHub webhook triggers a documentation build at readthedocs.org.
Currently only the `tickets/DM-3546` branch is tracked, but in the future any branch can be built automatically.

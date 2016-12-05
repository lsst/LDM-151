#!/usr/bin/env python
from __future__ import print_function

import os
import lsst.afw.geom
import lsst.skymap
import matplotlib.patches
import matplotlib.pyplot


def makeRectangle(box, **kwds):
    box = lsst.afw.geom.Box2D(box)
    return matplotlib.patches.Rectangle(
        tuple(box.getMin()),
        box.getWidth(), box.getHeight(),
        **kwds
    )


def main():
    config = lsst.skymap.DiscreteSkyMap.ConfigClass()
    config.raList = [45.0]
    config.decList = [45.0]
    config.radiusList = [0.2]
    config.pixelScale = 1.0
    config.patchBorder = 500
    skymap = lsst.skymap.DiscreteSkyMap(config)
    tract = skymap[0]

    fig = matplotlib.pyplot.figure()
    axes = fig.add_axes([0, 0, 1, 1])
    for patch in tract:
        axes.add_artist(makeRectangle(patch.getOuterBBox(), facecolor='k', fill=True, alpha=0.2, linewidth=0))
    for patch, color in zip(tract, "rgbmcybrg"):
        kwds = dict(edgecolor=color, fill=False, linewidth=3)
        axes.add_artist(makeRectangle(patch.getInnerBBox(), linestyle=":", **kwds))
        axes.add_artist(makeRectangle(patch.getOuterBBox(), linestyle="--", **kwds))
    bbox = lsst.afw.geom.Box2D(tract.getBBox())
    bbox.grow(2*config.patchBorder)
    axes.set_xlim(bbox.getMinX(), bbox.getMaxX())
    axes.set_ylim(bbox.getMinY(), bbox.getMaxY())
    axes.xaxis.set_visible(False)
    axes.yaxis.set_visible(False)
    return fig


if __name__ == "__main__":
    fig = main()
    path = os.path.splitext(__file__)[0] + ".pdf"
    print("Saving figure to '%s'" % path)
    fig.savefig(path)

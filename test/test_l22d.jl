using FinEtools
using Test
using FinEtools.MeshLineModule:  L2blockx2D

xs = [0.0, 0.2, 0.5, 0.7, 1.0]
ys = [0.0, -0.2, -0.5, -0.7, -1.0]
fens, fes = L2blockx2D(xs, ys)
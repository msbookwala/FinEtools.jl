using FinEtools
using Test
using FinEtools.MeshLineModule:  L2blockx2D
using LinearAlgebra

xs = [1.0, 1.0, 1.0]
ys = [0.0, 1.0, 2.0]
fens, fes = L2blockx2D(xs, ys)
geom = NodalField(fens.xyz)
psi = NodalField(fill(1.0, count(fens), 1))
numberdofs!(psi)
femm = FEMMBase(IntegDomain(fes, GaussRule(1, 2)))
G = bilform_masslike(femm, geom, psi, DataCache(LinearAlgebra.I(1)))
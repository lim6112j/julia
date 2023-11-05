import Pkg
Pkg.add("DataFrames")
Pkg.add("RData")
Pkg.add("RDatasets")
using DataFrames
# using CSV
# iris = CSV.read("iris.csv")
using RData, RDatasets
showIn(x) = (show(x); println())
iris = dataset("datasets", "iris")
diamonds = load(joinpath(dirname(pathof(RDatasets)), "..", "data", "ggplot2", "diamonds.rda"))["diamonds"]
showIn(names(iris))
# showIn(eltypes(iris))
showIn(iris[iris[!, :Species].=="setosa", :])
showIn(combine(groupby(iris, :Species), df -> size(df, 1)))
df = DataFrame(A=[1, 2], B=[ℯ, π], C=["xx", "yy"])
showIn(df)
showIn(df[!, :A])
showIn(df[1, :])
showIn(df[1:2, :])

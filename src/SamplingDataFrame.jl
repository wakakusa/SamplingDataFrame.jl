module SamplingDataFrame

    # Write your package code here.
    using DataFrames,StatsBase

    export TestDataSetsNumbering,CreateTestDataSets

    #テストデータと検証用データを作成するためのサンプリングを行なう
    include("TestDataSetsNumbering.jl")
end

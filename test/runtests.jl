using SamplingDataFrame
using Test
using DataFrames

@testset "SamplingDataFrame.jl" begin
    # Write your tests here.
    #データセット作成
    x=1:10
    y1=2x
    y2=map(x->2x-1,x)
    label1=["a","a","a","b","b","b","b","c","c","c"]
    label2=["1","2","3","1","2","3","1","2","3","1"]
    df1=DataFrame(x=x,y1=y1,y2=y2,label1=label1,label2=label2)

    #行番号
    trainingdata,testdata=TestDataSetsNumbering(df1,PERCENTAGE=0.6)
    @test testdata==setdiff(1:size(df1,1),trainingdata)

    # データセット作成
    train,test=CreateTestDataSets(df1,PERCENTAGE=0.6)
    trainingdata=train[:,:x]
    testdata=setdiff(1:size(df1,1),trainingdata)
    @test test ==df1[testdata,:]
end

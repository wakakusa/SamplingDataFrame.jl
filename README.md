# SamplingDataFrame

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://wakakusa.github.io/SamplingDataFrame.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://wakakusa.github.io/SamplingDataFrame.jl/dev)
[![Build Status](https://github.com/wakakusa/SamplingDataFrame.jl/workflows/CI/badge.svg)](https://github.com/wakakusa/SamplingDataFrame.jl/actions)
[![Build Status](https://travis-ci.com/wakakusa/SamplingDataFrame.jl.svg?branch=master)](https://travis-ci.com/wakakusa/SamplingDataFrame.jl)
[![Coverage](https://codecov.io/gh/wakakusa/SamplingDataFrame.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/wakakusa/SamplingDataFrame.jl)
[![Coverage](https://coveralls.io/repos/github/wakakusa/SamplingDataFrame.jl/badge.svg?branch=master)](https://coveralls.io/github/wakakusa/SamplingDataFrame.jl?branch=master)


This package is Sampfing from DataFrame

## Function
TestDataSetsNumbering(DF::DataFrame,PERCENTAGE::Float64)  
>  DF:Dataset  
PERCENTAGE:Sampring Rate  

Return:Dict("TrainingNumbering","TestNumbering")  
>  TrainingNumbering:Row number for training data  
   TestNumbering:number for test data  

## Usage
### Make DataSet
x=1:10  
y1=2x  
y2=2x-1  
label1=["a","a","a","b","b","b","b","c","c","c"]  
label2=["1","2","3","1","2","3","1","2","3","1"]  
df1=DataFrame(x=x,y1=y1,y2=y2,label1=label1,label2=label2)  

### Sampling
index=TestDataSetsNumbering(df1,PERCENTAGE=0.6)  
trainingdata=df1[index["TrainingNumbering"],:]  
testdata=df1[index["TestNumbering"],:]  


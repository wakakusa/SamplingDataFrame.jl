# SamplingDataFrame
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


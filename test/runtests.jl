using SamplingDataFrame
using Base.Test

# write your own tests here
@test 1 == 2

#データセット作成
x=1:10
y1=2x
y2=2x-1
label1=["a","a","a","b","b","b","b","c","c","c"]
label2=["1","2","3","1","2","3","1","2","3","1"]
df1=DataFrame(x=x,y1=y1,y2=y2,label1=label1,label2=label2)

#ファイル表示まで一括
index=TestDataSetsNumbering(df1,PERCENTAGE=0.6)
trainingdata=df1[index["TrainingNumbering"],:]
testdata=df1[index["TestNumbering"],:]

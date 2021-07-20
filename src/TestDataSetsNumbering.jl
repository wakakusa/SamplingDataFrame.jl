"""
TestDataSetsNumbering(DF::DataFrame;PERCENTAGE::Float64=0.6)
    テストデータ作成用行番号と検証用データ作成用行番号を作成するためのサンプリングを行なう

## 引数
* `DF`:サンプリング対象のデータセット
* `PERCENTAGE`:サンプリング割合（デフォルト：0.6）

## 戻り値
* 学習用データセット作成用行番号と検証用データセット作成用行番号
"""

#
function TestDataSetsNumbering(DF::DataFrame;PERCENTAGE::Float64=0.6)
  #元データの行数を求める
  FullNumbering=size(DF,1)

  #学習用データの行番号を求める
  #Num(100分率)抽出するため、抽出対象行を作成
  TrainingNumbering=sample(1:size(DF, 1), Int(round(PERCENTAGE * size(DF, 1),RoundNearest)) ,replace=false, ordered=true)

  #評価用データの行番号を求める
  TestNumbering=setdiff(1:FullNumbering,TrainingNumbering)

  return TrainingNumbering,TestNumbering
end

"""
CreateTestDataSets(DF::DataFrame;PERCENTAGE::Float64=0.6)
    テストデータと検証用データを作成する

## 引数
* `DF`:サンプリング対象のデータセット
* `PERCENTAGE`:サンプリング割合（デフォルト：0.6）

## 戻り値
* 学習用データセットと検証用データセット
"""

#
function CreateTestDataSets(DF::DataFrame;PERCENTAGE::Float64=0.6)
  #元データの行数を求める
  TrainingNumbering,TestNumbering=TestDataSetsNumbering(DF,PERCENTAGE=PERCENTAGE)

  #評価用データの行番号を求める
  Train=DF[TrainingNumbering,:]
  Test=DF[TestNumbering,:]

  return Train,Test
end
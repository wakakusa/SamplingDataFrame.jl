#テストデータと検証用データを作成するためのサンプリングを行なう
function TestDataSetsNumbering(DF::DataFrame;PERCENTAGE::Float64=0.6)
  #元データの行数を求める
  FullNumbering=reshape(1:size(DF,1),size(DF,1),1)

  #学習用データの行番号を求める
  #Num(100分率)抽出するため、抽出対象行を作成
  TrainingNumbering=sample(1:size(DF, 1), Int(ceil(PERCENTAGE * size(DF, 1))) ,replace=false, ordered=true)

  #評価用データの行番号を求める
  TestNumbering=setdiff(FullNumbering,TrainingNumbering)

  result=Dict("TrainingNumbering"=>TrainingNumbering,"TestNumbering"=>TestNumbering)
end

/*
4.1 検索結果の加工
SELECT文だけに可能な装飾
・DISTINCTー重複行を除外する
結果表の中で内容が重複している行があれば、その重複を取り除いてくれます
SELECT DISTINCT 列名…
FROM テーブル名
・ORDER BYー結果を並べ替える
指定した列の値を基準として、検索結果を並べ替えて取得することができます
SELECT 列名… FROM テーブル名
ORDER BY 列名 並び順（並び順は、ASCまたはDESC）
昇順 ASC,降順 DESC
*/
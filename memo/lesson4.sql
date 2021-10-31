/*
4.1 検索結果の加工
SELECT文だけに可能な装飾

4.2 DISTINCTー重複行を除外する
結果表の中で内容が重複している行があれば、その重複を取り除いてくれます

SELECT DISTINCT 列名…
FROM テーブル名

4.3 ORDER BYー結果を並べ替える
指定した列の値を基準として、検索結果を並べ替えて取得することができます

SELECT 列名… FROM テーブル名
ORDER BY 列名 並び順（並び順は、ASCまたはDESC）
昇順 ASC,降順 DESC

4.4 OFFSET,FETCHー先頭から数行だけ取得する
並べ替えた結果の一部の行だけを得られれば良いケースの場合、
ORDER BY句に続けてOFFSET(先頭から除外したい行数を記述),
FETCH(取得したい行数を指定する)をつけることによって簡単に実現できる

SELECT 列名... FROM テーブル名
ORDER BY 列名...
OFFSET 先頭から除外する行数 ROWS
(FETCH NEXT 取得行数 ROWS ONLY)

ORDER BYと併用される事が多い機能

4.5 集合演算子
構造がよく似た複数のテーブルにSELECT文をそれぞれ送り、
その結果を組み合わせたい場合は、集合演算子WO活用することによって、
1つのSQL文で目的を達成する事ができる
集合演算とは、SELECT命令によって中種移した結果票を一つのデータの集合と捉え、
その結果同士を足し合わ背たり、共通部分を探したりといった様々な演算を行ってくれる仕組み

・UNIONー和集合を求める
2つのSELECT文をUNIONで繋いで記述すると、それぞれの検索結果を足し合わせた結果（和集合）が
返されます

SELECT 文1
UNION （ALL）※UNION ALLは重複行を全てそのまま返す
SELECT 文2

・EXCEPT/MINUSー差集合を求める
ある集合と別の集合の差。あるSELECT文の検索結果に存在する行から、別のSELECT文の検索結果に
存在する行WO差し引いた集合となります。
差集合を得るにはEXCEPT演算子を用います。

SELECT 文1
EXCEPT (ALL)
SELECT 文2

Oracle DBではEXCEPTの代わりにMINUSをいうキーワードを用います。
EXCEPT ALLHA、重複した行を1行にまとめずにそのまま返します。

・INTERSECTー積集合を求める
2つのSELECT文に共通する行を集めた集合です。

SELECT 列名… FROM テーブル名
INTERSECT (ALL)
SELECT 列名… FROM テーブル名

ORDER BY句の並び替え処理はDBMSにとってはかなり負荷のかかる作業である

・まとめ
SELECT文で取得したデータは、以下NOような様々な形に加工できる
- DISTINCT（重複行を除外する）
- ORDER BY (結果を並び替える)
- OFFSET FETCH（行を限定して取得する）
- UNION,EXCEPT/MINUS,INTERSECT（結果を集合演算する）

*/
/*
7.1 検査結果に基づいて表を操作する
・SELECTをネストする

WHERE 出金額 = (SELECT MAX(出金額)FROM 家計簿)

一般的にあるものがその内側に別のものを内包している状態を
ネスト構造や入れ子と呼ぶ
他のSQL文の一部分として登場するSELECT文のことを、
副問い合わせや副照会、またはサブクエリと呼びます
・副問い合わせとは
他のSQL文の一部分として登場するSELECT文。丸括弧で括って
記述する
・副問い合わせを習得するコツ
一つひとつの副問い合わせを部品として捉えてみる
個々のSQL文を1つずつ作り、後から組み立てる

副問い合わせが処理される仕組みを理解しておく
副問い合わせの代表的な3つのパターンを学んでおく

・副問い合わせが処理される仕組み

SELECT 費目, 出金額, FROM 家計簿
WHERE 出金額 = (SELECT MAX(出金額)FROM 家計簿)
↓
SELECT 費目, 出金額, FROM 家計簿
WHERE 出金額 = (結果)
↓
処理終了

まず、内側にあるSELECT文が実行されて結果に化ける
そして、外側のSQLが実行される

・副問い合わせのパターン
単一の値に化ける副問い合わせ
列挙された複数値に化ける副問い合わせ
表形式の複数値に化ける副問い合わせ

単一の値の代わりとして、副問い合わせの検索結果を用いる
複数の値の代わりとして、副問い合わせの検索結果を用いる
表の値の代わりとして、副問い合わせの検索結果を用いる

7.2 単一の値の代わりに副問い合わせを用いる
・単一行副問い合わせ
単一の値を記述するような場所であれば、基本的にどこでも記述する
事ができます。

検索結果が1行1列の1つの値となる副問い合わせを指す
SELECT文の選択列リストやFROM句,UPDATEのSET句、また1つの値との
判定を行うWHERE句の条件式などに記述する事ができる

・SET句で利用する
SET句で副問い合わせを利用する

・選択列リストで利用する
選択リストで副問い合わせを利用する
最初から全体を読もうとしても複雑でよくわからない時は、カッコを探す
*/


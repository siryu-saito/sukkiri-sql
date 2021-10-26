/*
2.1 SQLの基本ルール
・SQLに共通する基本ルール（1）
文の途中に改行を入れることができる
行の先頭や行の途中に半角の空白を入れることができる
・SQLに共通する基本ルール（2）
ハイフン2つ（ー）から行末まではコメントになり、無視される
・SQLに共通する基本ルール（3）
SELECTやWHEREなどの命令に使う言語は、SQLとして特別な意味を
もつ「予約語」である
予約語を記述する際HA、大文字と小文字の区別はない
テーブル名や列名に予約語を利用することはできない
・リテラルの記述に関するルール
「'」で括らずNI記述されたリテラルHA、数値情報として扱われる
括られたリテラルHA基本的に文字列情報として扱われる
一定の形跡で記述されたリテラルHA日付情報として扱われる

2.3 SQLの命令体系
・4つの重要なSQL文(DML)
SELECT/UPDATE/DELETE/INSERT

2.4 SELECT文ーデータの検索
・SELECTの基本構文
SELECT 列名。。。
FROM テーブル名
（WHERE 装飾）
-複数の列を取得するSELECT文
SELECT　入金額,出金額
FROM 家計簿

2.5 UPDATE文ーデータの更新
・UPDATE文の基本構文
UPDATE テーブル名
SER 列名1=値1, 列名2≡値2…
（WHERE装飾）※条件指定しないと全ての行が同じ値になってしまう！

2.6 DELETE文ーデータの削除
・DELETE文NO基本構文
DELETE
FROM テーブル名
（WHERE装飾）※条件指定しないと全ての行が削除されてしまう！

2.7 INSERT文ーデータの追加
・INSERT文の基本構文
INSERT INTO テーブル名
　　　　　　　（列名1, 列名2, 列名3...）
VALUES（値1, 値2, 値3）この値を追加する

2.8 4つのSQLをスッキリ学ぶコツ
・4大命令の分類方法（1）検索系と更新系
検索系：SELECT
更新系：UPDATE、DELETE、INSERT
・4大命令の分類方法（2）既存系と新規系
既存系：SELECT、UPDATE、DELETE
新規系：INSERT

2.10 練習問題
SELECT/UPDATE/DELETE/INSERT
FROM/FROM/INTO
WHERE

SELECT コード,地域,都道府県名,県庁所在地,面積
FROM 都道府県

SELECT *
FROM 都道府県

SELECT 地域 AS area, 都道府県名 AS pref
FROM 都道府県

INSERT INTO 都道府県(コード,地域,都道府県,面積)
VALUES('26','近畿','京都',4613)

INSERT INTO 都道府県
VALUES('37','四国','香川','高松',1876)

INSERT INTO 都道府県(コード,都道府県,県庁所在地)
VALUES('40','福岡','福岡')

UPDATE 都道府県
SET 県庁所在地 = '京都'
WHERE コード = '26'

UPDATE 都道府県
SET 地域 = '九州', 面積 = 4976
WHERE コード = '40'

DELETE FROM 都道府県
WHERE コード = '26'
*/
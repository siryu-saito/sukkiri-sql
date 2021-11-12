/*
・1章 練習問題
1-1
ファイル・DBMS・SQL・RDBMS・列・行
1-2
飲料水の自動販売機 → 商品在庫、商品金額、お金
1-3
SELECT * FROM 家計簿 WHERE 入金額 = 280000;
DELETE FROM 家計簿 WHERE 出金額 > 4000;
UPDATE 家計簿 SET メモ = 'カフェラテを購入'
WHERE 日付 = '2018-02-03';

・2章 練習問題
2-1
SELECT・UPDATE・DELETE・INSERT・FROM・INTO・WHERE

2-2
数値 - 整数値 INTEGER型
　　   小数 DECIMAL型,　REAL型
文字列 - 固定長 CHAR型(郵便番号や社員番号と格納するデータの桁数が決まっているもの)
　　　   可変長 VARCHAR型(氏名YA書籍名NADO格納するデータの桁数が変動するもの)
日付と時刻 - DATETIME型 DATA型 TIME型

2-3
SELECT コード, 地域, 都道府県名, 県庁所在地, 面積
FROM 都道府県
SELECT * FROM 都道府県
SELECT 地域 AS area, 都道府県名 AS pref FROM 都道府県
INSERT INTO 都道府県(コード, 地域, 都道府県名, 面積)
VALUES ('26', '近畿', '京都', 4613)
INSERT INTO 都道府県
VALUES ('37', '四国', '香川', '高松', 1876)
INSERT INTO 都道府県(コード, 都道府県名, 県庁所在地)
VALUES ('40', '福岡', '福岡')

2-4
UPDATE 都道府県 SET 県庁所在地 = '京都'
WHERE コード = '26'
UPDATE 都道府県 SET 地域 = '九州', 面積 = 4976
WHERE コード = '40'
DELETE FROM 都道府県
WHERE コード = '01'
*/
/*
5.1 式と演算子
「出金額 + 100」のような、結果が真や偽にならない式では
計算式と呼ぶ。
出金額 > 0 → true
出金額 + 100 → 3100

列名 : 列の内容がそのまま出力される
計算式 : 計算式の評価結果が出力される
固定値 : 固定値がそのまま出力される

5.2 さまざまな演算子
＋
数値＋数値
数値同士で足し算をする
日付＋数値
日付を指定日数だけ進める
ー
数値ー数値
数値同士で引き算をする
日付ー数値
日付を指定日数だけ戻す
日付ー日付
日付の差の日数を得る
*
数値*数値
/
数値/数値
||
文字列||文字列

・CASE演算子-値を変換する
CASE演算子は、列の値や条件式を評価し、その結果に応じて好きな値に
変換する事ができる。

CASE演算子の利用構文（1）
CASE 評価する列や式 WHEN 値1 THEN 値1の時に返す値
　　　　　　　　　　(WHEN 値1 THEN 値2の時に返す値)...
　　　　　　　　　　(ELSE デフォルト値)
END

CASE演算子の利用構文（2）
CASE WHEN 条件1 THEN 条件1の時に返す値
　　　(WHEN 条件2 THEN 条件2の時に返す値)...
　　　(ELSE デフォルト値)
END
※最初に一致したWHENが採用される
一致しない時はELSEGA採用される

5.3 さまざまな関数
全ての関数は「呼び出し時に指定した情報（引数）に対して、定められた処理
を行い、結果（戻り値）に変換する」

・関数について定められていること
名前：その関数の名前
引数：その関数を呼び出す際NI引き渡す情報
（関数によっては2つ以上の場合もある）
戻り値：その関数の呼び出し結果として得られる情報

・LENGTH関数の仕様
名前：LENGTH
引数：文字列が格納された列（または式）
戻り値：文字列の長さを表す数値

・関数の呼び出し
関数の名前（引数...）

関数はDBMSによって大きく異なる

5.4 文字列にまつわる関数
・LENGTH/LEN - 長さを得る
文字列の長さを調べてくれる関数。
SQL Serverでは、LENGTHの代わりにLEN関数を利用。

LENGTH → 文字列の長さを表す数値
LEN → 文字列の長さを表す数値

・TRIM - 空白を除去する
余計な空白を除去したい場合に便利に便利な関数
類似する機能を持つLIRIM関数やRTRIM関数がある

TRIM → 左右から空白を除去した文字列
LTRIM → 左側の空白を除去した文字列
RTRIM → 右側の空白を除去した文字列

・REPLACE - 指定文字を置換する
文字列の一部を別の文字列に置換する関数

REPLACE(置換対象の文字列, 置換前の部分文字列, 置換後の部分文字列)
→ 置換処理された後の文字列

・SUBSTRING/SUBSTR - 一部を抽出する
文字列の一部分だけを取り出したい場合

SUBSTRING(文字列を表す列, 抽出を開始する位置, 抽出する文字の数)
→ 抽出された部分文字列
SUBSTR(文字列を表す列, 抽出を開始する位置, 抽出する文字の数)
→ 抽出された部分文字列

・CONCAT - 文字列を連結する
文字列を連結するには、通常||演算子や+演算子を使いますが
環境によって使用する

5.5 数値にまつわる関数
ROUND - 指定桁で四捨五入
指定した位置で四捨五入の結果を返す関数

ROUND(数値を表す列, 有効とする桁数)
→ 四捨五入した値

・TRUNC - 指定桁で切り捨てる
四捨五入ではなく切り捨てをしたい場合

TRUNC(数値を表す列, 有効とする桁数)
→ 切り捨てた値

・POWER - べき乗を計算する
ある値のべき乗（2乗や3乗など）計算したい場合

POWER(数値を表す列, 何乗するかを指定する数値)
→ 数値を指定した回数だけ乗じた結果

5.6 日付にまつわる関数
SQLで現在の日付を得るには CURRENT_DATE関数
現在の時刻を得るには CURRENT_TIME関数を用います

CURRENT_DATE → 現在の日付（YYYY-MM-DD）
CURRENT_TIME → 現在の時刻（HH:MM:SS）

5.7 変換にまつわる関数
・CAST - データ型を変換する
ある型のデータを別の型として扱いたくなる場合

CAST(変換する値 AS 変換する型) → 変換後の値

・COALESCE - 最初に登場するNULLでない値を返す
COALESCE(列や式1, 列や式2, 列や式3...)
→ 引数のうち、最初に現れたNULLでない引数

複数の引数を受け取り、受け取った引数を左から順番にチェックし、
その中から最初に見つかったNULLでない引数を返す

*/
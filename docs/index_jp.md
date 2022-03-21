# Jader-mysql-docker

MySQL-Docker for Japanese Adverse Drug Event Report database (UNOFFICIAL)



# What's JADER

**JADER (医薬品副作用データベース)** とは、[独立行政法人医薬品医療機器総合機構(PMDA)](https://www.pmda.go.jp/english/about-pmda/outline/0005.html)がインターネット上で公開している医薬品の副作用報告に関するデータベースです。

JADERは以下の4つのcsvファイルで構成されています。 
- DEMO テーブル (患者の性別、年齢、体重など) 
- DRUG テーブル (使用した医薬品名など)
- REAC テーブル (副作用やその転起など),
- HIST テーブル (原疾患など). 

これらには標準化コード（MedDRAコード、ICD-10コード、ATCコードなど）は含まれていません。その代わり、副作用に関する情報は、MedDRA/Jの基本語（Preferred Term）で記載されています。全てのファイルの文字コードは[Shift JIS](https://en.wikipedia.org/wiki/Shift_JIS)です。.


# What's Jader-mysql-docker

Jader-mysql-dockerは、PMDAのホームページよりダウンロードされたJADERのcsvファイルをDocker-MySQLに取り込んでデータベースを構築するdocker-compose.ymlです。これを用いることで、JADERが取り込まれたMySQLデータベースを容易に構築することができます。

具体的な構築方法は[readme](https://github.com/haRimi-epi/Jader-mysql-docker#jader-mysql-docker)をご覧ください。

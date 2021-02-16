---
title: "日本でのCovid-19と経済活動"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: index.html
summary:
---

{% assign fig_loc = "./archives/20210216/Figures/" %}

## 最終アップデート：2021年2月16日
** 2月14日までのデータに基づく分析です。画像はクリックすると拡大します。
{% include link_to_code.html %}

{% include note.html content="ワクチン仮定の詳細を資料にまとめました。" %}
<!-- {% include note.html content="愛知県・福岡県の分析を追加しました。" %} -->

### 1. 東京での緊急事態宣言解除基準分析

{: align="center"}
|[![Tokyo_gradual_Y]({{ fig_loc }}Tokyo/Thresholds_jp.png)]({{ fig_loc }}Tokyo/Thresholds_jp.png)|

この図表のバックデータは[ここ](./archives/20210216/Figures/Tokyo/BackData_ThresholdsTokyo_20210216.xls)からダウンロードしてください。
<!--この図表のバックデータは<a href="https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/archives/20210209/Figures/Tokyo/BackData_Tokyo_20210209.xls">ここ</a>からダウンロードしてください。-->

出所: 著者達の計算による。<br>
注: 左のパネルは、基本シナリオ下での新規感染者数の推移。黒の縦実線が現在時点、点線が緊急事態宣言解除が想定されている3月第1週。赤（青）い実線は緊急事態宣言解除基準が400（150）人だった場合、その他の細い点線は解除基準人数を変更した場合。右のパネルは、それぞれの解除基準人数によってどのように１年後の累計死亡者数と総生産量が影響を受けるかを示す。シナリオの詳細についてはFujii and Nakata (2021)を参照。

- この図をどのように理解すべきなのかは、この資料[[感染症対策と経済活動の両立：コロナ危機終焉に向けて]](./files/Covid19OutputJapan_20210206.pdf){:target="_blank" rel="noopener"}と、この資料[[緊急事態宣言解除基準分析の解説・モデル分析活用の心得]](./files/Covid19OutputJapan_Note_20210206.pdf){:target="_blank" rel="noopener"}に詳細に記述してあります。

### 2. 東京での「今週末に緊急事態宣言解除した場合における、その後の制限緩和ペース」分析

{: align="center"}
|[![Tokyo_gradual_Y]({{ fig_loc }}Tokyo/GradualRecovery_jp.png)]({{ fig_loc }}Tokyo/GradualRecovery_jp.png)|

この図表のバックデータは[ここ](./archives/20210216/Figures/Tokyo/BackData_GradualRecoveryTokyo_20210216.xls)からダウンロードしてください。

出所: 著者達の計算による。

- この図をどのように理解すべきなのかは、先週のページ[[ここをクリック]](./tokyo_20210209.html#1-東京での緊急事態宣言解除後の経済促進ペース分析){:target="_blank" rel="noopener"}の解説を参考にして下さい。

### 3. 東京でのワクチン接種仮定の影響分析

{: align="center"}
|[![Tokyo_gradual_Y]({{ fig_loc }}Tokyo/VaccineVariation_jp.png)]({{ fig_loc }}Tokyo/VaccineVariation_jp.png)|

この図表のバックデータは[ここ](./archives/20210216/Figures/Tokyo/BackData_VaccineVariationTokyo_20210216.xls)からダウンロードしてください。

出所: 著者達の計算による。

- この図では、ワクチン接種の見通しがどのように東京での(1)感染者数の推移、(2)死亡者数と経済損失の関係に影響を与えるのかを示しています。3月第1週に現在の緊急事態宣言解除を仮定しています。
- 3つのワクチン接種仮定の詳細は、この資料[[ここをクリック]](./files/FujiiNakata_Vaccines_Slides_20210216.pdf){:target="_blank" rel="noopener"}をご覧ください。

<!-- ### 3. Covid-19の感染状況の条件付き予測

{: align="center"}
|[![Projection]({{ fig_loc }}VariablesProjection_jp.png)]({{ fig_loc }}VariablesProjection_jp.png)|

出所: 著者達の計算による。<br>
注1: “新規感染者数”: 1週間の新規感染者数。“経済活動”: 総生産量（参照レベルからの乖離）。“ワクチン接種”: ワクチンによる1週間の新規免疫獲得者。2本目の接種を受けた後に8割の確率で免疫が獲得できると仮定しています。その仮定では、ワクチンを週に400万本打つと週に160万人の人がワクチンによる免疫獲得をするという計算になります。詳しくは論文を参照して下さい。<br>
注2: 赤線:1年平均総生産量ロスが1.2%。黒線:1年平均総生産量ロスが1.65%。青線:1年平均総生産量ロスが2.5%。 -->

### 4. Covid-19とGDPの予測される関係

{: align="center"}
|[![TradeoffUB]({{ fig_loc }}BaselineTradeoffUBp_jp.png)]({{ fig_loc }}BaselineTradeoffUBp_jp.png)|

出所: 著者達の計算による。<br>
注1: 縦軸は12か月後までに予測されるコロナ感染による総死亡者数、横軸はこれから12か月間の総生産量のリファレンスからの平均乖離。上のパネルでは、最も濃い、次に濃いグレイのエリアはそれぞれ20パーセント、40パーセントの信頼区間を示す。また、最も薄い、次に薄いグレイのエリアはそれぞれ80パーセント、60パーセントの信頼区間を示す。<br>
注2: 黒線:直近の週。赤線:1週間前。青線:2週間前。

### 5. モデルの直近の予測精度

#### i. 1週間前に計算された現在までの予測

{: align="center"}
|    | 1週前の<br>"条件付き"予測値 | <br>実現値 | "条件付き"<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** | 15,033   |  10,370  | <span style="color: black; ">4,663</span> |
| **新規死亡者数** |   197  | 542  | <span style="color: red; ">-345</span> |

出所: 著者達の計算による。<br>
注1: (A)先週の時点でのモデルによる「1週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。

### 6. 過去まで遡ったモデルの予測精度検証

#### i. 1週間前に計算された現在までの予測

{: align="center"}
|[![ForecaseErrors]({{ fig_loc }}ForecastErrors_jp.png)]({{ fig_loc }}ForecastErrors_jp.png)|

出所: 著者達の計算による。<br>
注1:　それぞれの時点から1週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。<br>
注2: "5. モデルの直近の予測精度"の注２を参照。

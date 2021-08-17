---
title: "日本でのCovid-19と経済活動"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: nationwide.html
summary:
---

{% assign fig_loc = "./archives/20210817/Figures/" %}

## 最終アップデート：2021年8月17日
** 8月15日までのデータに基づく分析です。画像はクリックすると拡大します。
{% include link_to_code.html %}

### <!-- 1. Covid-19とGDPの予測される関係-->

<!--{: align="center"}
|[![TradeoffUB]({{ fig_loc }}BaselineTradeoffUBp_jp.png)]({{ fig_loc }}BaselineTradeoffUBp_jp.png)|

出所: 著者達の計算による。<br>
注1: 縦軸は12か月後までに予測されるコロナ感染による総死亡者数、横軸はこれから12か月間の総生産量のリファレンスからの平均乖離。上のパネルでは、最も濃い、次に濃いグレイのエリアはそれぞれ20パーセント、40パーセントの信頼区間を示す。また、最も薄い、次に薄いグレイのエリアはそれぞれ80パーセント、60パーセントの信頼区間を示す。<br>
注2: 黒線:直近の週。赤線:1週間前。青線:2週間前。-->

### 1. モデルの直近の予測精度

#### i. 1週間前に計算された現在までの予測

{: align="center"}
|    | 1週前の<br>「条件付き」予測値 | <br>実現値 | 「条件付き」<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** | 84,176 | 115,595 | <span style="color: red; ">-31,419</span> |
| **新規死亡者数** | 153 | 127 | <span style="color: black; ">26</span> |
| **重症者数** | 2,134 | 2,129 | <span style="color: black; ">5</span> |

出所: 著者達の計算による。<br>
注1: (A)先週の時点でのモデルによる「1週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。

### 2. 過去まで遡ったモデルの予測精度検証

#### i. 1週間前に計算された現在までの予測

{: align="center"}
|[![ForecaseErrors]({{ fig_loc }}ForecastErrors_jp.png)]({{ fig_loc }}ForecastErrors_jp.png)|

出所: 著者達の計算による。<br>
注1:　それぞれの時点から1週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。<br>
注2: "2. モデルの直近の予測精度"の注２を参照。


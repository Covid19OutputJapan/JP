---
title: "日本でのCovid-19と経済活動の関係"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: index.html
summary:
---

## 最終アップデート：2021年1月21日

図表の作成に用いたコードやデータファイルは[ここ](https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/_archives/).

### 1. Covid-19の感染状況の条件付き予測

{: align="center"}
|![Projection](./images/20210120/VariablesProjection.png)|

出所: 著者達の計算による。<br> 
注1: "New infections": 1週間の新規感染者数. "Output (deviation from reference level)": 総生産量（参照レベルからの乖離）. "Effective reproduction number": 実効再生産数. "Newly vaccinated persons": 1週間の新規免疫獲得者.<br> 
注2: 　赤線: 1年平均総生産量ロスが1.5%. 黒線: 1年平均総生産量ロスが2%.青線: 1年平均総生産量ロスが3%.

### 2. Covid-19とGDPの予測される関係

{: align="center"}
|![TradeoffUB](./images/20210120/BaselineTradeoffUBp.png)|

出所: 著者達の計算による。<br>
注1: 縦軸は12か月後までに予測されるコロナ感染による総死亡者数、横軸はこれから12か月間の総生産量のリファレンスからの平均乖離。上のパネルでは、最も濃い、次に濃いグレイのエリアはそれぞれ20パーセント、40パーセントの信頼区間を示す。また、最も薄い、次に薄いグレイのエリアはそれぞれ80パーセント、60パーセントの信頼区間を示す。<br>
注2: 黒線: 直近の週. 赤線: 1週間前. 青線: 2週間前.

### 3. モデルの直近の予測精度

#### i. 1週間前に計算された1週間先までの予測

{: align="center"}
|    | 1週前の<br>"条件付き"予測値 | 実現値 | "条件付き"<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** |  53,088  | 41,290   | <span style="color: black; ">11,798</span> |
| **新規死亡者数** |  723 |  445   | <span style="color: black; ">278</span> |

出所: 著者達の計算による。<br>
注1: (A)先週の時点でのモデルによる「1週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。

#### ii. 4週間前に計算された４週間先までの予測

{: align="center"}
|    | 4週前の<br>"条件付き"予測値 | 実現値 | "条件付き"<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** |  83,138  |  129,454  | <span style="color: red; ">-46,315</span> |
| **新規死亡者数** |   1,004 | 1,459      | <span style="color: red; ">-454</span> |

出所: 著者達の計算による。<br>
注1:　(A)4週間前の時点でのモデルによる「４週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。

### 4. 過去まで遡ってのモデルの予測精度検証

#### 新規陽性者数

{: align="center"}
|![ForecastErrorsN](./images/20210120/ForecastErrorsN.png)|

出所: 著者達の計算による。<br>
注1:　One-week horizonはそれぞれの時点から1週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。Four-week horizon はそれぞれの時点から4週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。
注2: "3. モデルの直近の予測精度"の注２を参照。

#### 新規死亡者数

{: align="center"}
|![ForecastErrorsD](./images/20210120/ForecastErrorsD.png)|

出所: 著者達の計算による。<br>
注1:　One-week horizonはそれぞれの時点から1週先までの新規死亡者のモデルの条件付き予測値とデータの実現値。Four-week horizon はそれぞれの時点から4週先までの新規死亡者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。
注2: "3. モデルの直近の予測精度"の注２を参照。

### 5. 今週のチャート

{: align="center"}
|![TradeoffUB](./images/20210120/ChartOfTheWeek.png)|

Source: 著者達の計算による。<br>
Note: 黒実線と灰色のファンチャートは図２と同じ。 赤実線はワクチン接種速度が基本シナリオの2倍の場合。

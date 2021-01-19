---
title: "Covid-19 and Output in Japan"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: index.html
summary:
---

## 毎週アップデート (最終アップデート：2021年1月20日)

図表の作成に用いたコードやデータファイルは[ここ](https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/_archives/).

### 1. Covid-19の感染状況の条件付き予測

{: align="center"}
|![Projection](./images/20210113/VariablesProjection.png)|

出所: 著者達の計算による。

### 2. Covid-19とGDPの予測される関係

{: align="center"}
|![TradeoffUB](./images/20210113/BaselineTradeoffUB.png)<br>![Tradeoff](./images/20210113/LaggedTradeoff.png)|

出所: 著者達の計算による。<br> 注: 縦軸は12か月後までに予測される総死亡者数、横軸はこれから12か月間の総生産量のトレンドからの乖離。上のパネルでは、最も濃い、次に濃いグレイのエリアはそれぞれ総死者数の20パーセント、40パーセントの信頼区間を示す。また、最も薄い、次に薄いグレイのエリアはそれぞれ総死者数の80パーセント、60パーセントの信頼区間を示す。

### 3. 条件付き予測における誤差

{: align="center"}
|![ForecastErrorsD](./images/20210113/ForecastErrorsD.png)<br>![ForecastErrorsN](./images/20210113/ForecastErrorsN.png)|

#### i. 1週先予測

{: align="center"}
|    | 実現値 | 1週前の<br> 予測値 | （条件付き）予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** |  42,882  |  24,646  | <span style="color: red; ">-18,236</span> |
| **新規死亡者数** |  347  |  314  | <span style="color: red; ">-33</span> |

#### ii. 4週先予測

{: align="center"}
|    | 実現値 | 4週前の<br> 予測値 | （条件付き）予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** |  106,619  |  82,444  | <span style="color: red; ">-24,175</span> |
| **新規死亡者数** |  1,264  |  998  | <span style="color: red; ">-266</span> |

出所: 著者達の計算による。

---
title: "日本でのCovid-19と経済活動"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: index.html
summary:
---

{% assign fig_loc = "./archives/20210205/Figures/" %}
<!-- csv files must be in the "_data" folder -->
{% assign datafile_oneweek = site.data.oneweek20210126 %}
{% assign datafile_fourweek = site.data.fourweek20210126 %}

## 最終アップデート：2021年2月5日

{% include link_to_code.html %}
<!--図表の作成に用いたコードやデータファイルは[ここ](https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/archives/)。-->

<!--
{% include note.html content="今週のトレードオフカーブは先週のトレードオフカーブと比べてかなり下がっています。理由は二つあります。一つは1月18日-24日での新規感染者がモデルの予測よりもやや少なかったこと。もう一つは、高齢者がワクチンを接種することによる平均致死率の減少を予測に反映させたことです。" %}
{% include note.html content="「５．今週のチャート」では、河野太郎氏がワクチン接種担当大臣に就任されたことへの期待を込めて、ワクチン接種楽観シナリオを提示しています。" %}
-->

### 1. 東京の緊急事態宣言解除シナリオ

{: align="center"}
|![Baseline]({{ fig_loc }}Tokyo/BaselineDecline_jp.png)|

出所: 著者達の計算による。<br>
注: 左のパネルは、基本シナリオ下での新規感染者数の推移。黒の縦実線が現在時点、点線が緊急事態宣言解除が想定されている3月第1週。赤（青）い実線は緊急事態宣言解除基準が500（250）人だった場合、その他の細い点線は解除基準人数を変更した場合。右のパネルは、それぞれの解除基準人数によってどのように今後1年の総死者数と総生産量が影響を受けるかを示す。シナリオの詳細についてはFujii and Nakata (2021)を参照。

### 2. Covid-19の感染状況の条件付き予測

{: align="center"}
|![Projection]({{ fig_loc }}VariablesProjection_jp.png)|

出所: 著者達の計算による。<br>
<!--注1: "New infections": 1週間の新規感染者数。 "Output (deviation from reference level)": 総生産量（参照レベルからの乖離）。 "Effective reproduction number": 実効再生産数。 "Newly vaccinated persons": 1週間の新規免疫獲得者。<br>-->
注1: “新規感染者数”: 1週間の新規感染者数。“経済活動”: 総生産量（参照レベルからの乖離）。“ワクチン接種”: ワクチンによる1週間の新規免疫獲得者。2本目の接種を受けた後に8割の確率で免疫が獲得できると仮定しています。その仮定では、ワクチンを週に400万本打つと週に160万人の人がワクチンによる免疫獲得をするという計算になります。詳しくは論文を参照して下さい。<br>
注2: 赤線:1年平均総生産量ロスが1.35%。黒線:1年平均総生産量ロスが1.65%。青線:1年平均総生産量ロスが2.5%。

### 3. Covid-19とGDPの予測される関係

{: align="center"}
|![TradeoffUB]({{ fig_loc }}BaselineTradeoffUBp_jp.png)|

出所: 著者達の計算による。<br>
注1: 縦軸は12か月後までに予測されるコロナ感染による総死亡者数、横軸はこれから12か月間の総生産量のリファレンスからの平均乖離。上のパネルでは、最も濃い、次に濃いグレイのエリアはそれぞれ20パーセント、40パーセントの信頼区間を示す。また、最も薄い、次に薄いグレイのエリアはそれぞれ80パーセント、60パーセントの信頼区間を示す。<br>
注2: 黒線:直近の週。赤線:1週間前。青線:2週間前。

### 4. モデルの直近の予測精度

#### i. 1週間前に計算された現在までの予測

<!--
{: align="center"}
<table>
  {% for row in datafile_oneweek %}
    {% if forloop.first %}
      <tr><th></th>
      <th> "Conditional"<br>forecast<br>from last week </th>
      <th> <br><br>Actual </th>
      <th> <br>"Conditional"<br>forecast error </th>
      </tr>
    {% endif %}
    <tr>
      {% for pair in row %}
        <td>
        {% if forloop.first %}
          <b>{{ pair[1] }}</b>
        {% else %}
          {% assign temp = pair[1] | plus:0 %}
          {% if temp > 0 %}
            <span style="color: black; ">{{ pair[1] }}</span>
          {% else %}
            <span style="color: red; ">{{ pair[1] }}</span>
          {% endif %}
        {% endif %}
        </td>
      {% endfor %}
    </tr>
  {% endfor %}
</table>
-->

{: align="center"}
|    | 1週前の<br>"条件付き"予測値 | <br>実現値 | "条件付き"<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** | 34,281   |  24,238  | <span style="color: black; ">10,043</span> |
| **新規死亡者数** |   449  | 637  | <span style="color: red; ">-190</span> |

出所: 著者達の計算による。<br>
注1: (A)先週の時点でのモデルによる「1週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。

<!--
#### ii. 4週間前に計算された現在までの予測

{: align="center"}
<table>
  {% for row in datafile_fourweek %}
    {% if forloop.first %}
    <tr><th></th>
    <th> "Conditional"<br>forecast<br>from 4 weeks ago </th>
    <th> <br><br>Actual </th>
    <th> <br>"Conditional"<br>forecast error </th>
    </tr>
    {% endif %}
    <tr>
      {% for pair in row %}
        <td>
        {% if forloop.first %}
          <b>{{ pair[1] }}</b>
        {% else %}
          {% assign temp = pair[1] | plus:0 %}
          {% if temp > 0 %}
            <span style="color: black; ">{{ pair[1] }}</span>
          {% else %}
            <span style="color: red; ">{{ pair[1] }}</span>
          {% endif %}
        {% endif %}
        </td>
      {% endfor %}
    </tr>
  {% endfor %}
</table>

{: align="center"}
|    | 4週前の<br>"条件付き"予測値 | <br>実現値 | "条件付き"<br>予測誤差 |
| ---- | ---- | ---- | ---- |
| **新規陽性者数** |  83,138  |  129,454  | <span style="color: red; ">-46,315</span> |
| **新規死亡者数** |   1,004 | 1,459      | <span style="color: red; ">-454</span> |

出所: 著者達の計算による。<br>
注1:　(A)4週間前の時点でのモデルによる「４週先までの死亡者または陽性者の条件付き予測値」と(B)データの実現値の比較。詳細はFujii and Nakata (2021)を参照。<br>
注2: モデルは総生産量を所与として新規感染者数・新規死亡者数を予測するが、総生産量そのものは予測しない。ここでは、実際の総生産量を知っていたという条件に基づいた予測（"条件付き予測"）と実現値を比較する。
-->

### 5. 過去まで遡ったモデルの予測精度検証

#### i. 1週間前に計算された現在までの予測

{: align="center"}
|![ForecaseErrors]({{ fig_loc }}ForecastErrors_jp.png)|

出所: 著者達の計算による。<br>
注1:　それぞれの時点から1週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。<br>
注2: "3. モデルの直近の予測精度"の注２を参照。

<!--
#### 新規陽性者数

{: align="center"}
|![ForecastErrorsN]({{ fig_loc }}ForecastErrorsN.png)|

出所: 著者達の計算による。<br>
注1:　One-week horizonはそれぞれの時点から1週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。Four-week horizonはそれぞれの時点から4週先までの新規陽性者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。<br>
注2: "3. モデルの直近の予測精度"の注２を参照。

#### 新規死亡者数

{: align="center"}
|![ForecastErrorsD]({{ fig_loc }}ForecastErrorsD.png)|

出所: 著者達の計算による。<br>
注1:　One-week horizonはそれぞれの時点から1週先までの新規死亡者のモデルの条件付き予測値とデータの実現値。Four-week horizonはそれぞれの時点から4週先までの新規死亡者のモデルの条件付き予測値とデータの実現値。詳細についてはFujii and Nakata (2021)を参照。<br>
注2: "3. モデルの直近の予測精度"の注２を参照。
-->

<!--
### 5. 今週のチャート

- 河野太郎氏がワクチン接種担当大臣に就任されたことへの期待を込めて、ワクチン接種楽観シナリオを提示しています。

{: align="center"}
|![TradeoffUB]({{ fig_loc }}ChartOfTheWeek_jp.png)|

出所: 著者達の計算による。<br>
注: 黒実線と灰色のファンチャートは図２と同じ。赤実線はワクチン接種速度が基本シナリオの2倍の場合。
-->

---
title: "Covid-19と経済活動の関係: 神奈川"
keywords: sample homepage
tags: [kanagawa]
sidebar: home_sidebar
permalink: kanagawa.html
summary:
---

{% assign fig_loc = "./archives/20210126/Figures/Kanagawa/" %}

## 最終アップデート：2021年1月26日

図表の作成に用いたコードやデータファイルは[ここ](https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/archives/).

<!--
神奈川の他のページへのリンク:
<table>
<tr>
{% assign cnt = 0 %}
{% for page1 in site.pages %}
    {% for tag1 in page1.tags %}
        {% if tag1 == "kanagawa" and page1.name != page.name %}
            <td><a href="{{page1.url | remove: "/" }}">{{page1.permalink}}</a></td>
            {% assign cnt = cnt | plus:1 %}
        {% endif %}
    {% endfor %}
{% endfor %}
</tr>
</table>
-->

### 1. 基本シナリオ

{: align="center"}
|![Baseline]({{ fig_loc }}BaselineDecline_jp.png)|

出所: 著者達の計算による。<br>
注: 左のパネルは、基本シナリオ下での新規感染者数の推移。赤い実線は緊急事態宣言解除基準が300人だった場合、その他の細い点線は解除基準人数を変更した場合。右のパネルは、それぞれの解除基準人数によってどのように今後6ヶ月の総死者数と総生産量が影響を受けるかを示す。シナリオの詳細についてはFujii and Nakata (2021)を参照。

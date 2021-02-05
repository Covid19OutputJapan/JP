---
title: "Covid-19と経済活動: 埼玉"
keywords: sample homepage
tags: [saitama]
sidebar: home_sidebar
permalink: saitama_latest.html
summary:
---

{% assign fig_loc = "./archives/20210202/Figures/Saitama/" %}

## 最終アップデート：2021年2月3日

{% include link_to_code.html %}

{% include link_to_others.html text='埼玉の過去のページへのリンク' tag='saitama' %}

<!--
埼玉の他のページへのリンク:
<table>
<tr>
{% assign cnt = 0 %}
{% for page1 in site.pages %}
    {% for tag1 in page1.tags %}
        {% if tag1 == "saitama" and page1.name != page.name %}
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
注: 左のパネルは、基本シナリオ下での新規感染者数の推移。赤（青）い実線は緊急事態宣言解除基準が100（50）人だった場合、その他の細い点線は解除基準人数を変更した場合。右のパネルは、それぞれの解除基準人数によってどのように今後1年の総死者数と総生産量が影響を受けるかを示す。シナリオの詳細についてはFujii and Nakata (2021)を参照。
<!--注: 左のパネルは、基本シナリオ下での新規感染者数の推移。赤（青）い実線は緊急事態宣言解除基準が200（50）人だった場合、その他の細い点線は解除基準人数を変更した場合。右のパネルは、それぞれの解除基準人数によってどのように今後6か月の総死者数と総生産量が影響を受けるかを示す。シナリオの詳細についてはFujii and Nakata (2021)を参照。-->

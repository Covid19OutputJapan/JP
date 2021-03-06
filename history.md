---
title: "改定履歴"
keywords: sample homepage
tags: [others]
sidebar: home_sidebar
permalink: history.html
summary:
---

## モデルのスペックと予測に用いた仮定の推移

### 2021年2月16日
- ワクチン接種見通し、そして高齢者にワクチンが普及することによる致死率低下プロセスを、微調整しました。最新の見通しはこの資料[[ここをクリック]](./files/FujiiNakata_Vaccines_Slides_20210216.pdf){:target="_blank" rel="noopener"}をご覧ください。

### 2021年2月9日
- コロナ動向に詳しい方々から、先週までの我々のワクチン接種仮定は楽観的なのではないかとの指摘を受けました。その指摘を受け、今週はワクチン接種仮定を以下のように変更しました。
<span style="color: red; ">「3月第１週からワクチン接種が本格的に始まり、約3か月で徐々に接種ペースが増加。5月末には<b>週300万<s>400万</s>本</b>ペースに到達する。」</span>
この変更と共に、高齢者が先にワクチン接種を受けることによる致死率低下のタイミングも多少遅らせました。

- 東京での再度緊急事態宣言発令基準を平均１日感染者数2000人から1750人に変更しました。

### 2021年2月2日
- 1月26日の都道府県別分析のコードに以下のようなミスがあったことが発見され、それを修正しました。
  - 具体的には、ワクチン接種ペースの仮定は「3月第1週から徐々に増加し、5月末に週400万本ペースに到達」なのですが、コードでは「3月第1週から徐々に増加し、4月第1週に週400万本ペースに到達」となっていました。今週のコードではそこを修正しました。
  - ワクチン接種仮定が先週のコードでは「意図していたより少し楽観的であった」ということです。「東京では、500人だと再度緊急事態宣言、250人だとそれは避けられる」という報道されている結果には全く影響ありません。

### 2021年1月26日

- 以下の二つの予測仮定を変更しました。
    1. 先週までは過去5か月の平均感染率を予測に使っていましたが、今週からは過去4か月の平均感染率を使用します。これは過去に遡ってのモデルの予測精度を様々な期間で分析した上での判断です。
    2. 高齢者が先にワクチン接種をすることにより、致死率が緩やかに減少していく仮定を致死率の予測パスに反映させました。具体的にどのようなパスにしたかに興味のある方は[公開しているコード](https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/tree/main/archives/20210126/)の3行目を見て頂くか、我々に直接連絡して下さい。

- 1.の変更はトレードオフカーブに大きな影響はありませんでしたが、2.の変更はトレードオフカーブを大きくシフトダウンさせています。

### 2021年1月21日

- 最初のバージョンをアップロード。

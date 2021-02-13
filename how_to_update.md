---
title: "How to update the website"
keywords: sample homepage
tags: [nationwide]
sidebar: home_sidebar
permalink: how_to_update.html
summary:
---

First draft: January 22, 2021

Last updated: February 12, 2021

Written by Takeki Sunakawa

{% include toc.html %}

- Teamviewerで作業する場合、手順0は必要ない

### 0. 必要なソフトウェアのインストール、その他の注意点

- (Windowsの場合)git for windowsを[ここ](https://gitforwindows.org/)からダウンロードする。インストールするとき、改行コードの自動変換指定は"checkout as-is, commit unix-style line endings"を選択。あとはすべてデフォルトでよい

- (Macの場合)ターミナルから`git --version`でインストールされているか確認

- 初めてgitを使う場合、

  ```
  git config --global user.name "FIRST_NAME LAST_NAME"
  git config --global user.email "MY_NAME@example.com"
  ```
  として名前、メールアドレスを設定

- `https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/`以下のファイルを

  ```
  git clone https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/
  ```
  などとしてダウンロードしておく

- マークダウンファイル(.mdファイル)を編集する際、文字コードは`utf-8, ja-JP`とすること。特にWindowsの場合に注意。

- 以下の説明で、今週の更新日付を`2021XXXX`、先週の更新日付を`2021YYYY`とする（ファイル、フォルダ名に使用）。また、ファイルおよびフォルダ名はダウンロードしたフォルダからの相対パス（たとえば、`/archives/2021XXXX/`は、`(ダウンロードしたフォルダ名)/Covid19OutputJapan.github.io/_archives/2021XXXX/`）

<!-- #### 1. MATLABを実行してFigureを作成

- `/_archives/2021XXXX/Main_Japan.m`をMATLABで実行して、Figure(.pngファイル)を`/image/2021XXXX`以下に保存

- コードやデータはすべて`/_archives/2021XXXX`に保存

<!--  - `/_archives/2021XXXX/Figure_JP.m`をMATLABで実行して、Figure(.pngファイル)を`/image/2021XXXX`以下に保存（日本語版サイトに使用） -->

### 1. トップページを編集

TBW

トップページには、東京＋全国の情報を表示することが多い。指示に従って作業する。

### 2. 全国および各都道府県毎に、先週のトップページをコピー、編集

- 全国の場合、`/2021YYYY.md`を`/nationwide.md`からコピーして作成し、以下のように変更

  - 6行目の
  ```
  permalink: nationwide.html
  ```
  を
  ```
  permalink: 2021YYYY.html
  ```
  に変更。これ以降、ここで新しく作った過去のページは編集しない。

- 都道府県別のトップページ（`tokyo_latest.md`など）も同様に作業する。変更後のファイル名は`tokyo_2021XXXX.md`とする。
  - ファイル名に従って、各都道府県別ページの上部に表示されているリンク（例えば、`東京の過去のページへのリンク`）が作成される。

### 3. 全国および各都道府県毎に、今週のトップページを編集

- 全国の場合、`/nationwide.md`を以下のように変更

  - （たとえば、`XXXX=0209`のとき）12-13行目?を以下のように変更。データの日付については指示に従う。
  ```
  ## 最終アップデート：2021年2月9日
  ** 2月7日までのデータに基づく分析です。画像はクリックすると拡大します。
  ```

  - 図へのリンクを変更。10行目が図が保存してあるフォルダのパスになっているので、それを変更
  ```
  assign fig_loc = "./archives/20210209/Figures/"
  ```

    - それぞれの図へのリンクは、例えば以下のようになっている。ファイル名（この場合、`VariablesProjection_jp.png`）が変更された場合のみ編集すればよい（図そのものの表示と、拡大表示用のリンク）
    ```
    |[![Projection]({{ fig_loc }}VariablesProjection_jp.png)]({{ fig_loc }}VariablesProjection_jp.png)|
    ```

  - 表の数値を変更。たとえば、
  ```
  |    | 1週前の<br>"条件付き"予測値 | <br>実現値 | "条件付き"<br>予測誤差 |
  | ---- | ---- | ---- | ---- |
  | **新規陽性者数** | 20,174   |  15,580  | <span style="color: black; ">4,594</span> |
  | **新規死亡者数** |   267  | 675  | <span style="color: red; ">-408</span> |
  ```
    - 予測誤差がマイナスの場合は、フォントの色を赤にする

  - 注にある数値にも注意する。たとえば、以下の数値は毎週変更される可能性が高い
  ```
  注2: 赤線:1年平均総生産量ロスが1.2%。黒線:1年平均総生産量ロスが1.65%。青線:1年平均総生産量ロスが2.5%。
  ```

### 4. サイドバー(`/_data/sidebars/home_sidebar.yml`)の更新

- `/_data/sidebars/home_sidebar.yml`の23行目?以降を次のように変更

  - `Latest`と`Last week`のリンクを上で作ったページ名に変更し、2週前のリンクを新しく加える

  - たとえば、`XXXX=0209`, `YYYY=0202`, `ZZZZ=0126`のとき（`January 26, 2021`のリンクが新しく加わった）
  ```
  - title: Nationwide
    output: web, pdf
    folderitems:
    - title: Latest
      url: /index.html
      output: web, pdf
      type: homepage
    - title: Last week
      url: /20210202.html
      output: web, pdf
      type: homepage
    - title: January 26, 2021
      url: /20210126.html
      output: web, pdf
      type: homepage
  ```

### 5. アップロード

- 以下のgitコマンドを実行
```
git add -A
git commit -m "update on 2021XXXX"
git push
```

- （特にWindowsの場合）`git add -A`で時間がかかる場合、`git add (更新したファイル)`とする

- 初回の`git push`で、githubのCovid19OutputJapanアカウントで認証手続きが必要な場合がある

<!-- ### Japanese version

#### 0.
- `https://github.com/Covid19OutputJapan/Covid19OutputJapan.github.io/JP/`以下のファイルを（`git clone`などで）ダウンロードしておく
  - English versionと同じ構造になっています

#### 1.
- 英語版サイトにある画像ファイルフォルダ`/Covid19OutputJapan.github.io/image/2021XXXX`を、日本語版サイト`/Covid19OutputJapan.github.io/JP/image/2021XXXX`に移動またはコピー

#### 2-5.
- 英語版サイトと同様の作業を行う
  - English versionのフォルダと混同しないように注意 -->

# software-engineering-lecture-workshop
ソフトウェア工学の課題を解く会です

## 目的
1. ソフトウェア工学の課題を解く
2. Haskellの基本的な構文を学ぶ
3. モナドを理解する
4. Haskellを好きになる

## 必要なもの
+ PC
+ ghc
+ (Agda)
+ 紙とペン
+ やる気

## 進め方
### Haskell入門
[Try Haskell](https://www.tryhaskell.org/) を補足を入れながら解説し，Haskellの基本を学んでから課題に取り組んでいきます.

具体的には，Try Haskellでは以下の事を学びます  

``` 数値計算，文字列，リスト，関数適用，タプル，let in，x:[]，高階関数，関数定義，パターンマッチ，asパターン ```

補足として，ラムダ式，型定義も説明します．

### 課題解答
ここからは各自で作業します．  

このrepositoryに課題の解答例と説明があるのでcloneしてghciで読み込みましょう

```
$ git clone https://github.com/maeken2010/ie-software-engineering-lecture-workshop.git
$ cd software-engineering-lecture-workshop
$ ghci
Prelude> :l report/1/1.1.hs
```

各自で実際に動かしながら，課題や解答を理解しましょう．


## 課題ページ
http://www.ie.u-ryukyu.ac.jp/~kono/lecture/software/index.html  
毎年ページは変わるみたいなので，新しい問題や消えた問題もいくつか出てきます．

## 資料
### Haskell
[Try Haskell](https://www.tryhaskell.org/)  
[Learn You a Haskell for Great Good!](  http://learnyouahaskell.com/chapters)

### Monad
[箱で考えるFunctor、ApplicativeそしてMonad](http://qiita.com/suin/items/0255f0637921dcdfe83b)  
[モナド、あるいは自己関手の圏におけるモノイド対象について](http://south37.hatenablog.com/entry/2014/04/20/%E3%83%A2%E3%83%8A%E3%83%89%E3%80%81%E3%81%82%E3%82%8B%E3%81%84%E3%81%AF%E8%87%AA%E5%B7%B1%E9%96%A2%E6%89%8B%E3%81%AE%E5%9C%8F%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8B%E3%83%A2%E3%83%8E%E3%82%A4%E3%83%89)

### Category
[Haskell/圏論](https://ja.wikibooks.org/wiki/Haskell/%E5%9C%8F%E8%AB%96)  
[圏論勉強会](http://nineties.github.io/category-seminar/)  

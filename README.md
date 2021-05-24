# アプリ名:Alist
![image](https://user-images.githubusercontent.com/78298470/119295942-02e97200-bc93-11eb-9c9a-7aca9cd76bfe.png)

# アプリ概要
朝活を始めたい・継続したい人に向けた
朝活する人のToDoリストが見れる、朝活記録・共有アプリケーションを制作しました。

# 本番環境
　https://alist-001.herokuapp.com/
 ## ID/Pass
ID: 

Pass: 

 ## テスト用アカウント
 メールアドレス : test@111
 
 パスワード : 111qqq

# 制作背景
コロナ禍で自分の人生や日々の習慣を振り返る人々が多くなりました。その中でも朝の時間を有効活用し、運動や勉強をする人が増えました。しかし、朝活することを決意しても継続できなかったり、何から始めれば良いのか分からない人が多いと思います。
そんな朝活を始める人や継続したい人に向けて、朝活をする人のToDoリストが見れる記録・共有アプリケーションを作成することで、朝活を始める人や継続できる人が増えると考えました。
以下のデータをもとに朝活に対する需要があると確信したため、制作することを決めました。

## SNS国内データ
(2021年３月総務省統計データ)
- 日本総人口.         : 1億2548万人
- 20代総人口          : 約1269万人 
- 20代instagram利用者 : 約600万(20代全体の約50%) 
                                    
## 100人アンケート
(20代対象 : instagramのDMを活用)
- 実際に朝活はしているか？ → はい(21%) / いいえ（79%）
- 朝活はした方が良いか？ → はい(83%) / しなくても良い(17%)
- →およそ62％の人に需要あり (約360万人)
				
# アプリ基本機能
## 新規登録画面
![Image from Gyazo](https://gyazo.com/54b1828588aa07f0a72607ec390c4312.gif)

## ログイン画面
![image from Gyazo](https://gyazo.com/5f2ba242ca408e4e7195416281f8d10a.gif)

## 投稿画面
![image from Gyazo](https://gyazo.com/ae4214dfe0e51b01b3a236a28dee48a5.gif)

## いいね機能
![image from Gyazo](https://gyazo.com/845027fb2a00d69a51fc782a3d135a4a.gif)

## コメント機能
![image from Gyazo](https://gyazo.com/1c7a318ecd50eed99eb6c002e3f71ed9.gif)

## ユーザーリスト
![image from Gyazo](https://gyazo.com/d0ee165c10b588dce1f0faf837190bb9.gif)

## 編集機能
![image from Gyazo](https://gyazo.com/3dc087d52e703c2344a624c5e4021527.gif)

## 削除機能
![image from Gyazo](https://gyazo.com/c64b4c3b5c99a3d98fdeb5c171b03812.gif)
											
# 使用技術
 ・Ruby
 
 ・Ruby on Rails
 
 ・JavaScript
 
 ・MySQL
 
 ・Github
 
 ・Heroku
 
# 工夫したポイント

①事前調査
需要があり、実際に利用してもらえるアプリを制作したかったため、日本のSNS利用者数をもとに100人にアンケートを取り、朝活の必要性を調査しました。

②シンプルなUI/UX
直感的にユーザーが操作できる分かりやすいUI/UXにすることを心掛けました。
また、いいね機能は太陽のアイコンを使用し、全体の色も「朝」をイメージした配色にしました。

# 苦労した点

①レイアウト
事前に作成した完成図の通りにレイアウトを書いても満足できないことが多く、納得のいくレイアウトができるまでにかなり時間がかかってしまいました。
1からビューを考える以外にも便利なgem等を活用することで開発時間の短縮につながったと思います。

②いいね機能


 
# 課題や今後実装したい機能						

# DB設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association
- has_many : alists
- has_many : comments
- has_many : likes

## alists テーブル

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| list1    | string     | null: false                    |
| list2    | string     | null: false                    |
| list3    | string     | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to : user
- has_many   : comments
- has_many   : likes

## comments テーブル

| Column     | Type         | Options                        |
| ---------- | ------------ | ------------------------------ |
| text       | text         | null: false                    |
| user       | references   | null: false, foreign_key: true |
| alist      | references   | null: false, foreign_key: true |

### Association
- belongs_to : user
- belongs_to : alist


## likes テーブル

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| alist    | references | null: false, foreign_key: true |

### Association
- belongs_to : user
- belongs_to : alist

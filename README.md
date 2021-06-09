# アプリ名		
Alist

# 概要
朝活する人のToDoリストが見れる投稿アプリケーションを作成しました。ユーザーを登録するとリストを投稿できるようになります。自身が投稿した内容は編集と削除をすることができます。他のユーザーが投稿した内容には、コメントやいいねをすることができます。

# 制作背景
コロナ禍で自分の人生や日々の習慣を振り返る人々が多くなりました。その中でも朝の時間を有効活用して運動や勉強をする人が増えました。しかし、朝活を決意したとしても継続できなかったり、何から始めれば良いのか分からない人が多いと思います。そんな朝活を始める人に向けて、朝活する他の人のToDoリストが見れるアプリケーションを活用することで、たくさんの朝活ToDoリストが見ることができます。

## 国内データ
(2021年３月総務省統計データ)
- 総人口              : 1億2548万人
- 20代総人口          : 約1269万人 
- 20代instagram利用者 : 約600万(約50%)                                     
## 100人アンケート
(20代対象)
- 実際に朝活はしているか？   : はい(21%) / いいえ（79%）
- 朝活はした方が良いか？    : はい(83%) / しなくても良い(17%)
- →およそ62％人に需要あり (約360万人)
				
# DEMO
## 新規登録画面
<<<<<<< Updated upstream
![image](https://user-images.githubusercontent.com/78298470/112436491-19557900-8d89-11eb-839b-093690ed4d78.png)
=======
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


# 使用技術(開発環境)

## バックエンド
Ruby,Ruby on Rails

## フロントエンド
JavaScript

## データベース
MySQL

## インフラ
Heroku

## ソース管理
GitHub,GitHub Desktop

## エディタ
VSCode
 
# 工夫したポイント

## ①事前調査
需要があり、実際に利用してもらえるアプリを制作したかったため、日本のSNS利用者数をもとに100人にアンケートを取り、朝活の必要性を調査しました。

## ②シンプルなUI/UX
直感的にユーザーが操作できる分かりやすいUI/UXにすることを心掛けました。
また、いいね機能は太陽のアイコンを使用し、全体の色も「朝」をイメージした配色にしました。
>>>>>>> Stashed changes

## ログイン画面
![image](https://user-images.githubusercontent.com/78298470/112436664-53bf1600-8d89-11eb-93b1-04322ad6d2c9.png)

## 投稿画面
![image](https://user-images.githubusercontent.com/78298470/112436786-7f420080-8d89-11eb-90d5-6b2e9c17a0de.png)
					
# 実装予定の内容	
- ・投稿一覧画面
- ・投稿編集・削除機能画面
- ・マイページ画面
- ・マイページ編集画面
- ・コメント機能
- ・いいね機能

# テーブル設計

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
- has_one  : mypage

## alists テーブル

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| list1    | string     | null: false                    |
| list2    | string     | null: false                    |
| list3    | string     | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- has_many   : comments
- belongs_to : user
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

## mypage テーブル

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| menu1    | string     | null: false                    |
| menu2    | string     | null: false                    |
| menu3    | string     | null: false                    |
| movie    | string     | null: false                    |

### Association

- belongs_to : user

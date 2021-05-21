# Alist
![image](https://gyazo.com/5bc9edca1a43bac0c97c3fe46bff79fa)

# アプリ概要
朝活を始めたい・継続したい人に向けた
朝活する人のToDoリストが見れる、朝活記録・共有アプリケーションを制作しました。

#制作背景
コロナ禍で自分の人生や日々の習慣を振り返る人々が多くなりました。その中でも朝の時間を有効活用し、運動や勉強をする人が増えました。しかし、朝活することを決意しても継続できなかったり、何から始めれば良いのか分からない人が多いと思います。
そんな朝活を始める人や継続したい人に向けた、朝活をする人のToDoリストが見れる記録・共有アプリケーションがあれば、朝活を始める人や継続できる人が増えると思いました。
以下のデータをもとに朝活に対する需要があると思いましたので制作することを決めました。

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
				
# DEMO
## 新規登録画面
![image](https://user-images.githubusercontent.com/78298470/112436491-19557900-8d89-11eb-839b-093690ed4d78.png)

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

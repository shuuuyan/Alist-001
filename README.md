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
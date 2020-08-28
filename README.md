# DB設計
## expendsテーブル
|Column|Type|Options|
|------|----|-------|
|date|datetime|null: false|
|subject|string|null: false|
|memo|string||
|money|integer|null: false|
### Association
- belongs_to :sbj_expend

## incomesテーブル
|Column|Type|Options|
|------|----|-------|
|date|datetime|null: false|
|subject|string|null: false|
|memo|string||
|money|integer|null: false|
### Association
- belongs_to :sbj_income

## sbj_expendsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :expends

## sbj_incomesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :incomes
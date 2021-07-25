class Soup < ActiveHash::Base
# アタマの数字(6)はフードカテゴリーと対応
  self.data = [
    {id: 61, name: "メニューを選ぶ", cal: ""},
    {id: 62, name: "味噌汁", cal: 180},
    {id: 63, name: "豚汁", cal: 280},
    {id: 64, name: "コーンポタージュスープ", cal: 250},
    {id: 65, name: "わかめスープ", cal: 230},
    {id: 66, name: "ユッケジャンスープ", cal: 630},
  ]
end
class Soup < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "味噌汁", cal: 180},
    {id: 3, name: "豚汁", cal: 280},
    {id: 4, name: "コーンポタージュスープ", cal: 250},
    {id: 5, name: "わかめスープ", cal: 230},
    {id: 6, name: "ユッケジャンスープ", cal: 630},
  ]
end
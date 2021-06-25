class Supplement < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "プロテイン", cal: 110},
    {id: 3, name: "栄養ドリンク", cal: 200},
    {id: 4, name: "ウィダーインゼリー", cal: 300},
  ]
end
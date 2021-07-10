class Supplement < ActiveHash::Base
# アタマの数字(12)はフードカテゴリーと対応
  self.data = [
    {id: 121, name: "メニューを選ぶ", cal: ""},
    {id: 122, name: "プロテイン", cal: 110},
    {id: 123, name: "栄養ドリンク", cal: 200},
    {id: 124, name: "ウィダーインゼリー", cal: 300},
  ]
end
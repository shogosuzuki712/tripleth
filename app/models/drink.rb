class Drink < ActiveHash::Base
# アタマの数字(7)はフードカテゴリーと対応
  self.data = [
    {id: 71, name: "メニューを選ぶ", cal: ""},
    {id: 72, name: "お茶", cal: 0},
    {id: 73, name: "水", cal: 0},
    {id: 74, name: "コーヒー(ブラック)", cal: 0},
    {id: 75, name: "コーヒー", cal: 90},
    {id: 76, name: "紅茶(ストレート)", cal: 160},
    {id: 77, name: "レモンティー", cal: 45},
    {id: 78, name: "牛乳", cal: 180},
    {id: 79, name: "豆乳", cal: 150},
    {id: 710, name: "ジュース", cal: 230},
    {id: 711, name: "果汁100%ジュース", cal: 190},
    {id: 712, name: "スポーツドリンク", cal: 260},
  ]
end
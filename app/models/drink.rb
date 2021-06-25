class Drink < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "お茶", cal: 0},
    {id: 3, name: "水", cal: 0},
    {id: 4, name: "コーヒー(ブラック)", cal: 0},
    {id: 5, name: "コーヒー", cal: 90},
    {id: 6, name: "紅茶(ストレート)", cal: 160},
    {id: 7, name: "レモンティー", cal: 45},
    {id: 8, name: "牛乳", cal: 180},
    {id: 9, name: "豆乳", cal: 150},
    {id: 10, name: "ジュース", cal: 230},
    {id: 11, name: "果汁100%ジュース", cal: 190},
    {id: 12, name: "スポーツドリンク", cal: 260},
  ]
end
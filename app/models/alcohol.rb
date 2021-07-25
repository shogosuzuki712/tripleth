class Alcohol < ActiveHash::Base
# アタマの数字(11)はフードカテゴリーと対応
  self.data = [
    {id: 111, name: "メニューを選ぶ", cal: ""},
    {id: 112, name: "ビール", cal: 180},
    {id: 113, name: "日本酒", cal: 150},
    {id: 114, name: "ウイスキー", cal: 130},
    {id: 115, name: "焼酎", cal: 180},
    {id: 116, name: "ワイン", cal: 160},
    {id: 117, name: "甘酒", cal: 180},
  ]
end
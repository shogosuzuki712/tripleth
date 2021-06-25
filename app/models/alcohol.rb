class Alcohol < ActiveHash::Base
  self.data = [
    {id: 1, name: "メニューを選ぶ", cal: ""},
    {id: 2, name: "ビール", cal: 180},
    {id: 3, name: "日本酒", cal: 150},
    {id: 4, name: "ウイスキー", cal: 130},
    {id: 5, name: "焼酎", cal: 180},
    {id: 6, name: "ワイン", cal: 160},
    {id: 7, name: "甘酒", cal: 180},
  ]
end
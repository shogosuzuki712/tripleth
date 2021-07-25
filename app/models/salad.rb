class Salad < ActiveHash::Base
# アタマの数字(4)はフードカテゴリーと対応
  self.data = [
    {id: 41, name: "メニューを選ぶ", cal: ""},
    {id: 42, name: "野菜サラダ(ドレッシングなし)", cal: 80},
    {id: 43, name: "野菜サラダ(ドレッシングあり)", cal: 150},
    {id: 44, name: "ツナ(トッピング)", cal: 65},
    {id: 45, name: "コーン(トッピング)", cal: 30},
    {id: 46, name: "海藻(トッピング)", cal: 20},
    {id: 47, name: "シーザーサラダ", cal: 350},
    {id: 48, name: "チョレギサラダ", cal: 300},
    {id: 49, name: "冷やしトマト", cal: 80},
    {id: 410, name: "ポテトサラダ", cal: 210}
  ]
end
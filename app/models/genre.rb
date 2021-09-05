class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: '--'},
    {id: 2, name: 'ダイエットメニュー'},
    {id: 3, name: 'トレーニング法'},
    {id: 4, name: '成功体験'},
  ]
end
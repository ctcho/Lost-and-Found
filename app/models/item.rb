class Item < ApplicationRecord
belongs_to :category

  def self.search(parameters)
    if Integer(parameters[:and_or]) == 0 #Search for ANY of the given conditions
      Item.where("title LIKE ? OR description LIKE ? OR category_id = ?",
      parameters[:title], parameters[:description], Integer(parameters[:category_id]))
    else
      Item.where("title LIKE ? AND description LIKE ? AND category_id = ?",
      parameters[:title], parameters[:description], Integer(parameters[:category_id]))
    end
  end
end

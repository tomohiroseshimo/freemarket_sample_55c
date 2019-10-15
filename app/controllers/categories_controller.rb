class CategoriesController < ApplicationController
  def index
    # カテゴリーコントロラーの記述はまだ他のところにかぶらないので適当に記述
    @parents = Category.all.order("id ASC").limit(10)

  end
end

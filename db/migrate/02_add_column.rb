class CreateRecipes < ActiveRecord::Migration

  def change
    add_column :recipes, :cook_time, :integer do |t|
      t.double :cook_time

    end
  end
end

  
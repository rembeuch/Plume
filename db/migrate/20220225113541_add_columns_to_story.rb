class AddColumnsToStory < ActiveRecord::Migration[7.0]
  def change
    add_column :stories, :max_age, :integer, :default => 12
    add_column :stories, :min_age, :integer, :default => 8
    add_column :stories, :universe_name, :string
    add_column :stories, :description, :string
    add_column :stories, :title, :string
    add_column :stories, :key, :string
  end
end

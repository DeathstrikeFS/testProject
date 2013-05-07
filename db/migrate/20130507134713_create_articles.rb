class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :art_title
      t.string :subtitle
      t.date :date_posted
      t.timestamp :time_posted
      t.integer :user_id
      t.integer :key_stage
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end

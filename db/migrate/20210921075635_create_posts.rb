class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :beer_name,      null: false, default: ""
      t.string :style,          null: false, default: ""
      t.text :description,      null: false
      t.integer :assessment_id, null:false
      t.string :bar_name,       null: false, default: ""
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.references :serie, foreign_key: true

      t.timestamps
    end
  end
end
class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :user, index: true, foreign_key: true
      t.string     :title
      t.string     :author
      t.string     :image
      t.text       :description
      t.timestamps
    end
  end
end

class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.text :title
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end

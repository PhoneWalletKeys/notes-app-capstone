class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :name
      t.text :content
      t.boolean :datetime

      t.timestamps
    end
  end
end

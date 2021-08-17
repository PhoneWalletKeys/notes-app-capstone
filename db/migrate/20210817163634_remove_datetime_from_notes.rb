class RemoveDatetimeFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :datetime, :boolean
  end
end

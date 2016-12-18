class AddValueToSubjectItemNotes < ActiveRecord::Migration
  def change
    add_column :subject_item_notes, :value, :integer
  end
end

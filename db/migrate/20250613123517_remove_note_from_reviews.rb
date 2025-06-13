class RemoveNoteFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :note, :integer
  end
end

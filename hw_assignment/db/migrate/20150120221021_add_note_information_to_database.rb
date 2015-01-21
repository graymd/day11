class AddNoteInformationToDatabase < ActiveRecord::Migration
  def change
  	add_column :notes, :note_title, :string
  	add_column :notes, :note_data, :text
  end
end

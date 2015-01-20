class AddNoteInformationToDatabase < ActiveRecord::Migration
  def change
  	add_column :notes, :note_title, :string 
  end
end

class Note < ActiveRecord::Base
	def change
		create_table :notes do |t|
			t.string :note_title
			t.timestamps
		end
	end
end

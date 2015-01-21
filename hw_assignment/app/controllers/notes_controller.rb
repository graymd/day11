class NotesController < ApplicationController
	def show
		@note = Note.find params[:id]
	end

	def new
		@note = Note.new
	end

	def create
		@note = Note.create que_params
		redirect_to root_path
	end

	def edit
		@note = Note.find params[:id]
	end

	def update
		@note = Note.find params[:id]
		@note.update_attributes que_params
		redirect_to root_path
	end

	def destroy
		@note = Note.find params[:id]
		@note.destroy
		redirect_to root_path
	end


	private
	def que_params
		params.require(:note).permit(:note_title,
			:note_data)
		
	end

end
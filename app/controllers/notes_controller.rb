class NotesController < ApplicationController
  before_action :authenticate_user, except: [:show, :index]


  def index
    notes = Note.all
    render json: notes.as_json
  end
 
  def show
    note_id = params["id"]
    note = Note.find(note_id)
    render json: note
  end

  def create
    note = Note.new(
      name: params["name"],
      content: params["body"],
      user_id: current_user.id,
    )
    if note.save
      render json: note.as_json
    else 
      render json: {errors: note.errors.full_messages}, 
      status: 422
    end
  end

  def update
    note_id = params["id"]
    note = Note.find_by(id: note_id)

    note.name = params["name"] || note.name
    note.content = params["content"] || note.content

    if note.save
      render json: note.as_json
    else
      render json: {errors: note.errors.full_messages}, 
      status: 422
    end
  end

  def destroy
    note_id = params[:id]
    note = Note.find_by(id: note_id)
    note.destroy
    render json: {message: "Note has been successfully destroyed!"}    
  end
end


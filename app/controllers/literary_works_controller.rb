class LiteraryWorksController < ApplicationController
  def show
    @literary_work = LiteraryWork.find(params[:id])
  end

  def index
    @literary_works = LiteraryWork.all
  end

  def new
    @work_types = [
      ['Short Story', 'short_story'],
      ['Poem', 'poem'],
      ['Hiaku', 'haiku'],
      ['Shayari', 'shayari'],
      ['Article', 'article']
    ]
  end

  def create
    @literary_work = LiteraryWork.new(params.require(:literary_work).permit(:title, :work_type , :literary_work))
    if @literary_work.save
     flash[:notice] = "The Literary work has been saved successfully"
    else
      flash[:notice] = "The Literary work could not be saved"
      render 'edit'
    end
  end

  def edit
    @literary_work = LiteraryWork.find(params[:id])

    @work_types = [
      ['Short Story', 'short_story'],
      ['Poem', 'poem'],
      ['Hiaku', 'haiku'],
      ['Shayari', 'shayari'],
      ['Article', 'article']
    ]
  end

  def update
    @literary_work = LiteraryWork.find(params[:id])
    if @literary_work.update(params.require(:literary_work).permit(:title, :work_type , :literary_work))  
      flash[:notice] = "The Literary work has been updated successfully"
    else
      flash[:notice] = "The Literary work could not be saved"
      render 'edit'
    end
  end

  def destroy
    @literary_work = LiteraryWork.find(params[:id])
    @literary_work.destroy 
    redirect_to literary_works_path
     
     
  end
end
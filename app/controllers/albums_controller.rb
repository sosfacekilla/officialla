class AlbumsController < ApplicationController

	def index
    @albums = Album.all
end
def show
    @album = Album.find(params[:id])
end
def new
    @album = Album.new
end
def edit
    @album = Album.find(params[:id])
end
def create
    @album = Album.create(params[:album])
    respond_to do |format|
      if @album.save
      #blah blah
     end
end
def update
    @album = Album.find(params[:id])
    respond_to do |format|
      if @album.update_attributes(params[:album])
        flash[:notice] = 'Album was successfully updated.'
      
      end
    end
end
def destroy
    @album = Album.find(params[:id])
    @album.destroy
end
end
#application_helper.rb
module ApplicationHelper
  def setup_album(album)
      returning(album) do |a|
        a.pictures.build if a.pictures.empty?
      end
    end
end
end

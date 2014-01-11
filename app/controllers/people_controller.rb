class PeopleController < ApplicationController

	def index
		@people = Person.all
	end


	def show
		@person=Person.find(params[:id])
	end


	def new
	end


	def create
		Person.create name: params[:name]
		redirect_to '/people'
	end



	def edit
		@person =Person.find(params[:id])
	end

	def update
		person = Person.find(params[:id])
		person.name = params[:name]
		person.save

		redirect_to '/people'
	end


	def destroy
		Person.delete(params[:id])
		redirect_to '/people'
	end


end

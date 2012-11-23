class VisitorController < ApplicationController

	def new
		@page_title = "Welcome!"
    respond_to do |format|
			format.html
    end
	end

	def specialization
		@page_title = "Specializing in " + fillInWord( params[:specialization] )
		@layout = 'layouts/' + params[:specialization]
    respond_to do |format|
      format.js
    end
	end

	def navbar
		@page_title = fillInWord( params[:link] )
		@layout_left = 'layouts/' + params[:link] + "_left"
		@layout_right = 'layouts/' + params[:link] + "_right"
    respond_to do |format|
      format.js
    end
	end

	private

	def fillInWord (ajaxData)
		if ajaxData == 'trauma'
			return 'Trauma'
		elsif ajaxData == 'anxiety'
			return 'Anxiety'
		elsif ajaxData == 'borderline'
			return 'Borderline Personality Disorder'
		elsif ajaxData == 'grief'
			return 'Grief and Loss'
		elsif ajaxData == 'life'
			return 'Life Tranisitions'
		elsif ajaxData == 'relationship'
			return 'Relationship Issues'
		elsif ajaxData == 'home'
			return 'Welcome!'
		elsif ajaxData == 'why_therapy'
			return 'Why Therapy?'
		elsif ajaxData == 'about_me'
			return 'About Me'
		elsif ajaxData == 'contact'
			return 'Contact Information'
		end
	end

end


class Tool::String::LengthController < ApplicationController
  def create
    @tool = String::Length.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render 'tool/string/length/new'
    else
      render 'tool/string/length/new'
    end
  end
end

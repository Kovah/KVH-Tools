class Tool::String::TrimController < ApplicationController
  def create
    @tool = String::Trim.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render 'tool/string/trim/new'
    else
      render 'tool/string/trim/new'
    end
  end
end

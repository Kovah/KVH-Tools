class Tool::String::LengthController < ApplicationController
  def new
  end

  def create
    @tool = String::StringLength.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render "tool/string/length/new"
    else
      abort
    end
  end
end

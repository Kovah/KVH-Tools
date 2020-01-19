class Tool::Generate::YesNoController < ApplicationController
  def new
  end

  def create
    @tool = Generate::YesNo.new

    if @tool.valid?
      @output = @tool.run
      render 'tool/generate/yes_no/new'
    else
      render 'tool/generate/yes_no/new'
    end
  end
end

class Tool::Generate::UuidController < ApplicationController
  def create
    @tool = Generate::Uuid.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render 'tool/generate/uuid/new'
    else
      abort
    end
  end
end

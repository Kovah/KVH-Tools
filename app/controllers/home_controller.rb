class HomeController < ApplicationController
  def index
  end

  def test
    render "test"
  end

  def run
    @tool = String::StringLength.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render "test"
    else
      abort
    end
  end
end

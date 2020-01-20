class Tool::Convert::BinHexController < ApplicationController
  def new
  end

  def create
    @tool = Convert::BinHex.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render 'tool/convert/bin_hex/new'
    else
      render 'tool/convert/bin_hex/new'
    end
  end
end

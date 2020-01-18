class Tool::EncodeDecode::Base64Controller < ApplicationController
  def new
  end

  def create
    @tool = EncodeDecode::Base64.new(params[:tool])

    if @tool.valid?
      @output = @tool.run
      render 'tool/encode_decode/base64/new'
    else
      render 'tool/encode_decode/base64/new'
    end
  end
end

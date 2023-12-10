class HomeController < ApplicationController
  def index
    @error_message = params[:error_message]
    @avatar_url = params[:avatar_url]
  end


  def generate_avatar
    bio = params[:bio]
    openai_service = OpenaiService.new(ENV.fetch('OPENAI_API_KEY'))
    response = openai_service.generate_image(bio)

    if response['error']
      error_message = "OpenAI API error: #{response['error']['message']}"
      redirect_to root_path(error_message: error_message)
    else
      if response['data'].present? && response['data'].first['url'].present?
        avatar_url = response['data'].first['url']
        redirect_to root_path(avatar_url: avatar_url)
      else
        error_message = 'Failed to retrieve image URL'
        redirect_to root_path(error_message: error_message)
      end
    end
  end
end

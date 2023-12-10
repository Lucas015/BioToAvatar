class HomeController < ApplicationController
  def index
  end


  def generate_avatar
    bio = params[:bio]
    openai_service = OpenaiService.new(ENV.fetch('OPENAI_API_KEY'))
    response = openai_service.generate_image(bio)

    if response['error']
      @error_message = "OpenAI API error: #{response['error']['message']}"
    else
      if response['data'].present? && response['data'].first['url'].present?
        @avatar_url = response['data'].first['url']
      else
        @error_message = 'Failed to retrieve image URL'
      end
    end

    redirect_to root_path
  end
end

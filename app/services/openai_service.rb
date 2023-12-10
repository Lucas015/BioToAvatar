class OpenaiService
  include HTTParty
  base_uri 'https://api.openai.com/v1'

  def initialize(api_key)
    @headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Bearer #{api_key}"
    }
  end

  def generate_image(prompt, size = "1024x1024", n = 1, model = "dall-e-3")
    body = {
      model: model,
      prompt: prompt,
      n: n,
      size: size
    }

    self.class.post('/images/generations', headers: @headers, body: body.to_json)
  end
end

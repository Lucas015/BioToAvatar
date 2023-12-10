# Bio to Avatar

BioToAvatar is a simple Rails application that uses the OpenAI API to generate avatars based on provided text bios.

## Installation

To run the application locally you need to follow these steps:

1. Clone this repository:
   
   ```
    git clone https://github.com/Lucas015/BioToAvatar
   ```
2. Install dependencies: 
   
    ```ruby
    bundle install
    ```
3. Set up environment variables:
   
   You'll need to set the `OPENAI_API_KEY` environment variable with your OpenAI API key. Create a `.env` file at the root of your project:
   
    ```env
    OPENAI_API_KEY=your_openai_api_key_here
    ```
4. Run the rails server:
   
    ```ruby
    rails server
    ```
5. Access the application:
    
    Open your browser and navigate to `http://localhost:3000`

## Usage 

1. Enter a bio in the provided text area on the homepage.
2. Click on the "Generate Avatar" button.
3. If successful, the generated avatar will be displayed on top of the form.
4. Any errors encountered will be shown as error messages on the page.

## Tech Stack 

1. Rails 7: MVC framework for building web applications
2. OpenAI API: Used for generating avatars based on text inputs.
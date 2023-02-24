# Base image
FROM ruby:3.0.5

# Set up the working directory
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn 

# Copy Gemfile and Gemfile.lock
COPY Gemfile* ./

RUN yarn install

# Install gems
RUN bundle install

# Copy the rest of the application
COPY . .



# Start the server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

EXPOSE 3000
# Obtain credentials

Create the .env file

    cp env.example .env

Create API credentials at https://connect.roestcoffee.com/settings/api and
store them in the .env file.

# Run example code

    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    ./run.sh

# View OpenAPI schema

Start a swagger server that serves the specification dokcumentation:

    docker run -p 8080:8080 -e SWAGGER_JSON=/schema.yml -v ${PWD}/schema.yml:/schema.yml swaggerapi/swagger-ui

Open http://localhost:8080 in a browser.

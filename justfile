# List all available recipes
default:
    @just --list

# Initialize workspace and install turbo locally
setup:
    npm init -y
    npm install turbo --save-dev
    npx turbo --version

# Clean the project
clean:
    rm -rf node_modules dist build bin
    rm -rf **/node_modules **/dist **/__pycache__ **/build **/bin
    find . -type d -name "*.egg-info" -exec rm -rf {} +

# Install dependencies for all projects
install:
    npm install
    find . -name "requirements.txt" -exec pip install -r {} \;
    find . -name "go.mod" -exec sh -c 'cd $(dirname {}) && go mod download' \;

# Run turbo commands (usage: just turbo -- build)
turbo *args:
    npx turbo {{args}}

# Create new Backstage app
create-backstage:
    rm -rf apps/backstage
    cd apps && npx @backstage/create-app@latest --path backstage
    # After creation, modify for Turbo compatibility
    cd apps/backstage && npm pkg set scripts.dev="backstage-cli package start"
    cd apps/backstage && npm pkg set scripts.build="backstage-cli package build"
    cd apps/backstage && npm pkg set scripts.lint="backstage-cli package lint"
    cd apps/backstage && npm pkg set scripts.test="backstage-cli package test"
    cd apps/backstage && npm pkg set scripts.clean="backstage-cli clean"

# Create a new TypeScript app/package
new-ts name:
    mkdir -p {{name}}
    cd {{name}} && npm init -y
    cd {{name}} && npm install typescript @types/node --save-dev
    cd {{name}} && npx tsc --init

# Create a new Python package
new-py name:
    mkdir -p {{name}}
    cd {{name}} && python -m venv venv
    cd {{name}} && touch requirements.txt
    cd {{name}} && mkdir {{name}} tests

# Create a new Go package
new-go name:
    mkdir -p {{name}}
    cd {{name}} && go mod init {{name}}
    cd {{name}} && mkdir cmd pkg internal

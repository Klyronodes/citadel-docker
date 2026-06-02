# Start from the official image
FROM ghcr.io/paymenter/paymenter:latest

# Overwrite the app and public directories with your local versions
COPY ./Extras/Citadel/app /app/app
COPY ./Extras/Citadel/public /app/public

# Ensure the web server (nginx) still has ownership of the files
RUN chown -R nginx:nginx /app/app /app/public

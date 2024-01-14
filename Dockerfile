FROM python:3.13.0a2-bookworm
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip install pip==23.2 --no-cache-dir 
RUN pip install -U Flask
# Install application
COPY app.py ./
COPY app_test.py ./
# Run application
CMD python app.py

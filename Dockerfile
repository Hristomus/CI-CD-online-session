FROM python:3.13.0a2-bookworm
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
COPY app_test.py ./
# Run application
CMD python app.py

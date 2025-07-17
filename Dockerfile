FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN python -m pip install --upgrade pip --break-system-packages || true
EXPOSE 5000
CMD ["python", "app.py"]
# This Dockerfile sets up a Python Flask application in a Docker container.
# It uses a slim version of Python 3.9, copies the application files into the
# container, installs the required packages from requirements.txt, exposes port 5000,
# and runs the application using the command `python app.py`.
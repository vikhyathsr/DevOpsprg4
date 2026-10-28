#Using python as base
FROM python:latest

#Assining the directory
WORKDIR /app

#Copy and install the files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy all thge required files
COPY . .

#For using port
EXPOSE 5000

#command
CMD ["python",app.py"]
 

# backend
FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY model.h5 .
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]

#frontend
FROM node:20

WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]

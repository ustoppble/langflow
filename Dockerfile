# Usando uma imagem base Python
FROM python:3.9-slim

# Instalar dependências
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação
COPY . .

# Expor a porta
EXPOSE 7860

# Comando de start
CMD ["python", "-m", "langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
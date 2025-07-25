
FROM python:3.11-slim


WORKDIR /app


COPY requirments.txt .
RUN pip install --no-cache-dir -r requirments.txt

# Copy project files
COPY . .

# Expose Django’s default port
EXPOSE 8000

# Run Django dev server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

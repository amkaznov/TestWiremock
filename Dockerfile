FROM wiremock/wiremock:latest

# Копируем всё содержимое текущей директории в рабочую директорию Wiremock
# Если папка __files пустая и не попала в Git, эта команда просто 
# скопирует то, что есть (например, mappings), не вызывая ошибку.
COPY . /home/wiremock/

# На всякий случай убедимся, что структура папок существует
USER root
RUN mkdir -p /home/wiremock/mappings /home/wiremock/__files && \
    chown -R wiremock:wiremock /home/wiremock

USER wiremock

# Expose the default Wiremock port
EXPOSE 8080
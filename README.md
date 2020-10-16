# catalogo-django
CRUD de uma aplicação para web construída com Django

### env
```shell
$ pyenv local 3.7.4

$ pipenv shell

$ pipenv sync --dev
```

### c.ini
```ini
[settings]
DB_HOST = 127.0.0.1
DB_DATABASE = database_name
DB_USER = database_user_name
DB_PASSWORD = database_password
DB_OPTIONS = -c search_path = database_scheme

```

### run
```shell
$ python manage.py migrate
$ python manage.py runserver
```

### database
Execute o arquivo .sql para ter alguns dados nas tabelas



### detalhes
Esse projeto foi iniciado seguindo o [tutorial](https://docs.djangoproject.com/en/3.0/intro/tutorial01/) da documentação oficial do Django.

- Configuração da [engine](https://docs.djangoproject.com/en/3.0/ref/settings/#engine) do banco de dados no arquivo [settings.py](https://docs.djangoproject.com/en/3.0/ref/settings/#databases) 

- [Models](https://docs.djangoproject.com/pt-br/3.0/topics/db/models/) mapeando  tabelas existente no database 

- Configuração dos [templates](https://docs.djangoproject.com/en/3.0/topics/templates/) da aplicação

- Do [Form](https://docs.djangoproject.com/en/3.0/topics/forms/modelforms/) a [view](https://docs.djangoproject.com/en/3.0/topics/forms/#the-view) até chegar ao arquivo [html](https://docs.djangoproject.com/en/3.0/intro/tutorial04/#write-a-minimal-form)

- mais [tags e filtros](https://docs.djangoproject.com/en/3.0/ref/templates/builtins/) no tamplete

- Rota dos [arquivos estáticos](https://docs.djangoproject.com/en/3.0/howto/static-files/) (JavaScipt, CSS, imagens)

- Usando o [Crispy-forms](https://simpleisbetterthancomplex.com/tutorial/2018/11/28/advanced-form-rendering-with-django-crispy-forms.html) para melhorar visualmente os formulários 

- Sistema de [autenticação](https://docs.djangoproject.com/en/3.0/topics/auth/default/#using-the-views) do Django


#### References:
https://docs.djangoproject.com/en/3.0/

# django-py3
django for rock!


## Usage

### In development

```
docker run --name ${name} yuanxu/django-py3 -P -v ${path/to/your/code}:/var/www/app runserver_plus
```

### In production

*Upgrade*

```
cd ${path/to/your/code}
git pull
docker run --rm yuanxu/django-py3 -P -v ${path/to/your/code}:/var/www/app -g upgrade
```

*Run*

```
docker run --rm yuanxu/django-py3 -P -v ${path/to/your/code}:/var/www/app -v ${path/to/log/}:/var/log/ -g run
```
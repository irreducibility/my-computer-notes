Requests module
===============

Requests module handle http requests.

## Download file with get

```
import requests

url = https://example.com/file.txt

requests.get(url)
```

This will download file.txt from example.com.

## Upload data with post

The folloowing code will upload file.txt to example.com
```
import requests

url = https://example.com/upload

filename = "file.txt"

file = {
	filename : open(filename)
}

headers = {...} # perhaps empty

response = requests.post(url=url, files=file, headers=headers)

print(response.content()) # print reponse

```

## Further Reading

[0] https://stackoverflow.com/questions/6260457/using-headers-with-the-python-requests-librarys-get-method

# KVH Tools

## Tool Overview


### Convert

* Binary to Hex / Hey to Binary
* Symbol to Unicode code


### Encoding/Decoding

* Base64 Decode ✅
* Base64 Encode ✅
* Escape HTML in string
* Escape string to URL format


### Generators

* Generate a uuid ✅
* Random number between x and y
* Random string with x length
* Yes / No generator ✅


## Network

* Get own IP address ✅
* Get IP address location
* Get IP address for hostname
* Get parts of an URL


### String Methods & Manipulation

* Count string length ✅
* Count words in string
* Trim string (with / without specific character ✅)


---

## Development

### Setup

Setup the environment using Docker and the pre-defined Dockerfile by using Docker compose:

```
$ docker-compose up -d
```

#### Generate your own secrets

Start a shell on your Docker container:

```
$ docker exec -it kvhtools-rails bash
```

Generate a new base secret and master key inside the Docker container:

```
$ EDITOR=nano rails credentials:edit
```


### Testing

You can run the basic Rails tests by using this console command:

```
docker exec kvhtools-rails bash -c "RUBYOPT='-W:no-deprecated -W:no-experimental' rails test"
```

(`RUBYOPT='-W:no-deprecated -W:no-experimental'` will prevent deprecation warnings triggered by internal Rails libraries.)

---

KVH Tools is a project by [Kovah](https://kovah.de) | [Contributors](https://github.com/Kovah/KVH-Tools/graphs/contributors)

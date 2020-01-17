# KVH Tools

## Tool Overview

### String Methods & Manipulation

* Count string length
* Count words in string
* Trim string (with / without specific character)


### Generators

* Generate a uuid
* Random number between x and y
* Random string with x length
* Yes / No generator


### Encoding/Decoding

* Base64 Decode
* Base64 Encode
* Escape HTML in string
* Escape string to URL format


## Network

* Get own IP address
* Get IP address location
* Get IP address for hostname
* Get parts of an URL


---

## Development

### Testing

You can run the basic Rails tests by using this console command:

```
docker exec kvhtools-rails bash -c "RUBYOPT='-W:no-deprecated -W:no-experimental' rails test"
```

(`RUBYOPT='-W:no-deprecated -W:no-experimental'` will prevent deprecation warnings triggered by internal Rails libraries.)

---

KVH Tools is a project by [Kovah](https://kovah.de) | [Contributors](https://github.com/Kovah/KVH-Tools/graphs/contributors)

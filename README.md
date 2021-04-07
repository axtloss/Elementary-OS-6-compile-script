# Elementary-OS-6-compile-script
This script will compile Elementary os 6 directly from source
Keep in mind that Elementary os 6 still in Beta and errors/crashes are expected


# Dependencies
- Docker
- Git

# Running the script
to run this script in the terminal issue:
```sh
sudo chmod +x compile_elementary.sh

./compile_elementary.sh
```

# General info
The final ISO will take around 2.5GB of storage, keep in mind that it might take more during the actual build process

The iso will be located in (current directory)/os/builds/(architecture)/elementaryos-6.0-daily.(date).iso
A possible location could be: ~/os/builds/amd64/elementaryos-6.0-daily.2021-04-06.iso

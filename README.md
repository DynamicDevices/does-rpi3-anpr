# DoES RPi3/RPi0 ANPR

Balena.io container for testing ANPR number-plate recognition

Based on this: 

https://www.raspberrypi.org/magpi/anpr-car-spy-raspberry-pi

See notes on ALPRD setup for automated recognition: 

https://github.com/openalpr/openalpr/wiki/OpenALPR-Daemon-(alprd)

NOTE: For PiCam usage we need to change the Raspberry Pi config.txt file

Add

``` 
gpu_mem = 196
start_x = 1
```

Or to achieve the same via remote variables use

```
$ balena env add RESIN_HOST_CONFIG_gpu_mem 196 --device $foo
$ balena env add RESIN_HOST_CONFIG_startx 1 --device $foo
$ balena envs -c --device $foo
```

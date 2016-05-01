# From Raspberry to Arduino through serial

Rails app dedicated to receive data, and transmit it to an Arduino, through USB-serial port.
The Arduino board would control the world: lights, LCD, motors, etc.

**First goal**: Turn my light on and off.

This project is designed to work on a Raspberry Pi, with this [Arduino sketch](https://github.com/arnlen/relay_control_from_serial).

## How to use it?

- Git clone this repo **on your Raspberry Pi**
- Bundle install
- Connect your Raspberry to your Arduino through USB-serial communication port
- Edit the initializer `config/initializers/arduino.rb` with your data
- `rails s -b 0.0.0.0`
- visit the URLs `http://<pi_ip_address>:3000/light/on` and `http://<pi_ip_address>:3000/light/off`

## Discalmer

Be sure to only run this project on Raspberry Pi.
It won't work on another computer, since dependencies would be missing.
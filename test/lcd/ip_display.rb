#!/usr/bin/env ruby

require_relative "../../lib/lcd/char16x2"
require "ap"
require "system/getifaddrs"

network_interfaces = System.get_ifaddrs

# ap network_interfaces
ip_address =  network_interfaces[:wlan0][:inet_addr] 

Adafruit::LCD::Char16x2.new do |lcd|
    lcd.clear
    lcd.backlight Adafruit::LCD::Char16x2::BLUE
    lcd.message "#{ip_address}"
    sleep 30
    lcd.clear
    lcd.stop
end
#!/usr/bin/env ruby

require_relative "../../lib/lcd/char16x2"

Adafruit::LCD::Char16x2.new do |lcd|
    lcd.clear
    lcd.stop
end
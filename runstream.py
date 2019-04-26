from gpiozero import Button
import os

button = Button(2)

button.wait_for_press()
print('Starting stream...')
os.system('sudo systemctl start raspividstream')

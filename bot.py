import telebot
import os
import time
bot = telebot.TeleBot('6198616108:AAFa7RYHQJ3DEpMN2eocnnFN_j__kOAu3wU');
@bot.message_handler(content_types=['text'])
def send(message):
    if message.text != 0:
        path="F:/bot_BA/temp"
        os.chdir(path)
        i=0
        for file in os.listdir():
            time.sleep(3)
            if file.endswith(".txt"):
                file_path = f"{path}/{file}"
                read_text_file(file_path)

def read_text_file(file_path):
    with open(file_path, 'r') as f:
        q=f.read()
        print(q)
        bot.send_message(1621068777,q)

bot.polling(none_stop=True, interval=0)

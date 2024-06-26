from telethon import TelegramClient
from secrets import api_id, api_hash

#recipient = '@marcoliiin'
#recipient = '@enricopezzano'
recipient = '@FIONA1088'
message = 'fatto'
image_path = '/Users/enrico/Desktop/miscellaneous-projects/telegram/pic.jpg'
session_file = '/Users/enrico/Desktop/miscellaneous-projects/telegram/session_name'

# async def send_message():
#     async with TelegramClient('session_name', api_id, api_hash) as client:
#         await client.send_message(recipient, message)

async def send_picture():
    async with TelegramClient(session_file, api_id, api_hash) as client:
        await client.send_file(recipient, image_path)

if __name__ == '__main__':

    # n = first argument
    import sys
    n = int(sys.argv[1])

    import asyncio
    # asyncio.run(send_message())
    for i in range(n):
	    asyncio.run(send_picture())

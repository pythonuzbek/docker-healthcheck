from aiogram import Bot, Dispatcher, executor, types
token = '6060797370:AAF2qE_d8b9yheQZeIO7z3IWxZ5DDxgxk9s'
bot = Bot(token)

dp = Dispatcher(bot)

@dp.message_handler(commands='start')
async def welcome(message: types.Message):
    await message.answer(f'salom: {message.from_user.id}')


executor.start_polling(dp, skip_updates=True)
import requests
from bs4 import BeautifulSoup
import mysql.connector
# Получаем HTML страницу с сайта ЦБ РФ 
url = 'https://www.cbr.ru/currency_base/daily/' 
html = requests.get(url).text 
# Создаем объект Beautiful Soup 
soup = BeautifulSoup(html, 'html.parser')
# Получаем таблицу с курсом валют
table = soup.find('table', {'class': 'data'})

# Получаем строки таблицы
rows = table.find_all('tr')

# Подключаемся к базе данных MySQL
cnx = mysql.connector.connect(user='Art', password='', host='localhost', database='ais-currency')

# Создаем курсор для взаимодействия с базой данных
cursor = cnx.cursor()
quer = f"DELETE FROM currency"  
cursor.execute(quer)
que = f"ALTER TABLE currency AUTO_INCREMENT = 1"
cursor.execute(que)
# Парсим каждую строку таблицы и сохраняем данные в базу данных
for row in rows[1:]:
    cols = row.find_all('td')
    name = cols[1].text
    rate = float(cols[4].text.replace(',', '.')) 
    query = f"INSERT INTO currency (name, rate) VALUE ('{name}', {rate})"
    cursor.execute(query)
query = f"UPDATE currency SET sell = rate * 1.014"
cursor.execute(query)
query = f"UPDATE currency SET buy = rate * 1.012"
cursor.execute(query)
query = f"UPDATE currency SET sell=ROUND(sell, 3)"
cursor.execute(query)
query = f"UPDATE currency SET buy=ROUND(buy, 3)"
cursor.execute(query)
query = f"UPDATE currency SET rate=ROUND(rate, 3)"
cursor.execute(query)

# Сохраняем изменения в базе данных
cnx.commit()

# Закрываем соединение с базой данных
cnx.close()
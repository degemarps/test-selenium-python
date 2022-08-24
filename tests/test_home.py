# from page_objects.home_page import HomePage
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

def setUp():
    # configura o caminho para o chromedriver
    PATH = Service('/usr/local/lib/python3.9/site-packages/seleniumbase/drivers/chromedriver')
    driver = webdriver.Chrome(service=PATH)

    # acessa a página web
    driver.get('https://www.saucedemo.com/')

    return driver

def test_home_page():
    driver = setUp()
    driver.get('https://www.saucedemo.com/')
    driver.find_element(By.ID, 'user-name')

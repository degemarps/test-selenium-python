from seleniumbase import BaseCase

class HomePage(BaseCase):
    username = "#user-name"

    def open_page(self):
        self.open("https://www.saucedemo.com/")

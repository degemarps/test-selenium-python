from seleniumbase import BaseCase

class HomePage(BaseCase):
    text_btn = "button > span"

    def open_page(self):
        self.open("http://localhost:3001/")

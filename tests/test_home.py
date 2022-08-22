from page_objects.home_page import HomePage


class HomeTest(HomePage):

    def setUp(self):
        super().setUp()
        self.open_page()

    def test_home_page(self):
        print()

import time
from pywinauto import application
from pywinauto import clipboard
from pywinauto.keyboard import send_keys
from pywinauto import mouse
import unittest


def get_pos(w1, shift):
    rect = w1.rectangle()
    # center = rect.mid_point()
    # return center.x + shift, center.y + shift
    return rect.left + shift, rect.top + shift
    # return rect.right - shift, rect.bottom - shift


def get_center(w1, shift):
    rect = w1.rectangle()
    print("Окно = ", rect)
    center = rect.mid_point()
    return center.x + shift, center.y + shift
    # return rect.left + shift, rect.top + shift
    # return rect.right - shift, rect.bottom - shift


class TestGetStockEntryList(unittest.TestCase):
    """ тест загрузки ВСД_партий площадки """

    def test_completed(self):
        app = application.Application()
        app.connect(title_re="1С:Предприятие")
        app_1c = app['1С:Предприятие - Торговля+Склад, редакция 9.2']
        w1 = app_1c.child_window(title="Окно сообщений")
        w1.set_focus()

        # click_getStockEntryList(app)
        app_1c = app['1С:Предприятие - Торговля+Склад, редакция 9.2']
        app_1c.menu_select("ВСД -> Обработки")
        app_1c.child_window(title="Реализации").click()
        app_1c.child_window(title="Загрузить Партии").click()
        app['Загрузить партии с :'].OK.click()
        time.sleep(10)

        left, top = get_center(w1, 10)
        mouse.click(coords=(left, top))
        print("Клик = ", left, top)

        mouse.click(coords=(left, top))
        # time.sleep(0.2)
        send_keys('^{HOME}')
        send_keys('+^{END}')
        send_keys('^{INSERT}')
        data = clipboard.GetData()
        s = data.split('\n')
        print(s[-2])
        print(s[-1])
        # self.assertEqual(s[-2], 'Результат = COMPLETED\r')
        self.assertIn('Результат = COMPLETED\r', s)

# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 19:01:17 2019

@author: Karely Mayorquin
"""

import fire
import logging

from util import TriangleBuilder


class Main(object):

    def message(self, content):
        logging.info(content)

    def get_element_recursively(self, i, j):
        return 1 if () else 1

    def pascal_triangle_a(self, level, index=0):
        if (index < level):
            pass

    def pascal_triangle_b(self, level, index=0):
        pass

    def pascal_triangle(self, level, option):
        pass


if _name_ == "_main_":
    logging.basicConfig(level=logging.INFO)
    fire.Fire(Main)
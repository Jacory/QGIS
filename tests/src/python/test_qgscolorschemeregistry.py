# -*- coding: utf-8 -*-
"""QGIS Unit tests for QgsColorSchemeRegistry.

.. note:: This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.
"""
__author__ = 'Nyall Dawson'
__date__ = '25/07/2014'
__copyright__ = 'Copyright 2014, The QGIS Project'
# This will get replaced with a git SHA1 when you do a git archive
__revision__ = '$Format:%H$'

import qgis  # NOQA

from qgis.testing import start_app, unittest
from qgis.core import QgsColorSchemeRegistry, QgsRecentColorScheme, QgsApplication

start_app()


class TestQgsColorSchemeRegistry(unittest.TestCase):

    def testCreateInstance(self):
        """Test creating global color scheme registry instance"""
        registry = QgsApplication.colorSchemeRegistry()
        self.assertTrue(registry)

    def testInstanceHasDefaultScheme(self):
        """Test global color scheme registry has default schemes"""
        registry = QgsApplication.colorSchemeRegistry()
        self.assertGreater(len(registry.schemes()), 0)

    def testCreateEmpty(self):
        """Test creating an empty color scheme registry"""
        registry = QgsColorSchemeRegistry()
        self.assertEqual(len(registry.schemes()), 0)

    def testAddScheme(self):
        """Test adding a scheme to a registry"""
        registry = QgsColorSchemeRegistry()
        self.assertEqual(len(registry.schemes()), 0)
        recentScheme = QgsRecentColorScheme()
        registry.addColorScheme(recentScheme)
        self.assertEqual(len(registry.schemes()), 1)

    def testAddDefaultScheme(self):
        """Test adding default schemes to a registry"""
        registry = QgsColorSchemeRegistry()
        self.assertEqual(len(registry.schemes()), 0)
        registry.addDefaultSchemes()
        self.assertGreater(len(registry.schemes()), 0)

    def testPopulateFromInstance(self):
        """Test adding schemes from global instance"""
        registry = QgsColorSchemeRegistry()
        self.assertEqual(len(registry.schemes()), 0)
        registry.populateFromInstance()
        self.assertEqual(len(registry.schemes()), len(QgsApplication.colorSchemeRegistry().schemes()))

    def testRemoveScheme(self):
        """Test removing a scheme from a registry"""
        registry = QgsColorSchemeRegistry()
        self.assertEqual(len(registry.schemes()), 0)
        recentScheme = QgsRecentColorScheme()
        registry.addColorScheme(recentScheme)
        self.assertEqual(len(registry.schemes()), 1)
        # remove the scheme
        registry.removeColorScheme(recentScheme)
        self.assertEqual(len(registry.schemes()), 0)
        # try removing a scheme not in the registry
        self.assertFalse(registry.removeColorScheme(recentScheme))


if __name__ == "__main__":
    unittest.main()

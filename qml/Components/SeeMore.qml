/*
 * Copyright (C) 2014 Canonical, Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Ubuntu.Components 0.1

Item {
    property bool more: false

    Row {
        anchors.centerIn: parent
        spacing: units.gu(2)

        Label {
            objectName: "seeMoreLabel"
            text: i18n.tr("See more")
            opacity: !more ? 0.8 : 0.4
            color: Theme.palette.selected.backgroundText
            font.weight: Font.Bold

            MouseArea {
                anchors.fill: parent
                onClicked: more = true
            }
        }

        Label {
            objectName: "seeLessLabel"
            text: i18n.tr("See less")
            opacity: more ? 0.8 : 0.4
            color: Theme.palette.selected.backgroundText
            font.weight: Font.Bold

            MouseArea {
                anchors.fill: parent
                onClicked: more = false
            }
        }
    }
}

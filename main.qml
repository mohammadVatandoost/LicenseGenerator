import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Activation Generator")
    property string pvKey: BackEnd.getPrivateKey();
    property string pbKey: BackEnd.getPublicKey();
    property string activationCode: "";

    ColumnLayout {
        width: parent.width
        spacing: 20
        Text {
            Layout.topMargin: 25
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("Your Private Key")
            font.pointSize: 14
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr(root.pvKey)
            font.pointSize: 14
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("Your Public Key")
            font.pointSize: 14
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr(root.pbKey)
            font.pointSize: 14
        }
        MaterialInput {
            id: code
            Layout.alignment: Qt.AlignHCenter
        }

        Button {
            id: biggestBtn
            implicitWidth: 140
            implicitHeight: 60
            text: qsTr("Generate")
            Layout.alignment: Qt.AlignHCenter
            highlighted: true
            Material.background: Material.Green
            onClicked: {

            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr(root.activationCode)
            font.pointSize: 16
        }

    }
}

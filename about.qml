import QtQuick
import QtQuick.Controls

Page {
    background: Rectangle
    {
        color: "#FFFFFF"
    }
    height: 2050
    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: Math.max(5000, parent.height)


        Rectangle
        {
            id: headerBar
            color: "#313131"
            width: 1200
            height: 75
            radius: 50
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 35


            Text
            {
                id: homeN
                text: "Home"
                color: "#FFFFFF"
                anchors.verticalCenter: parent.verticalCenter
                font.family: "poppins"
                font.styleName: "Light"
                font.pixelSize: 15

                x: 70

                MouseArea
                {
                    id: homeHeaderArea
                    anchors.fill: parent
                    propagateComposedEvents: true
                    hoverEnabled: true
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        loader.push("qrc:/WEBSITE/home.qml")
                        console.log("About button clicked: Test case")
                    }

                    onEntered: {
                        homeN.color = "#628935";
                        homeN.font.styleName = "Medium";
                    }

                    onExited: {
                        homeN.color = "#FFFFFF";
                        homeN.font.styleName = "Light";
                    }
                }

            }

            Text
            {
                id: aboutN
                text: "About"
                color: "#FFFFFF"
                anchors.verticalCenter: parent.verticalCenter
                font.family: "poppins"
                font.styleName: "Light"
                font.pixelSize: 15

                x: 70 * 3

                MouseArea
                {
                    id: aboutHeaderArea
                    anchors.fill: parent
                    propagateComposedEvents: true
                    hoverEnabled: true
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        // loader.push("qrc:/WEBSITE/about.qml")
                        console.log("About button clicked: Test case")
                    }
                    onEntered: {
                        aboutN.color = "#628935";
                        aboutN.font.styleName = "Medium";
                    }

                    onExited: {
                        aboutN.color = "#FFFFFF";
                        aboutN.font.styleName = "Light";
                    }
                }
            }


            Text
            {
                id: nameLogo
                text: "<span>Kaustuv <font color='#628935'>Pokharel</font></span>"
                color: "#FFFFFF"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                FontLoader
                {
                    id: nautigal
                    source: "qrc:/Nautigal"
                }

                font.family : nautigal.name
                font.pixelSize: 40
            }

            Text
            {
                id: resumeN
                text: "Resume"
                color: "#FFFFFF"
                anchors.verticalCenter: parent.verticalCenter
                font.family: "poppins"
                font.styleName: "Light"
                font.pixelSize: 15

                x: 70 * 13

                MouseArea
                {
                    id: resumeHeaderArea
                    anchors.fill: parent
                    propagateComposedEvents: true
                    hoverEnabled: true
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        loader.push("qrc:/WEBSITE/resume.qml")
                        console.log("Resume button clicked: Test case")
                    }
                    onEntered: {
                        resumeN.color = "#628935";
                        resumeN.font.styleName = "Medium";
                    }

                    onExited: {
                        resumeN.color = "#FFFFFF";
                        resumeN.font.styleName = "Light";
                    }
                }
            }

            Text
            {
                id: projectN
                text: "Project"
                color: "#FFFFFF"
                anchors.verticalCenter: parent.verticalCenter
                font.family: "poppins"
                font.styleName: "Light"
                font.pixelSize: 15

                x: 70 * 15

                MouseArea
                {
                    id: projectHeaderArea
                    anchors.fill: parent
                    propagateComposedEvents: true
                    hoverEnabled: true
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked: console.log("Project button clicked: Test case")

                    onEntered: {
                        projectN.color = "#628935";
                        projectN.font.styleName = "Medium";
                    }

                    onExited: {
                        projectN.color = "#FFFFFF";
                        projectN.font.styleName = "Light";
                    }
                }
            }
        }

        Text
        {
            id: label2Text
            text: qsTr("<html>I'm <font color='#628935'; text-align: center>Creative</font><br />Software Developer</html>")
            FontLoader
            {
                id: philo
                source: "qrc:/PhiloBold"
            }
            font.family: philo.name
            font.pixelSize: 70
            color: "#313131"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: headerBar.bottom
            anchors.topMargin: 70
            horizontalAlignment: Text.AlignHCenter
        }

        Text
        {
            id: intro
            text: "<html>My journey commenced at the <i><font color='#628935'>age of 18</font></i> when I delved into the corporate world, immersing myself in the tech industry before completing high school. This early exposure honed my skills and instilled a work ethic that set me apart from the average crowd.<br /><br />My expertise lies in <i><font color='#628935'>C++ development, cross-platform applications, and the intricacies of firmwares (with a specialized focus on STM32 boards)</font></i>. Drawing from my corporate experience, which spans beyond software into the broader <i><font color='#628935'>3D-Computer Graphics</font></i>, I've navigated diverse challenges, contributing meaningfully to projects that transcend conventional boundaries.<br /><br />Beyond the code, I've delved into the complexities of Neural Networks and Computer Vision (OpenCV), engaging in continuous research to stay at the forefront of these evolving domains. Join me as I navigate the fascinating intersections of software, firmware intricacies, and the boundless possibilities of AI. It's not just a career; it's a journey shaped by early milestones and an unwavering commitment to excellence.</html>"
            color: "#777777"
            width: parent.width * 0.9
            font.family: "Poppins"
            font.styleName: "Regular"
            font.pixelSize: 20
            anchors.top: label2Text.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
        }



    }
}

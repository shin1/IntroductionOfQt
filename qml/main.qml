import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Presentation {
    width: 1280
    height: 800
    anchors.fill: parent

    titleColor: "#002060"
    textColor: "#002060"
    fontFamily: "Keifont"

    property real halfWidth: width / 2 - 130

    Background { }

    TitlePage { }
    SelfIntroduction1 { }
    DoYouKnowQt1 { }
    DoYouKnowQt2 { }
    Introduction { }
    History1 { }
    History2 { }
    WhatIsQt { }
    CrossPlatform { }
    CrossPlatform_Desktop { }
    CrossPlatform_Embedded { }
    CrossPlatform_Mobile { }
    CrossPlatform_Other { }
    ApplicationFramework { }
    ApplicationFramework_Intro { }
    ApplicationFramework_Modules { }
    ProgramLanguages { }
    ProgramLanguages_Cpp { }
    ProgramLanguages_QML { }
    ProgramLanguages_QML2 { }
    ProgramLanguages_Python { }
    OpenSource { }
    OpenSource_Intro { }
    OpenSource_License { }
    DevelopmentEnvironment { }
    DevelopmentEnvironment2 { }
    Demo { }
    Demo1 { }
    Demo2 { }
    Demo3 { }
    Demo4 { }
    AboutThisDocument { }
    Case { }
    Case2 { }
    Community { }
    Community2 { }
    QtWorldSummit { }
    Thanks { }
}

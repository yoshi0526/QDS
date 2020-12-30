import QtQuick 2.12
import AppFlow 1.0
import FlowView 1.0

FlowView {
    width: Constants.width
    height: Constants.height
    flowTransitions: [
        FlowTransition {
            id: flowTransition
            to: myFlowItemB
            from: myFlowItemA
        },
        FlowTransition {
            id: flowTransition1
            to: myFlowItemA
            from: myFlowItemB
        },
        FlowTransition {
            id: flowTransition2
            effect: FlowFadeEffect {
            }
            to: myFlow3
            from: myFlowItemA
        },
        FlowTransition {
            id: flowTransition3
            to: myFlowItemB
            from: myFlow3
        },
        FlowTransition {
            id: flowTransition4
            to: myFlowItemA
            from: myFlow3
        }
    ]

    defaultTransition: FlowTransition {
        id: defaultTransition
    }

    MyFlowItemA {
        id: myFlowItemA

        FlowActionArea {
            target: flowTransition
            x: 490
            y: 409
            width: 106
            height: 40
        }

        FlowActionArea {
            target: flowTransition2
            x: 379
            y: 409
            width: 105
            height: 40
        }
    }

    MyFlowItemB {
        id: myFlowItemB

        FlowActionArea {
            target: flowTransition1
            x: 280
            y: 395
            width: 115
            height: 40
        }
    }

    MyFlow3 {
        id: myFlow3

        FlowActionArea {
            target: flowTransition3
            x: 391
            y: 415
            width: 107
            height: 40
        }

        FlowActionArea {
            target: flowTransition4
            x: 75
            y: 415
            width: 108
            height: 40
        }
    }

    MyFlowItemD {
        id: myFlowItemD
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33;height:10000;width:10000}D{i:5;width:1}D{i:8;flowX:927.0909090909092;flowY:3455.393939393939}
D{i:11;flowX:1860.2424242424245;flowY:3451.6060606060605}D{i:13;flowX:1460;flowY:4010}
D{i:16;flowX:533.2121212121212;flowY:4075.8484848484845}
}
##^##*/


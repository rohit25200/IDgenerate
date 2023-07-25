sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.dispatches.project1',
            componentId: 'CargoOrdersObjectPage',
            entitySet: 'CargoOrders'
        },
        CustomPageDefinitions
    );
});
sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.dispatches.project1',
            componentId: 'CargoOrdersList',
            entitySet: 'CargoOrders'
        },
        CustomPageDefinitions
    );
});
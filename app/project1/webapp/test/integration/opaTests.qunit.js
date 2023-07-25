sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/dispatches/project1/test/integration/FirstJourney',
		'com/dispatches/project1/test/integration/pages/CargoOrdersList',
		'com/dispatches/project1/test/integration/pages/CargoOrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, CargoOrdersList, CargoOrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/dispatches/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCargoOrdersList: CargoOrdersList,
					onTheCargoOrdersObjectPage: CargoOrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);
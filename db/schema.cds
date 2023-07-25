namespace com.dispatches;

using {managed} from '@sap/cds/common';
@Search.searchable
entity CargoOrders : managed {
    key ID                          : UUID         @(Core.Computed : true);
        order_id                    : Integer;
          @Search.defaultSearchElement: true
        status_order                : String(10);
          
};


using CatalogService as service from '../srv/catalog-service';



annotate service.CargoOrders with @(

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'order_id',
            Value : order_id,
            ![@UI.Hidden]:false
        },
        {
            $Type : 'UI.DataField',
            Label : 'status_order',
            Value : status_order,
            ![@UI.Hidden]:false
        },
    ]
);
annotate service.CargoOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'order_id',
                Value : order_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_order',
                Value : status_order,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

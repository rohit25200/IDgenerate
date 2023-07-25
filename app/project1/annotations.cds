using CatalogService as service from '../../srv/catalog-service';

annotate service.CargoOrders with @(
    UI.LineItem : [
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

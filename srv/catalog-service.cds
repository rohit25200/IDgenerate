using {com.dispatches as dispatches} from '../db/schema';

service CatalogService {
    @UI.UpdateHidden : true
    entity CargoOrders  as projection on dispatches.CargoOrders;
    annotate CargoOrders with @odata.draft.enabled;
}
const cds = require("@sap/cds");
const SequenceHelper = require("./lib/SequenceHelper");

module.exports = cds.service.impl(async (service) => {
    const db = await cds.connect.to("db");
    const { CargoOrders } = service.entities;
    service.before("CREATE", CargoOrders, async (context) => {
        const orderid = new SequenceHelper({
            db: db,
            sequence: "ORDER_ID",
            table: "COM_DISPATCHES_CARGOORDERS",
            field: "order_id"
        });

        context.data.order_id = await orderid.getNextNumber();
    });
});
const express = require("express")
const router = express.Router()
const verifyToken = require("../middleware/VerifyToken")
const { OrderController, getOrderByAdmin, getOrderByAdminById, uploadKurir, uploadPembayaran, updateOrder, deleteOrder } = require("../controllers/OrderController")

router.post("/", verifyToken, OrderController.createOrder)
router.get("/", verifyToken, OrderController.getOrder);
router.get("/order", getOrderByAdmin);
router.get("/order/:idOrder", getOrderByAdminById);
router.patch("/order-update/:idOrder", updateOrder);
router.patch("/order-kurir/:idOrder", uploadKurir);
router.patch("/:idOrder", uploadPembayaran);
router.delete("/order/:idOrder", deleteOrder);

module.exports = router
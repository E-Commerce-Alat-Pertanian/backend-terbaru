const express = require("express");
const {
    createStock,
} = require("../controllers/StockController.js") 
const { verifyUser, adminOnly } = require("../middleware/AuthUser.js")

const router = express.Router()

router.post('/stock', verifyUser, adminOnly, createStock)

module.exports = router;
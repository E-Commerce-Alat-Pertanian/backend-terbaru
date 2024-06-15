const express = require("express")
const router = express.Router()
const { CategoriController, addCategory } = require("../controllers/CategoryController")

router.get("/", CategoriController.allKategori)
router.post("/", addCategory)

module.exports = router
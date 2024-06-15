const Stok = require("../models/stok_model.js");

const createStock = async (req, res) => {
    const { idProduct, stok } = req.body;

    try {
        await Stok.create({
            idProduct: idProduct,
            stok: stok
          });
      
          res.json({ msg: "Stock Created" });
    } catch (error) {
        console.log(error);
        res.status(500).json({ error: "Internal Server Error" });
    }
};

module.exports = {
    createStock,
};
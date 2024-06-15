const Category = require("../models/CategoryModel")

class CategoriController {
  static allKategori(req, res) {
    Category.findAll()
      .then((data) => {
        res.status(200).json({
          status: true,
          message: "Berhasil mengambil data kategori",
          data: data,
        })
      })
      .catch((err) => {
        console.log(err)
        res.status(500).json({
          status: false,
          message: "Terjadi kesalahan, silahkan coba lagi",
          data: {},
        })
      })
  }
}

const addCategory = async (req, res) => {
  const nama = req.body.nama;

  try {

    await Category.create({
      nama: nama,
    });

    res.json({ msg: "Category Created" });
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = {
  CategoriController,
  addCategory
}
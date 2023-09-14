const ctrl = {}
const Posteos = require('../models/Posteos');

ctrl.crearPublicacion = async (req, res) => {
    try {
        // Se crea una nueva publicación
        const post = await Posteos.create(req.body);
        res.send({
            msg: "Publicación creada con éxito",
            publicacion: post
        })
    } catch (error) {
        console.log(error)
        return res.status(500).json({
            msg: "Error al crear nueva publicación"
        })
    }

}

// Se consultan todas las publicaciones
ctrl.obtenerPublicaciones = async (req, res) => {
    const posteos = await Posteos.findAll();
    res.json(posteos)
}

ctrl.actualizarPublicacion = async (req, res) => {
    const { id } = req.params;

    const post = await Posteos.findByPk(id)
    post.set(req.body)

    await post.save() // Con esta instrucción se guarda en la BD

    res.json({
        msg: "Publicación actualizada correctamente"
    })
};

ctrl.eliminarPublicacion = async (req, res) => {
    const { id } = req.params;

    await Posteos.destroy({
        where: {
            id
        }
    });

    res.json({
        msg: "Publicación eliminada correctamente"
    })

}

ctrl.obtenerPublicacion = async (req, res) => {
    const post = await Posteos.findByPk(req.params.id)
    return post;
}



module.exports = ctrl;
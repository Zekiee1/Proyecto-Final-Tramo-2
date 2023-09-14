const { DataTypes, sequelize } = require('../database');

const PostSchema = sequelize.define('Posteos', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  titulo: {
    type: DataTypes.STRING,
    allowNull: false
  },
  descripcion: {
    type: DataTypes.STRING,
    allowNull: false
  },
  fecha: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  url_imagen: {
    type: DataTypes.STRING,
    allowNull: false,
  }
},{
  tableName: 'posteos',
  timestamps: false
});


  module.exports = PostSchema;

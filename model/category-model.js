var db = require('./db');

module.exports = {
	insert: function(category, callback){
		if(category.category_name.length>=4 && category.short_desc.length>=10)
		{
			var sql = "INSERT INTO product_category VALUES (null, '" + category.category_name + "', '" + category.short_desc + "')";
			db.execute(sql, function(flag){
			callback(flag);
			});
		}
		else
		{
			callback(false);
			console.log(false);
		};
		
	},
	getAllCategories: function(callback){
		var sql = "SELECT * FROM product_category";
		db.getResult(sql, function(result){
			callback(result);
		});
	},
	delete: function(id, callback){
		var sql = "DELETE FROM product_category WHERE id='" +id+ "'";
		db.execute(sql, function(flag){
			callback(flag);
		});
	},
	getCategoryById: function(Id, callback){
		var sql = "SELECT * FROM product_category WHERE id='"+Id+"'";
		db.getResult(sql, function(result){
			callback(result);
		});
	},

	updateCategoryById: function(category, callback){
		if(category.category_name.length>=4 && category.short_desc.length>=10)
		{
			var sql = "UPDATE product_category SET category_name='" + category.category_name + "', short_desc='" + category.short_desc + "' WHERE id='"+category.id+"'";
			db.execute(sql, function(flag){
				callback(flag);
			});
		}
		else
		{
			callback(false);
			console.log(false);
		};
	}
};
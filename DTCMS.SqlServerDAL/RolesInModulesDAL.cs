﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-1-8 11:52:52
// 功能描述: 
// 修改标识: 
// 修改描述: 
//------------------------------------------------------------------------------

using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Text;
using DTCMS.Entity;
using DTCMS.IDAL;

namespace DTCMS.SqlServerDAL
{
	/// <summary>
	/// 数据访问类 RolesInModules
	/// </summary>
	public class RolesInModulesDAL : BaseDAL, IDAL_RolesInModules
	{
		public RolesInModulesDAL()
		{ }
		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(RolesInModules model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("INSERT INTO RolesInModules(");
            strSql.Append("RoleID,ModuleID,ControlValue)");
			strSql.Append(" VALUES (");
            strSql.Append("@RoleID,@ModuleID,@ControlValue)");
			DbParameter[] cmdParms = {
				dbHelper.CreateInDbParameter("@RoleID", DbType.Int32, model.RoleID),
				dbHelper.CreateInDbParameter("@ModuleID", DbType.AnsiStringFixedLength, model.ModuleID),
				dbHelper.CreateInDbParameter("@ControlValue", DbType.Int32, model.ControlValue)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public int Update(RolesInModules model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("UPDATE RolesInModules SET ");
			strSql.Append("RoleID=@RoleID,");
			strSql.Append("ModuleID=@ModuleID,");
			strSql.Append("ControlValue=@ControlValue");
			strSql.Append(" WHERE ID=@ID");
			DbParameter[] cmdParms = {
				dbHelper.CreateInDbParameter("@RoleID", DbType.Int32, model.RoleID),
				dbHelper.CreateInDbParameter("@ModuleID", DbType.AnsiStringFixedLength, model.ModuleID),
				dbHelper.CreateInDbParameter("@ControlValue", DbType.Int32, model.ControlValue),
				dbHelper.CreateInDbParameter("@ID", DbType.Int32, model.ID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public int Delete(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("DELETE FROM RolesInModules ");
			strSql.Append(" WHERE ID=@ID");
			DbParameter[] cmdParms = {
				dbHelper.CreateInDbParameter("@ID", DbType.Int32, ID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT COUNT(1) FROM RolesInModules");
			strSql.Append(" WHERE ID=@ID");
			DbParameter[] cmdParms = {
				dbHelper.CreateInDbParameter("@ID", DbType.Int32, ID)};

			object obj = dbHelper.ExecuteScalar(CommandType.Text, strSql.ToString(), cmdParms);
			return dbHelper.GetInt(obj) > 0;
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public RolesInModules GetModel(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,RoleID,ModuleID,ControlValue FROM RolesInModules");
			strSql.Append(" WHERE ID=@ID");
			DbParameter[] cmdParms = {
				dbHelper.CreateInDbParameter("@ID", DbType.Int32, ID)};

			using (DbDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), cmdParms))
			{
				if (dr.Read())
				{
					return GetModel(dr);
				}
				return null;
			}
		}

		/// <summary>
		/// 获取泛型数据列表
		/// </summary>
		public List<RolesInModules> GetList(out long count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,RoleID,ModuleID,ControlValue FROM RolesInModules");
			using (DbDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<RolesInModules> lst = GetList(dr, out count);
				return lst;
			}
		}

		/// <summary>
		/// 分页获取泛型数据列表
		/// </summary>
		public List<RolesInModules> GetPageList(int pageSize, int pageIndex, out long count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,RoleID,ModuleID,ControlValue FROM RolesInModules");
			using (DbDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<RolesInModules> lst = GetPageList(dr, pageSize, pageIndex, out count);
				return lst;
			}
		}

		#region -------- 私有方法，通常情况下无需修改 --------
		/// <summary>
		/// 由一行数据得到一个实体
		/// </summary>
		private RolesInModules GetModel(DbDataReader dr)
		{
			RolesInModules model = new RolesInModules();
			model.ID = dbHelper.GetInt(dr["ID"]);
			model.RoleID = dbHelper.GetInt(dr["RoleID"]);
			model.ModuleID = dbHelper.GetString(dr["ModuleID"]);
			model.ControlValue = dbHelper.GetInt(dr["ControlValue"]);
			return model;
		}

		/// <summary>
		/// 由DbDataReader得到泛型数据列表
		/// </summary>
		private List<RolesInModules> GetList(DbDataReader dr, out long count)
		{
			count = 0;
			List<RolesInModules> lst = new List<RolesInModules>();
			while (dr.Read())
			{
				count++;
				lst.Add(GetModel(dr));
			}
			return lst;
		}

		/// <summary>
		/// 由DbDataReader得到分页泛型数据列表
		/// </summary>
		private List<RolesInModules> GetPageList(DbDataReader dr, int pageSize, int pageIndex, out long count)
		{
			long first = GetFirstIndex(pageSize, pageIndex);
			long last = GetLastIndex(pageSize, pageIndex);

			count = 0;

			List<RolesInModules> lst = new List<RolesInModules>();
			while (dr.Read())
			{
				count++;
				if (count >= first && count <= last)
					lst.Add(GetModel(dr));
			}
			return lst;
		}
		#endregion
	}
}

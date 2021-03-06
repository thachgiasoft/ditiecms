﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-01-10 22:48:15
// 功能描述: 
// 修改标识: 
// 修改描述: 
//------------------------------------------------------------------------------
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Collections.Generic;
using DTCMS.Entity;
using DTCMS.IDAL;

namespace DTCMS.SqlServerDAL
{
	/// <summary>
	/// 数据访问类 Arc_Soft
	/// </summary>
	public class Arc_SoftDAL : BaseDAL, IDAL_Arc_Soft
	{
		public Arc_SoftDAL()
		{ }

		/// <summary>
		/// 增加一条数据
		/// </summary>
		/// <param name="AID">编号ID</param>
		/// <returns>返回影响行数</returns>
		public int Add(Arc_Soft model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("INSERT INTO " + tablePrefix + "Arc_Soft(");
            strSql.Append("AID)");
			strSql.Append(" VALUES (");
            strSql.Append("@AID)");
			SqlParameter[] cmdParms = {
				AddInParameter("@AID", SqlDbType.Int, 4, model.AID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		/// <param name="model">实体对象</param>
		/// <returns>返回影响行数</returns>
		public int Update(Arc_Soft model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("UPDATE " + tablePrefix + "Arc_Soft SET ");
			strSql.Append("AID=@AID");
			strSql.Append(" WHERE AID=@AID");
			SqlParameter[] cmdParms = {
				AddInParameter("@AID", SqlDbType.Int, 4, model.AID),
				AddInParameter("@AID", SqlDbType.Int, 4, model.AID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 根据ID和值更新一条数据
		/// </summary>
		/// <param name="AID">编号ID</param>
		/// <param name="value">更新值（filedName=filedValue）</param>
		/// <returns>返回影响行数</returns>
		public int Update(int AID, string value)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("UPDATE " + tablePrefix + "Arc_Soft SET ");
			strSql.Append(value);
			strSql.Append(" WHERE AID=");
			strSql.Append(AID);
			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString());
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		/// <param name="AID">编号ID</param>
		/// <returns>返回影响行数</returns>
		public int Delete(int AID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("DELETE FROM " + tablePrefix + "Arc_Soft");
			strSql.Append(" WHERE AID=@AID");
			SqlParameter[] cmdParms = {
				AddInParameter("@AID", SqlDbType.Int, 4, AID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		/// <param name="AID">编号ID</param>
		/// <param name="filedName">字段名称</param>
		/// <param name="filedValue">字段值</param>
		/// <returns>存在返回true，不存在返回false</returns>
		public bool Exists(int AID, string filedName, string filedValue)
		{
			StringBuilder strSql = new StringBuilder();
			if (filedName != "")
			{
				strSql.Append("SELECT COUNT(1) FROM " + tablePrefix + "Arc_Soft");
				strSql.Append(" WHERE AID<>{0} AND {1}={2}");
				return dbHelper.GetInt(dbHelper.ExecuteScalar(CommandType.Text, string.Format(strSql.ToString(), AID, filedName, filedValue))) > 0;
			}
			else
			{
				strSql.Append("SELECT COUNT(1) FROM " + tablePrefix + "Arc_Soft");
				strSql.Append(" WHERE AID={0}");
				return dbHelper.GetInt(dbHelper.ExecuteScalar(CommandType.Text, string.Format(strSql.ToString(), AID))) > 0;
			}
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		/// <param name="AID">编号ID</param>
		/// <returns>实体对象</returns>
		public Arc_Soft GetModel(int AID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT AID FROM " + tablePrefix + "Arc_Soft");
			strSql.Append(" WHERE AID=@AID");
			SqlParameter[] cmdParms = {
				AddInParameter("@AID", SqlDbType.Int, 4, AID)};

			using (SqlDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), cmdParms))
			{
				if (dr.Read())
				{
					return GetModel(dr);
				}
				return null;
			}
		}

		/// <summary>
		/// 根据查询字段获取列表
		/// </summary>
		/// <param name="fileds">要查询的字段，多个字段用,号隔开</param>
		/// <returns>DataTable数据集合</returns>
		public DataTable GetDataTable(string fileds, string where)
		{
            string strSql = "";
            if (where == "")
            {
                strSql = string.Format("SELECT {0} FROM {1}Arc_Soft", fileds, tablePrefix);
            }
            else
            {
                strSql = string.Format("SELECT {0} FROM {1}Arc_Soft WHERE {2}", fileds, tablePrefix, where);
            }			

			DataSet ds = dbHelper.ExecuteQuery(CommandType.Text, strSql);
			if (ds != null && ds.Tables.Count > 0)
			{
				return ds.Tables[0];
			}
			else
			{
				return null;
			}
		}

		/// <summary>
		/// 获取泛型数据列表
		/// </summary>
		/// <param name="count">返回记录总数</param>
		/// <returns>对象泛型集合</returns>
		public List<Arc_Soft> GetList(out int count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT AID FROM " + tablePrefix + "Arc_Soft");
			using (SqlDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<Arc_Soft> lst = GetList(dr, out count);
				return lst;
			}
		}

		/// <summary>
		/// 分页获取泛型数据列表
		/// </summary>
		/// <param name="pageSize">分页大小</param>
		/// <param name="pageIndex">当前页</param>
		/// <param name="count">返回记录数</param>
		/// <returns>分页对象泛型集合</returns>
		public List<Arc_Soft> GetPageList(int pageSize, int pageIndex, out int count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT AID FROM " + tablePrefix + "Arc_Soft");
			using (SqlDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<Arc_Soft> lst = GetPageList(dr, pageSize, pageIndex, out count);
				return lst;
			}
		}

		#region 私有方法，通常情况下无需修改
		/// <summary>
		/// 由一行数据得到一个实体
		/// </summary>
		/// <param name="dr">SqlDataReader对象</param>
		/// <returns>实体对象</returns>
		private Arc_Soft GetModel(SqlDataReader dr)
		{
			Arc_Soft model = new Arc_Soft();
			model.AID = dbHelper.GetInt(dr["AID"]);
			return model;
		}

		/// <summary>
		/// 由SqlDataReader得到泛型数据列表
		/// </summary>
		/// <param name="dr">SqlDataReader对象</param>
		/// <param name="count">返回记录数</param>
		/// <returns>对象泛型集合</returns>
		private List<Arc_Soft> GetList(SqlDataReader dr, out int count)
		{
			count = 0;
			List<Arc_Soft> lst = new List<Arc_Soft>();
			while (dr.Read())
			{
				count++;
				lst.Add(GetModel(dr));
			}
			return lst;
		}

		/// <summary>
		/// 由SqlDataReader得到分页泛型数据列表
		/// </summary>
		/// <param name="dr">SqlDataReader对象</param>
		/// <param name="pageSize">分页大小</param>
		/// <param name="pageIndex">当前页数</param>
		/// <param name="count">返回记录总数</param>
		/// <returns>分页对象泛型集合</returns>
		private List<Arc_Soft> GetPageList(SqlDataReader dr, int pageSize, int pageIndex, out int count)
		{
			int first = GetFirstIndex(pageSize, pageIndex);
			int last = GetLastIndex(pageSize, pageIndex);

			count = 0;

			List<Arc_Soft> lst = new List<Arc_Soft>();
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

﻿//------------------------------------------------------------------------------
// 创建标识: Copyright (C) 2010 91aspx.com 版权所有
// 创建描述: DTCMS V1.0 创建于 2010-1-9 0:23:01
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
	/// 数据访问类 Usergroup
	/// </summary>
	public class UsergroupDAL : BaseDAL, IDAL_Usergroup
	{
		public UsergroupDAL()
		{ }

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(Usergroup model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("INSERT INTO Usergroup(");
            strSql.Append("GroupName,Description,GroupAvatar,MaxPMNum,MaxSignSize,MaxAttachSize,MaxAttachTotalSize,AttachExtension,OrderID)");
			strSql.Append(" VALUES (");
            strSql.Append("@GroupName,@Description,@GroupAvatar,@MaxPMNum,@MaxSignSize,@MaxAttachSize,@MaxAttachTotalSize,@AttachExtension,@OrderID)");
			SqlParameter[] cmdParms = {
				AddInParameter("@GroupName", SqlDbType.SmallInt, model.GroupName),
				AddInParameter("@Description", SqlDbType.SmallInt, model.Description),
				AddInParameter("@GroupAvatar", SqlDbType.BigInt, model.GroupAvatar),
				AddInParameter("@MaxPMNum", SqlDbType.NChar, model.MaxPMNum),
				AddInParameter("@MaxSignSize", SqlDbType.NChar, model.MaxSignSize),
				AddInParameter("@MaxAttachSize", SqlDbType.NText, model.MaxAttachSize),
				AddInParameter("@MaxAttachTotalSize", SqlDbType.NText, model.MaxAttachTotalSize),
				AddInParameter("@AttachExtension", SqlDbType.BigInt, model.AttachExtension),
				AddInParameter("@OrderID", SqlDbType.NText, model.OrderID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public int Update(Usergroup model)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("UPDATE Usergroup SET ");
			strSql.Append("Type=@Type,");
			strSql.Append("IsSystem=@IsSystem,");
			strSql.Append("GroupName=@GroupName,");
			strSql.Append("Description=@Description,");
			strSql.Append("CreditBegin=@CreditBegin,");
			strSql.Append("CreditEnd=@CreditEnd,");
			strSql.Append("stars=@stars,");
			strSql.Append("GroupAvatar=@GroupAvatar,");
			strSql.Append("Readaccess=@Readaccess,");
			strSql.Append("AllowPost=@AllowPost,");
			strSql.Append("AllowComment=@AllowComment,");
			strSql.Append("AllowDownload=@AllowDownload,");
			strSql.Append("AllowAvatar=@AllowAvatar,");
			strSql.Append("AllowSpace=@AllowSpace,");
			strSql.Append("AllowTransfer=@AllowTransfer,");
			strSql.Append("AllowViewInfo=@AllowViewInfo,");
			strSql.Append("AllowNickname=@AllowNickname,");
			strSql.Append("MaxPMNum=@MaxPMNum,");
			strSql.Append("MaxSignSize=@MaxSignSize,");
			strSql.Append("MaxAttachSize=@MaxAttachSize,");
			strSql.Append("MaxAttachTotalSize=@MaxAttachTotalSize,");
			strSql.Append("AttachExtension=@AttachExtension,");
			strSql.Append("OrderID=@OrderID");
			strSql.Append(" WHERE ID=@ID");
			SqlParameter[] cmdParms = {
				AddInParameter("@Type", SqlDbType.Bit, model.Type),
				AddInParameter("@IsSystem", SqlDbType.Bit, model.IsSystem),
				AddInParameter("@GroupName", SqlDbType.SmallInt, model.GroupName),
				AddInParameter("@Description", SqlDbType.SmallInt, model.Description),
				AddInParameter("@CreditBegin", SqlDbType.NText, model.CreditBegin),
				AddInParameter("@CreditEnd", SqlDbType.NText, model.CreditEnd),
				AddInParameter("@stars", SqlDbType.Bit, model.stars),
				AddInParameter("@GroupAvatar", SqlDbType.BigInt, model.GroupAvatar),
				AddInParameter("@Readaccess", SqlDbType.NText, model.Readaccess),
				AddInParameter("@AllowPost", SqlDbType.Bit, model.AllowPost),
				AddInParameter("@AllowComment", SqlDbType.Bit, model.AllowComment),
				AddInParameter("@AllowDownload", SqlDbType.Bit, model.AllowDownload),
				AddInParameter("@AllowAvatar", SqlDbType.Bit, model.AllowAvatar),
				AddInParameter("@AllowSpace", SqlDbType.Bit, model.AllowSpace),
				AddInParameter("@AllowTransfer", SqlDbType.Bit, model.AllowTransfer),
				AddInParameter("@AllowViewInfo", SqlDbType.Bit, model.AllowViewInfo),
				AddInParameter("@AllowNickname", SqlDbType.Bit, model.AllowNickname),
				AddInParameter("@MaxPMNum", SqlDbType.NChar, model.MaxPMNum),
				AddInParameter("@MaxSignSize", SqlDbType.NChar, model.MaxSignSize),
				AddInParameter("@MaxAttachSize", SqlDbType.NText, model.MaxAttachSize),
				AddInParameter("@MaxAttachTotalSize", SqlDbType.NText, model.MaxAttachTotalSize),
				AddInParameter("@AttachExtension", SqlDbType.BigInt, model.AttachExtension),
				AddInParameter("@OrderID", SqlDbType.NText, model.OrderID),
				AddInParameter("@ID", SqlDbType.NText, model.ID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public int Delete(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("DELETE FROM Usergroup ");
			strSql.Append(" WHERE ID=@ID");
			SqlParameter[] cmdParms = {
				AddInParameter("@ID", SqlDbType.NText, ID)};

			return dbHelper.ExecuteNonQuery(CommandType.Text, strSql.ToString(), cmdParms);
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT COUNT(1) FROM Usergroup");
			strSql.Append(" WHERE ID=@ID");
			SqlParameter[] cmdParms = {
				AddInParameter("@ID", SqlDbType.NText, ID)};

			object obj = dbHelper.ExecuteScalar(CommandType.Text, strSql.ToString(), cmdParms);
			return dbHelper.GetInt(obj) > 0;
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Usergroup GetModel(int ID)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,Type,IsSystem,GroupName,Description,CreditBegin,CreditEnd,stars,GroupAvatar,Readaccess,AllowPost,AllowComment,AllowDownload,AllowAvatar,AllowSpace,AllowTransfer,AllowViewInfo,AllowNickname,MaxPMNum,MaxSignSize,MaxAttachSize,MaxAttachTotalSize,AttachExtension,OrderID FROM Usergroup");
			strSql.Append(" WHERE ID=@ID");
			SqlParameter[] cmdParms = {
				AddInParameter("@ID", SqlDbType.NText, ID)};

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
		/// 获取泛型数据列表
		/// </summary>
		public List<Usergroup> GetList(out long count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,Type,IsSystem,GroupName,Description,CreditBegin,CreditEnd,stars,GroupAvatar,Readaccess,AllowPost,AllowComment,AllowDownload,AllowAvatar,AllowSpace,AllowTransfer,AllowViewInfo,AllowNickname,MaxPMNum,MaxSignSize,MaxAttachSize,MaxAttachTotalSize,AttachExtension,OrderID FROM Usergroup");
			using (SqlDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<Usergroup> lst = GetList(dr, out count);
				return lst;
			}
		}

		/// <summary>
		/// 分页获取泛型数据列表
		/// </summary>
		public List<Usergroup> GetPageList(int pageSize, int pageIndex, out long count)
		{
			StringBuilder strSql = new StringBuilder();
			strSql.Append("SELECT ID,Type,IsSystem,GroupName,Description,CreditBegin,CreditEnd,stars,GroupAvatar,Readaccess,AllowPost,AllowComment,AllowDownload,AllowAvatar,AllowSpace,AllowTransfer,AllowViewInfo,AllowNickname,MaxPMNum,MaxSignSize,MaxAttachSize,MaxAttachTotalSize,AttachExtension,OrderID FROM Usergroup");
			using (SqlDataReader dr = dbHelper.ExecuteReader(CommandType.Text, strSql.ToString(), null))
			{
				List<Usergroup> lst = GetPageList(dr, pageSize, pageIndex, out count);
				return lst;
			}
		}

		#region 私有方法，通常情况下无需修改
		/// <summary>
		/// 由一行数据得到一个实体
		/// </summary>
		private Usergroup GetModel(SqlDataReader dr)
		{
			Usergroup model = new Usergroup();
			model.ID = dbHelper.GetInt(dr["ID"]);
			model.Type = dbHelper.GetByte(dr["Type"]);
			model.IsSystem = dbHelper.GetByte(dr["IsSystem"]);
			model.GroupName = dbHelper.GetString(dr["GroupName"]);
			model.Description = dbHelper.GetString(dr["Description"]);
			model.CreditBegin = dbHelper.GetInt(dr["CreditBegin"]);
			model.CreditEnd = dbHelper.GetInt(dr["CreditEnd"]);
			model.stars = dbHelper.GetByte(dr["stars"]);
			model.GroupAvatar = dbHelper.GetString(dr["GroupAvatar"]);
			model.Readaccess = dbHelper.GetInt(dr["Readaccess"]);
			model.AllowPost = dbHelper.GetByte(dr["AllowPost"]);
			model.AllowComment = dbHelper.GetByte(dr["AllowComment"]);
			model.AllowDownload = dbHelper.GetByte(dr["AllowDownload"]);
			model.AllowAvatar = dbHelper.GetByte(dr["AllowAvatar"]);
			model.AllowSpace = dbHelper.GetByte(dr["AllowSpace"]);
			model.AllowTransfer = dbHelper.GetByte(dr["AllowTransfer"]);
			model.AllowViewInfo = dbHelper.GetByte(dr["AllowViewInfo"]);
			model.AllowNickname = dbHelper.GetByte(dr["AllowNickname"]);
			model.MaxPMNum = dbHelper.GetInt16(dr["MaxPMNum"]);
			model.MaxSignSize = dbHelper.GetInt16(dr["MaxSignSize"]);
			model.MaxAttachSize = dbHelper.GetInt(dr["MaxAttachSize"]);
			model.MaxAttachTotalSize = dbHelper.GetInt(dr["MaxAttachTotalSize"]);
			model.AttachExtension = dbHelper.GetString(dr["AttachExtension"]);
			model.OrderID = dbHelper.GetInt(dr["OrderID"]);
			return model;
		}

		/// <summary>
		/// 由SqlDataReader得到泛型数据列表
		/// </summary>
		private List<Usergroup> GetList(SqlDataReader dr, out long count)
		{
			count = 0;
			List<Usergroup> lst = new List<Usergroup>();
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
		private List<Usergroup> GetPageList(SqlDataReader dr, int pageSize, int pageIndex, out long count)
		{
			long first = GetFirstIndex(pageSize, pageIndex);
			long last = GetLastIndex(pageSize, pageIndex);

			count = 0;

			List<Usergroup> lst = new List<Usergroup>();
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
using System;
using System.Data;
using DTCMS.Entity;

namespace DTCMS.IDAL
{
	/// <summary>
	/// 接口层IDT_Arc_Class 的摘要说明。
	/// </summary>
	public interface IDAL_Arc_Class
	{
		#region  成员方法
		/// <summary>
		/// 是否存在该记录
		/// </summary>
        /// <param name="CID">类别主键</param>
        /// <param name="FiledName">字段名称</param>
        /// <param name="FiledValue">字段值</param>
		bool Exists(int CID,string filedName,string filedValue);
		/// <summary>
		/// 增加一条数据
		/// </summary>
        int Add(Arc_Class model);
		/// <summary>
		/// 更新一条数据`
		/// </summary>
        int Update(Arc_Class model);
         /// <summary>
        /// 更新排序
        /// </summary>
        /// <param name="cid">栏目ID</param>
        /// <param name="order">排序编号</param>
        /// <returns></returns>
        int UpdateOrder(int cid, int order);
		/// <summary>
		/// 删除一条数据
		/// </summary>
        int Delete(string CID);
		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		Arc_Class GetModel(int CID);

        /// <summary>
        /// 获取栏目关系
        /// </summary>
        /// <param name="ParentID"></param>
        /// <returns></returns>
        string GetRelation(int ParentID);
        /// <summary>
        /// 获取栏目名称
        /// </summary>
        /// <param name="ParentID">栏目ID</param>
        /// <returns></returns>
        string GetClassName(int CID);

        /// <summary>
        /// 获取栏目数据
        /// </summary>
        /// <param name="Fileds">要查询的字段</param>
        /// <returns></returns>
        DataTable  GetDataTable(string Fileds);

        /// <summary>
        /// 根据查询字段查询栏目数据
        /// </summary>
        /// <param name="Fileds">要查询的字段</param>
        /// <returns>DataTable数据集合</returns>
        DataTable GetDataTable(string Fileds, string where);

        /// <summary>
        /// 判断当前节点是否存在子节点
        /// </summary>
        /// <param name="ParentID"></param>
        /// <returns></returns>
        bool ExistsChildNode(int CID);

        /// <summary>
        /// 判断栏目是否已经存在
        /// </summary>
        /// <param name="ClassName"></param>
        /// <returns></returns>
        bool ExistsClassName(int CID, string ClassName);


		#endregion  成员方法
	}
}

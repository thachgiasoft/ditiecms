Declare
@i int
set @i = 0;
while (@i < 1000)
begin
INSERT INTO DT_Arc_Article
     VALUES(9,0,
		   '.NET中堆(heap)和堆栈(stack)的区别'+Str(@i),
           '堆(heap)和堆栈(stack)的区别'+Str(@i),
           '',
           '15',
           '堆,堆栈,.net',
           'http://www.91aspx.com',
           '叶乐榕',
           '叶乐榕',
           '叶乐榕',
           '互联网',
           '',
           '堆,堆栈,.net,区别',
           '.NET中堆(heap)和堆栈(stack)的区别'+Str(@i),
           '<span style="FONT-SIZE: 10pt"><span id="tempid1135047642296"><span style="FONT-SIZE: 10pt"><span id="tempid1135047724968"><span style="FONT-SIZE: 10pt"><span id="tempid1135047642296"><span style="FONT-SIZE: 10pt"><span id="tempid1135059157718"><span style="FONT-SIZE: 10pt"><span id="tempid1135047642296"><span style="FONT-SIZE: 10pt"><span id="tempid1135047724968"><span style="FONT-SIZE: 10pt"><span id="tempid1135047642296"><span style="FONT-SIZE: 10pt">元数据attribute主要分为两大类：
<ul>
    <li>设计期attribute&nbsp; </li>
    <li>解析期attribute </li>
</ul>
<p>&nbsp;</p>
<p><strong>设计期attribute</strong> </p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp; 设计期attribute对于控件在可视化设计器（如.NET 2003）内正确运行是很重要的，设计器、属性浏览器和其他的设计期元素使用设计期attribute提供的元数据的作用如下：</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<ul>
    <li>显示属性和事件 </li>
    <li>执行设计期的序列化 </li>
    <li>把用来实现设计期功能的类和控件或者属性类型关联起来 </li>
</ul>
<p>&nbsp;&nbsp;&nbsp; 因为设计时特性向可视设计工具提供有价值的信息，所以它们对在设计时正确显示控件及其成员非常重要。</p>
<p>&nbsp;&nbsp;&nbsp; 在下面的代码片段中，<strong>CategoryAttribute</strong>特性启用属性浏览器以在&ldquo;<strong>Alignment</strong>&rdquo;类别中显示 <code class="ce"><strong><font face="新宋体">TextAlignment</font></strong></code>属性。<strong>DescriptionAttribute</strong>特性允许属性浏览器在用户单击某个属性时显示该属性的简要说明。 </p>
<p>&nbsp;&nbsp;&nbsp; 某些设计时特性是在类级别应用的。<strong>DesignerAttribute</strong> 特性在类级别应用，它通知窗体设计器使用哪个设计器类来显示控件。组件与默认的设计器 (<strong>System.ComponentModel.Design.ComponentDesigner</strong>) 关联，Windows 窗体和 ASP.NET 服务器控件与它们自己的默认设计器关联。只有在为组件或控件定义自定义设计器时才应用 <strong>DesignerAttribute</strong>。 </p>
<p>',
           @i,
           @i,
           0,
           200,
           0,
           'A',
           1,
           1,
           0,
           0,
           1,
           0,
           '/Archives/201001/06/'+Str(@i)+'.html',
           '1,2,3,4,5',
           GETDATE(),
           GETDATE(),
           0)
           set @i = @i + 1
end
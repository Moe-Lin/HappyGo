<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>�����޲z����</title>
<link rel="stylesheet" href="../css/main.css">
<script src="../jquery/jquery-2.1.4.min.js"></script>
<script src="../jquery/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../jquery/jquery-ui.theme.css">
<style type="text/css">
#menus {
	margin: 0;
	padding: 0;
	list-style: none;
	position: relative;
	width: 600px;
	float: left;
	background: #000;
	border: 10px ridgt #38c2bb;
	border-radius: 20px;
	bgcolor: gold;
	box-shadow: 1px 1px 100px 10px #38c2bb;
}

#menus li {
	margin: 0;
	padding: 0;
	float: left;
	border-right: 1px solid #999;
}

#menus li a {
	padding: 10px 15px;
	display: block;
	color: #fff;
	text-decoration: none;
}

#menus li ul {
	margin: 0;
	padding: 15px 0;
	list-style: none;
	float: left;
	position: absolute;
	left: 0;
	width: 600px;
	color: #fff;
	background: #06c url('bottom.gif') no-repeat bottom;
	display: none;
}

#menus li ul li {
	border-right: 1px solid #fff;
}

#menus li ul li a {
	display: inline;
}

#menus li ul li a:hover {
	text-decoration: underline;
}
</style>
<script type="text/javascript">
	$(function() {
		// �� #menu li �[�W hover �ƥ�
		$('#menus>li').hover(
				function() {
					// ����� li �����l���
					var _this = $(this), _subnav = _this.children('ul');

					// �ܧ�ثe���ﶵ���I���C��
					// �P�ɷƤJ�l���(�p�G������)
					_this.css('backgroundColor', '#06c');
					_subnav.stop(true, true).slideDown(400);
				},
				function() {
					// �ܧ�ثe���ﶵ���I���C��
					// �P�ɷƥX�l���(�p�G������)
					// �]�i�H���y��W�����g�k
					$(this).css('backgroundColor', '').children('ul').stop(
							true, true).slideUp(400);
				});

		// �����W�s������u��
		$('a').focus(function() {
			this.blur();
		});
	});

	function showpage(page) {
		var page1 = document.getElementById("show_1"); //�|����ƺ��@
		var page2 = document.getElementById("show_2"); //�s�W�|�����
		var page3 = document.getElementById("show_3"); //�S���ӽЮ֭�
		var page4 = document.getElementById("show_4"); //�S����ƺ��@
		var page5 = document.getElementById("show_5"); //�s�W�S�����
		var page6 = document.getElementById("show_6"); //�P�P���ʬd��
		var page7 = document.getElementById("show_7"); //�s�W�P�P����
		var page8 = document.getElementById("show_8"); //�|���I�Ƭd��
		var page9 = document.getElementById("show_9"); //�S���I�Ƭd��
		var page10 = document.getElementById("show_10"); //�I�ƥ���B�z�d��
		var page11 = document.getElementById("show_11"); //�n�J�޲z
		var page12 = document.getElementById("show_12"); //�v���]�w
		var page13 = document.getElementById("show_13"); //��Ƴ]�w
		var page14 = document.getElementById("show_14"); //�{���馩�]�w
		page1.style.display = "none";
		page2.style.display = "none";
		page3.style.display = "none";
		page4.style.display = "none";
		page5.style.display = "none";
		page6.style.display = "none";
		page7.style.display = "none";
		page8.style.display = "none";
		page9.style.display = "none";
		page10.style.display = "none";
		page11.style.display = "none";
		page12.style.display = "none";
		page13.style.display = "none";
		page14.style.display = "none";
		switch (page) {
		case "1":
			page1.style.display = "inline";
			break;
		case "2":
			page2.style.display = "inline";
			break;
		case "3":
			page3.style.display = "inline";
			break;
		case "4":
			page4.style.display = "inline";
			break;
		case "5":
			page5.style.display = "inline";
			break;
		case "6":
			page6.style.display = "inline";
			break;
		case "7":
			page7.style.display = "inline";
			break;
		case "8":
			page8.style.display = "inline";
			break;
		case "9":
			page9.style.display = "inline";
			break;
		case "10":
			page10.style.display = "inline";
			break;
		case "11":
			page11.style.display = "inline";
			break;
		case "12":
			page12.style.display = "inline";
			break;
		case "13":
			page13.style.display = "inline";
			break;
		case "14":
			page14.style.display = "inline";
			break;
		}
	}
</script>

</head>
<body>
	<div>
		<ul id="menus">
			<li><a href="">�|����ƺ޲z</a>
				<ul>
					<li><a onclick="showpage('1');">�|����ƺ��@</a></li>
					<li><a onclick="showpage('2');">�s�W�|�����</a></li>
				</ul></li>
			<li><a href="">�S����ƺ޲z</a>
				<ul>
					<li><a onclick="showpage('3');">�S���ӽЮ֭�</a></li>
					<li><a onclick="showpage('4');">�S����ƺ��@</a></li>
					<li><a onclick="showpage('5');">�s�W�S�����</a></li>
				</ul></li>
			<li><a href="">�P�P���ʺ޲z</a>
				<ul>
					<li><a onclick="showpage('6');">�P�P���ʬd��</a></li>
					<li><a onclick="showpage('7');">�s�W�P�P����</a></li>
				</ul></li>
			<li><a href="">����d��</a>
				<ul>
					<li><a onclick="showpage('8');">�|���I�Ƭd��</a></li>
					<li><a onclick="showpage('9');">�S���I�Ƭd��</a></li>
					<li><a onclick="showpage('10');">�I�ƥ���B�z�d��</a></li>
				</ul></li>
			<li><a href="">�t�κ޲z</a>
				<ul>
					<li><a onclick="showpage('11');">�n�J�޲z</a></li>
					<li><a onclick="showpage('12');">�v���]�w</a></li>
					<li><a onclick="showpage('13');">��Ƴ]�w</a></li>
					<!-- <li><a onclick="showpage('14');">�{���馩�]�w</a></li> -->
				</ul></li>
			<li><a href="../index.jsp">�^����</a></li>
		</ul>
	</div>
	<div id="show_1" style="display: none;" class="level1">
		<!--�|����ƺ��@  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�|���޲z</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���m�W</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�|��ID</TH>
								<TH bgcolor='#85d6d2'>�|���m�W</TH>
								<TH bgcolor='#a9d999'>���A</TH>
								<TH bgcolor='#85d6d2'></TH>
								<TH bgcolor='#a9d999'></TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C00000214</TD>
								<TD bgcolor='#85d6d2'>����</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'><input value="�˵�"
									onclick="showpage('2');" type="button"></TD>
								<TD bgcolor='#a9d999'><input value="�ק�"
									onclick="showpage('2');" type="button"></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C00000327</TD>
								<TD bgcolor='#85d6d2'>�L�@��</TD>
								<TD bgcolor='#a9d999'>���v</TD>
								<TD bgcolor='#85d6d2'><input value="�˵�"
									onclick="showpage('2');" type="button"></TD>
								<TD bgcolor='#a9d999'><input value="�ק�"
									onclick="showpage('2');" type="button"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_2" style="display: none;" class="level1">
		<!--�s�W�|�����  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�|����ƺ��@</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���b��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="userid"
						name="userid"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���d��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="userpwd"
						name="userpwd"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���ʧO</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="1" selected>�k</option>
							<option value="2">�k</option>
					</select></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�l���ϸ�</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="post" name="post">
					</TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���a�}</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="address"
						name="address"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�B�ê��p</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="1" selected>���B</option>
							<option value="2">�w�B</option>
							<option value="3">���B</option>
					</select></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���q��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="phone"
						name="phone"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|�����</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="mobile"
						name="mobile"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�b�����p</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="1" selected>���{��</option>
							<option value="2">����</option>
							<option value="3">���v</option>
					</select></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="submit" value="�x�s" /> <input value="�^����"
						onclick="window.location='default.jsp'" type="button"></TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_3" style="display: none;" class="level1">
		<!--�S���ӽЮ֭�  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�S���ӽЮ֭�</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���m�W</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�S��ID</TH>
								<TH bgcolor='#85d6d2'>�S���W��</TH>
								<TH bgcolor='#a9d999'>�ӽФ��</TH>
								<TH bgcolor='#85d6d2'></TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>S00000214</TD>
								<TD bgcolor='#85d6d2'>���a�����s�ͩ�</TD>
								<TD bgcolor='#a9d999'>2015/11/14</TD>
								<TD bgcolor='#85d6d2'><input value="�f�\"
									onclick="showpage('4');" type="button"></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>S00000327</TD>
								<TD bgcolor='#85d6d2'>�R�R���@����</TD>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'><input value="�f�\"
									onclick="showpage('4');" type="button"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_4" style="display: none;" class="level1">
		<!--�S����ƺ��@  -->
		<form action="" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�S���ө����</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���m�W</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���N��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="shopcode"
						name="shopcode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�Τ@�s��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="taccode"
						name="taccode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���s��</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="01" selected>SOGO�Ʒ~�s</option>
							<option value="02">�R�R�Ʒ~�s</option>
							<option value="03">���a�Ʒ~�s</option>
							<option value="04">���ǨƷ~�s</option>
							<option value="99">�L</option>
					</select></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�l���ϸ�</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="post" name="post">
					</TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���a�}</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="address"
						name="address"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="submit" value="�x�s" /> <input value="�^����"
						onclick="window.location='index.jsp'" type="button"></TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_5" style="display: none;" class="level1">
		<!--�s�W�S�����  -->
		<form action="" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�s�W�S���ө����</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���N��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="shopcode"
						name="shopcode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�Τ@�s��</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="startdate"
						name="startdate">~</TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���s��</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="01" selected>SOGO�Ʒ~�s</option>
							<option value="02">�R�R�Ʒ~�s</option>
							<option value="03">���a�Ʒ~�s</option>
							<option value="04">���ǨƷ~�s</option>
							<option value="99">�L</option>
					</select></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�l���ϸ�</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="post" name="post">
					</TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���a�}</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="address"
						name="address"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="submit" value="�x�s" /> <input value="�^����"
						onclick="window.location='index.jsp'" type="button"></TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_6" style="display: none;" class="level1">
		<!--�P�P���ʬd��  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�P�P���ʬd��</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="shopcode"
						name="shopcode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���W��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="shopcode"
						name="shopcode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�d�ߴ���</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="startdate"
						name="startdate">~ <input type="date" id="enddate"
						name="enddate""></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�P�P���ʥN�X</TH>
								<TH bgcolor='#85d6d2'>�P�P���ʦW��</TH>
								<TH bgcolor='#a9d999'>�P�P�ͮĤ�</TH>
								<TH bgcolor='#85d6d2'>�P�P������</TH>
								<TH bgcolor='#a9d999'>�P�P���ʪ��A</TH>
								<TH bgcolor='#85d6d2'>�P�P���ʻ���</TH>
								<TH bgcolor='#a9d999'></TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050712</TD>
								<TD bgcolor='#85d6d2'>�C�ϫP�P����</TD>
								<TD bgcolor='#a9d999'>2015/11/20</TD>
								<TD bgcolor='#85d6d2'>2015/12/21</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'>�R�d�e�ʡA�B�~�e�I</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050717</TD>
								<TD bgcolor='#85d6d2'>�w�׭C�Ϭ���</TD>
								<TD bgcolor='#a9d999'>2015/12/10</TD>
								<TD bgcolor='#85d6d2'>2015/12/31</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'>�R�U�e�d</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050741</TD>
								<TD bgcolor='#85d6d2'>�y�P�s�~�S�P</TD>
								<TD bgcolor='#a9d999'>2015/12/20</TD>
								<TD bgcolor='#85d6d2'>2016/01/05</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'>���B���O�B�~�e50�I</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050792</TD>
								<TD bgcolor='#85d6d2'>���]�P�P����</TD>
								<TD bgcolor='#a9d999'>2016/01/10</TD>
								<TD bgcolor='#85d6d2'>2016/01/21</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'>���B���I�A�B�~�e100�I</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050811</TD>
								<TD bgcolor='#85d6d2'>�w�׹L�~����</TD>
								<TD bgcolor='#a9d999'>2016/01/20</TD>
								<TD bgcolor='#85d6d2'>2016/02/05</TD>
								<TD bgcolor='#a9d999'>����</TD>
								<TD bgcolor='#85d6d2'>�R�U�e�d</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>C050921</TD>
								<TD bgcolor='#85d6d2'>�y�P�s�~�S�P</TD>
								<TD bgcolor='#a9d999'>2016/02/01</TD>
								<TD bgcolor='#85d6d2'>2016/02/15</TD>
								<TD bgcolor='#a9d999'>���ͮ�</TD>
								<TD bgcolor='#85d6d2'>���B���O�B�~�e50�I</TD>
								<TD bgcolor='#a9d999'><input type="button" value="�]�w" /></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_7" style="display: none;" class="level1">
		<!--�s�W�P�P���� -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�s�W�P�P����</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʥN��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="shopcode"
						name="shopcode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʦW��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="taccode"
						name="taccode"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʥͮĤ�</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="enddate"
						name="enddate" /></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʵ�����</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="enddate"
						name="enddate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʫʭ�</TD>
					<TD bgcolor='#85d6d2'><input type="button" id="address"
						name="address" value="�W�ǹϤ�"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʻ���</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="address"
						name="address"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�P�P���ʯS��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="address"
						name="address"> <input type="button" value="�s�W" /><BR />
						<select name="sex" size="1" id="sex">
							<option value="01" selected>SOGO�Ʒ~�s</option>
							<option value="02">�R�R�Ʒ~�s</option>
							<option value="03">���a�Ʒ~�s</option>
							<option value="04">���ǨƷ~�s</option>
							<option value="99">�L</option>
					</select></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="submit" value="�x�s" /> <input value="�^����"
						onclick="window.location='index.jsp'" type="button"></TD>
				</TR>
			</TABLE>
			<TABLE>
				
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�S���N�X</TH>
								<TH bgcolor='#85d6d2'>�S���W��</TH>
								<TH bgcolor='#a9d999'></TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>S000000132</TD>
								<TD bgcolor='#85d6d2'>���a������</TD>
								<TD bgcolor='#a9d999'>2015/11/20</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>S000000151</TD>
								<TD bgcolor='#85d6d2'>���a������</TD>
								<TD bgcolor='#a9d999'>2015/12/10</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_8" style="display: none;" class="level1">
		<!--�|���I�Ƭd��  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�|���I�ƥ���d��</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���m�W</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�d�ߴ���</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="startdate"
						name="startdate">~ <input type="date" id="enddate"
						name="enddate""></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>���O��</TH>
								<TH bgcolor='#85d6d2'>���O�a�I</TH>
								<TH bgcolor='#a9d999'>���O���B</TH>
								<TH bgcolor='#85d6d2'>�����B</TH>
								<TH bgcolor='#a9d999'>���O���I</TH>
								<TH bgcolor='#85d6d2'>����I��</TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_9" style="display: none;" class="level1">
		<!--�S���I�Ƭd��  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�S���I�ƥ���d��</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���W��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�d�ߴ���</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="startdate"
						name="startdate">~ <input type="date" id="enddate"
						name="enddate""></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>���O��</TH>
								<TH bgcolor='#85d6d2'>���O�a�I</TH>
								<TH bgcolor='#a9d999'>���O���B</TH>
								<TH bgcolor='#85d6d2'>�����B</TH>
								<TH bgcolor='#a9d999'>���O���I</TH>
								<TH bgcolor='#85d6d2'>����I��</TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/15</TD>
								<TD bgcolor='#85d6d2'>���a���_�n����</TD>
								<TD bgcolor='#a9d999'>550</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>5</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21</TD>
								<TD bgcolor='#85d6d2'>SOGO�n����</TD>
								<TD bgcolor='#a9d999'>24,000</TD>
								<TD bgcolor='#85d6d2'>200</TD>
								<TD bgcolor='#a9d999'>200</TD>
								<TD bgcolor='#85d6d2'>10</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_10" style="display: none;" class="level1">
		<!--�I�ƥ���B�z  -->
		<form action="main_mag.jsp" method="get"></form>
	</div>
	<div id="show_11" style="display: none;" class="level1">
		<!--�n�J�޲z  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�n�J�޲z�d��</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�S���W��</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|��ID</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�|���m�W</TD>
					<TD bgcolor='#85d6d2'><input type="text" id="startdate"
						name="startdate"></TD>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�d�ߴ���</TD>
					<TD bgcolor='#85d6d2'><input type="date" id="startdate"
						name="startdate">~ <input type="date" id="enddate"
						name="enddate""></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center"><input
						type="button" value="�d��" /></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�n�J���</TH>
								<TH bgcolor='#85d6d2'>�n�J��</TH>
								<TH bgcolor='#a9d999'>�t�ΥN�X</TH>
								<TH bgcolor='#85d6d2'>�t�ά���</TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21 12:30:24</TD>
								<TD bgcolor='#85d6d2'>C000012148</TD>
								<TD bgcolor='#a9d999'>CA05</TD>
								<TD bgcolor='#85d6d2'>�|��:C000012148�t�εn�J</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>2015/12/21 12:30:24</TD>
								<TD bgcolor='#85d6d2'>C000012148</TD>
								<TD bgcolor='#a9d999'>CA07</TD>
								<TD bgcolor='#85d6d2'></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_12" style="display: none;" class="level1">
		<!--�v���]�w  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�t���v���]�w</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�ϥΪ�����</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="01" selected>�|��</option>
							<option value="02">�S��</option>
							<option value="03">�u�W�ȪA</option>
							<option value="04">�޲z��</option>
					</select></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'></TH>
								<TH bgcolor='#85d6d2'>�v���N�X</TH>
								<TH bgcolor='#a9d999'>�v���W��</TH>
								<TH bgcolor='#85d6d2'>��������</TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'><input type="checkbox" id="startdate"
									name="startdate"></TD>
								<TD bgcolor='#85d6d2'>C01</TD>
								<TD bgcolor='#a9d999'>�|����ƺ��@</TD>
								<TD bgcolor='#85d6d2'>cus_2.jsp</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'><input type="checkbox" id="startdate"
									name="startdate"></TD>
								<TD bgcolor='#85d6d2'>C02</TD>
								<TD bgcolor='#a9d999'>�Y���I�Ƭd��</TD>
								<TD bgcolor='#85d6d2'>cus_3.jsp</TD>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'><input type="checkbox" id="startdate"
									name="startdate"></TD>
								<TD bgcolor='#85d6d2'>C03</TD>
								<TD bgcolor='#a9d999'>�I�ƥ���d��</TD>
								<TD bgcolor='#85d6d2'>cus_4.jsp</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_13" style="display: none;" class="level1">
		<!--��Ƴ]�w  -->
		<form action="main_mag.jsp" method="get">
			<TABLE>
				<TR>
					<TH colspan='2' bgcolor='#d4edec'><label>�򥻸�Ƴ]�w</label></TH>
				</TR>
				<TR>
					<TD bgcolor='#bce6e4' align="right">�N�X�s��</TD>
					<TD bgcolor='#85d6d2'><select name="sex" size="1" id="sex">
							<option value="01" selected>�ʧO</option>
							<option value="02">�|�����A</option>
							<option value="03">�S�����A</option>
							<option value="04">�S�P���A</option>
							<option value="04">�馩�{����v</option>
							<option value="04">������I��v</option>
					</select>
					<input type="button" id="startdate"
									name="startdate"  value="�s�W�s�ն���"></TD>
				</TR>
				<TR>
					<TD colspan='2' bgcolor='#d4edec' align="center">
						<TABLE>
							<TR>
								<TH bgcolor='#a9d999'>�N�XID</TH>
								<TH bgcolor='#85d6d2'>�N�X�ƭ�</TH>
								<TH bgcolor='#a9d999'>�N�X����</TH>
								<TH bgcolor='#85d6d2'></TH>
							</TR>
							<TR>
								<TD bgcolor='#a9d999'>1</TD>
								<TD bgcolor='#85d6d2'>�k</TD>
								<TD bgcolor='#a9d999'>�ʧO-�k</TD>
								<TD bgcolor='#85d6d2'><input type="button" id="startdate"
									name="startdate"  value="�ק�"></TD>
							</TR>
						<TR>
								<TD bgcolor='#a9d999'>2</TD>
								<TD bgcolor='#85d6d2'>�k</TD>
								<TD bgcolor='#a9d999'>�ʧO-�k</TD>
								<TD bgcolor='#85d6d2'><input type="button" id="startdate"
									name="startdate"  value="�ק�"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</div>
	<div id="show_14" style="display: none;" class="level1">
		<!--�{���馩�]�w  -->
		<form action="main_mag.jsp" method="get"></form>
	</div>
</body>
</html>
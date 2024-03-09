package html;

import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import model.Cliente;



/**
 *
 * @author Wesley
 */
public class GeraHTML {
    public String getList(List lista){        
        StringBuffer sb=new StringBuffer();
        sb.append("<table width='100%' border='1'>\r\n"
                + "<tr>\r\n"
                    + "<td>Mã khách hàng</td>"
                    + "<td>Tên khách hàng</td>"
                    + "<td>Email</td>"
                    + "<td>Số điện thoại</td>"
                    + "<td>Giới tính</td>"
                    + "<td>Ngày sinh</td>"
                    + "<td>Thao tác 1</td>"
                    + "<td> Thao tác 2</td>\r\n"
                + "</tr>\r\n");
        for (Iterator it = lista.iterator(); it.hasNext();) {
            String strDate;
            Cliente cli = (Cliente) it.next();
            strDate="Null Value";
            if(cli.getDtnasc()!=null){
                strDate = new SimpleDateFormat("dd/MM/yyyy").format(cli.getDtnasc());
            }
            sb.append("<tr>\r\n"
                        + "<td>"+cli.getId()+"</td>"
                        + "<td>"+cli.getNome()+"</td>"
                        + "<td>"+cli.getEmail()+"</td>"
                        + "<td>"+cli.getTel()+"</td>"
                        + "<td>"+cli.getSexo()+"</td>"
                        + "<td>"+strDate+"</td>"
                        + "<td><a href=form_atualiza.jsp?cpCodigo="+cli.getId()+"> Sua </a></td>"
                        + "<td><a href=excluir.jsp?cpCodigo="+cli.getId()+"> Xoa </a></td>\r\n"
                    + "</tr>\r\n");
        }
        sb.append("</table>");
        return sb.toString();
    }
    
    public String getFormAtualizar(Cliente cli){
        StringBuffer sb=new StringBuffer();
        String checkM = "", checkF = "";
        if(cli.getSexo()=='M'){
            checkM="checked='checked'";
        }else if(cli.getSexo()=='F'){
            checkF="checked='checked'";
        }
        String strDate="Null Value";
        if(cli.getDtnasc()!=null){
                strDate = new SimpleDateFormat("dd/MM/yyyy").format(cli.getDtnasc());
            }
        
        sb.append("<form action='atualizar.jsp' name='atualizar' id='atualizar' method='post'>\n");
        sb.append("Id <input type='text' name='cpCodigo' id='cpCodigo' readonly='true' value='"+cli.getId()+"' /><br/>\r\n"    
                + "\t\tTen <input type='text' name='cpNome' id='cpNome' value='"+cli.getNome()+"' /><br/>\r\n"
                + "\t\tEmail: <input type='text' name='cpEmail' id='cpEmail' value='"+cli.getEmail()+"' /><br/>\r\n"
                + "\t\tSo dien thoai: <input type='text' name='cpTel' id='cpTel' value='"+cli.getTel()+"' /><br/>\r\n"                
                + "\t\tGioi tinh <input type='radio' name='cpSexo' id='cpSexoM' "+checkM+" value='M'> Nam\n"
                + "\t\t      <input type='radio' name='cpSexo' id='cpSexoF' "+checkF+" value='F'> Nu<br/>\r\n"                
                + "\t\tNgay sinh <input type='text' name='cpDataNasc' id='cpDataNasc' value='"+strDate+"' />(Nhap theo dang sau dd/mm/yyyy)<br/>\r\n"
                + "\t\t<br/>\r\n"
                + "\t\t<input type='submit' value='Dang ki'/>\r\n");
        sb.append("\t</form>\r\n");
        return sb.toString();
    }
}
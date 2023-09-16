
package Reportes;

import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

public class Grafico {
    public static void Graficar(String fecha){
        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "SELECT total FROM ventas WHERE fecha = ?";
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, fecha);
            rs = ps.executeQuery();
            DefaultCategoryDataset dataset = new DefaultCategoryDataset(); // Usar un dataset diferente para gráficos de barras

            while (rs.next()) {
            dataset.setValue(rs.getDouble("total"), "Total de Ventas", rs.getString("total"));
        }

            JFreeChart jf = ChartFactory.createBarChart(
                "Reporte de Venta",
                "Total de Ventas",
                "Cantidad",
                dataset,
                PlotOrientation.VERTICAL, // Orientación del gráfico
                true, // Incluir leyendas
                true, // Incluir sugerencias
                false // Sin URL
            );

            ChartFrame f = new ChartFrame("Total de Ventas por día", jf);
            f.setSize(1000, 500);
            f.setLocationRelativeTo(null);
            f.setVisible(true);
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }
}

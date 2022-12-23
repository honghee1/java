package config;

public interface DBConfig {
	public String DB_URL = "jdbc:oracle:thin:@//localhost:1521/xe";
	public String DB_DRIVER = "oracle.jdbc.OracleDriver";
	public String DB_USER = "ksw172";
	public String DB_PASS = "tiger";
}

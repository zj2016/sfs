package cn.edu.zzia.career.pojo;

@SuppressWarnings("serial")
public class Department implements java.io.Serializable {

	private Integer did;
	private String depName;
	private String description;

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}

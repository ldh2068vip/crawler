package com.module.dao.entity.creditchinatwo;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * 不良记录
 */
@Entity
@Table(name = "x_bad_record")
@NamedQuery(name = "BadRecord.findAll", query = "SELECT b FROM BadRecord b")
public class BadRecord implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7023371796517990917L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;// 主键
	private String regNumber;// 企业注册号
	private String companyName;// 企业名称
	private String legalPerson;// 法定代表人
	private String punishNumber;// 处罚决定书文号
	@Basic(fetch = FetchType.EAGER)
	@Column(columnDefinition = "text")
	private String punishContent;// 处罚决定内容（处罚处理内容）
	private String regCapital;// 注册资本
	private String regAuthority;// 登记机关
	private String abode;// 住所
	private String industryCode;// 行业代码
	private String creationDate;// 设立日期
	@Column(length = 4000)
	private String includedReason;// 列入原因
	private String includedDate;// 列入时间
	private String removeDate;// 移出日期
	private String status;// 状态
	private String province;// 省份
	private String taskDate;// 入库时间
	private String punishPerName;// 处罚对象名称
	private String cardNumber;// 证件号码
	private String punishDate;// 处罚处理日期
	@Column(length = 2000)
	private String punishName;// 处罚处理名称
	@Column(length = 2000)
	private String punishType;// 处罚处理种类
	private String punishAuthrity;// 处罚机关
	private String endDate;// 有效截止日期
	@ManyToOne
	@JoinColumn(name = "company_record_id")
	private CompanyRecord companyRecord;
	@Column(length = 1000)
	private String inforSource;// 信息来源（现网站已无该字段）
	private String caseName;// 案件名称（现网站已无该字段）
	private String accepted;// 受理号（现网站已无该字段）
	@Column(length = 4000)
	private String businessType;// 业务类型（现网站已无该字段）
	@Column(length = 4000)
	private String caseNature;// 案件性质（现网站已无该字段）
	@Column(length = 4000)
	private String qualitBasis;// 定性依据（现网站已无该字段）
	@Column(length = 4000)
	private String punishBasis;// 处罚依据（现网站已无该字段）
	private String caseDate;// 立案日期（现网站已无该字段）
	private String deliveryDate;// 处罚决定书送达日期（现网站已无该字段）

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRegNumber() {
		return regNumber;
	}

	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLegalPerson() {
		return legalPerson;
	}

	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}

	public String getPunishNumber() {
		return punishNumber;
	}

	public void setPunishNumber(String punishNumber) {
		this.punishNumber = punishNumber;
	}

	public String getPunishContent() {
		return punishContent;
	}

	public void setPunishContent(String punishContent) {
		this.punishContent = punishContent;
	}

	public String getRegCapital() {
		return regCapital;
	}

	public void setRegCapital(String regCapital) {
		this.regCapital = regCapital;
	}

	public String getRegAuthority() {
		return regAuthority;
	}

	public void setRegAuthority(String regAuthority) {
		this.regAuthority = regAuthority;
	}

	public String getAbode() {
		return abode;
	}

	public void setAbode(String abode) {
		this.abode = abode;
	}

	public String getIndustryCode() {
		return industryCode;
	}

	public void setIndustryCode(String industryCode) {
		this.industryCode = industryCode;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public String getIncludedReason() {
		return includedReason;
	}

	public void setIncludedReason(String includedReason) {
		this.includedReason = includedReason;
	}

	public String getIncludedDate() {
		return includedDate;
	}

	public void setIncludedDate(String includedDate) {
		this.includedDate = includedDate;
	}

	public String getRemoveDate() {
		return removeDate;
	}

	public void setRemoveDate(String removeDate) {
		this.removeDate = removeDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getTaskDate() {
		return taskDate;
	}

	public void setTaskDate(String taskDate) {
		this.taskDate = taskDate;
	}

	public String getPunishPerName() {
		return punishPerName;
	}

	public void setPunishPerName(String punishPerName) {
		this.punishPerName = punishPerName;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getPunishDate() {
		return punishDate;
	}

	public void setPunishDate(String punishDate) {
		this.punishDate = punishDate;
	}

	public String getPunishName() {
		return punishName;
	}

	public void setPunishName(String punishName) {
		this.punishName = punishName;
	}

	public String getPunishType() {
		return punishType;
	}

	public void setPunishType(String punishType) {
		this.punishType = punishType;
	}

	public String getPunishAuthrity() {
		return punishAuthrity;
	}

	public void setPunishAuthrity(String punishAuthrity) {
		this.punishAuthrity = punishAuthrity;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public CompanyRecord getCompanyRecord() {
		return companyRecord;
	}

	public void setCompanyRecord(CompanyRecord companyRecord) {
		this.companyRecord = companyRecord;
	}

	public String getInforSource() {
		return inforSource;
	}

	public void setInforSource(String inforSource) {
		this.inforSource = inforSource;
	}

	public String getCaseName() {
		return caseName;
	}

	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}

	public String getAccepted() {
		return accepted;
	}

	public void setAccepted(String accepted) {
		this.accepted = accepted;
	}

	public String getBusinessType() {
		return businessType;
	}

	public void setBusinessType(String businessType) {
		this.businessType = businessType;
	}

	public String getCaseNature() {
		return caseNature;
	}

	public void setCaseNature(String caseNature) {
		this.caseNature = caseNature;
	}

	public String getQualitBasis() {
		return qualitBasis;
	}

	public void setQualitBasis(String qualitBasis) {
		this.qualitBasis = qualitBasis;
	}

	public String getPunishBasis() {
		return punishBasis;
	}

	public void setPunishBasis(String punishBasis) {
		this.punishBasis = punishBasis;
	}

	public String getCaseDate() {
		return caseDate;
	}

	public void setCaseDate(String caseDate) {
		this.caseDate = caseDate;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	@Override
	public String toString() {
		return "BadRecord [id=" + id + ", regNumber=" + regNumber
				+ ", companyName=" + companyName + ", legalPerson="
				+ legalPerson + ", punishNumber=" + punishNumber
				+ ", punishContent=" + punishContent + ", regCapital="
				+ regCapital + ", regAuthority=" + regAuthority + ", abode="
				+ abode + ", industryCode=" + industryCode + ", creationDate="
				+ creationDate + ", includedReason=" + includedReason
				+ ", includedDate=" + includedDate + ", removeDate="
				+ removeDate + ", status=" + status + ", province=" + province
				+ ", taskDate=" + taskDate + ", punishPerName=" + punishPerName
				+ ", cardNumber=" + cardNumber + ", punishDate=" + punishDate
				+ ", punishName=" + punishName + ", punishType=" + punishType
				+ ", punishAuthrity=" + punishAuthrity + ", endDate=" + endDate
				+ ", companyRecord=" + companyRecord + ", inforSource="
				+ inforSource + ", caseName=" + caseName + ", accepted="
				+ accepted + ", businessType=" + businessType + ", caseNature="
				+ caseNature + ", qualitBasis=" + qualitBasis
				+ ", punishBasis=" + punishBasis + ", caseDate=" + caseDate
				+ ", deliveryDate=" + deliveryDate + "]";
	}

}

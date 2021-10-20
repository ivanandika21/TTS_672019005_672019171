package kedaikopi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

// membuat tabel keranjang
@Entity
@Table(name = "keranjang")
public class Kedaikopi {
	
	// mendeklarasikan variabel untuk dikirim ke db
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "makanan")
	private String makanan;
	
	@Column(name = "minuman")
	private String minuman;
	
	@Column(name = "jumlahMkn")
	private int jumlahMkn;
	
	@Column(name = "jumlahMnm")
	private int jumlahMnm;
	
	@Column(name = "verifikasi")
	private boolean verifikasi;
	
	// membuat getter dan setter
	protected Kedaikopi() {
		
	}
	
	
	
public Kedaikopi(long id, String makanan, String minuman, int jumlahMkn, int jumlahMnm, boolean verifikasi) {
		super();
		this.id = id;
		this.makanan = makanan;
		this.minuman = minuman;
		this.jumlahMkn = jumlahMkn;
		this.jumlahMnm = jumlahMnm;
		this.verifikasi = verifikasi;
	}
	
	public Kedaikopi(String makanan, String minuman, int jumlahMkn, int jumlahMnm, boolean verifikasi) {
		super();
		this.makanan = makanan;
		this.minuman = minuman;
		this.jumlahMkn = jumlahMkn;
		this.jumlahMnm = jumlahMnm;
		this.verifikasi = verifikasi;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMakanan() {
		return makanan;
	}

	public void setMakanan(String makanan) {
		this.makanan = makanan;
	}

	public String getMinuman() {
		return minuman;
	}

	public void setMinuman(String minuman) {
		this.minuman = minuman;
	}

	public int getJumlahMkn() {
		return jumlahMkn;
	}

	public void setJumlahMkn(int jumlahMkn) {
		this.jumlahMkn = jumlahMkn;
	}

	public int getJumlahMnm() {
		return jumlahMnm;
	}

	public void setJumlahMnm(int jumlahMnm) {
		this.jumlahMnm = jumlahMnm;
	}

	public boolean isVerifikasi() {
		return verifikasi;
	}

	public void setVerifikasi(boolean verifikasi) {
		this.verifikasi = verifikasi;
	}


		@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
		// return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Kedaikopi other = (Kedaikopi) obj;
		if (id != other.id) 
			return false;
		return true;
	}
}

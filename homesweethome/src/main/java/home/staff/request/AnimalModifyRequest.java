package home.staff.request;

import home.staff.dto.AnimalVO;
import home.staff.dto.ReceiveVO;

public class AnimalModifyRequest extends AnimalRegistRequest {
	private int[] deleteFile;

	public int[] getDeleteFile() {
		return deleteFile;
	}

	public void setDeleteFile(int[] deleteFile) {
		this.deleteFile = deleteFile;
	}

	@Override
	public AnimalVO toAnimal() {
		return super.toAnimal();
	}

	@Override
	public ReceiveVO toReceive() {
		return super.toReceive();
	}

	@Override
	public String toString() {
		return "AnimalModifyRequest [toAnimal()=" + toAnimal() + ", toReceive()=" + toReceive() + ", getPictureList()="
				+ getPictureList() + ", getAid()=" + getAid() + ", getName()=" + getName() + ", getState()="
				+ getState() + ", getCharacter()=" + getCharacter() + ", getColor()=" + getColor() + ", getWeight()="
				+ getWeight() + ", getNeutralization()=" + getNeutralization() + ", getAge()=" + getAge()
				+ ", getOther()=" + getOther() + ", getEid()=" + getEid() + ", getBreed()=" + getBreed()
				+ ", getKind()=" + getKind() + ", getGender()=" + getGender() + "]";
	}
	
	
	
}

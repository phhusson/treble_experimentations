import vendor.huawei.hardware.biometrics.fingerprint.V2_1.IExtBiometricsFingerprint;
public class Test {
	static public void main(String[] args) {
		System.out.println("Hello");
		IExtBiometricsFingerprint service = IExtBiometricsFingerprint.getService();
		service.sendCmdToHal(0x29);
	}
};

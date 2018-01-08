package vendor.huawei.hardware.biometrics.fingerprint.V2_1;

public interface IExtBiometricsFingerprint {
	public abstract int sendCmdToHal(int v);
	public static IExtBiometricsFingerprint getService() { return null; };
};

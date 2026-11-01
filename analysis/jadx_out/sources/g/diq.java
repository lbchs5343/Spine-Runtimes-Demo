package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class diq {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f14238a;

    static {
        byte[] bArr = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 10; i++) {
            bArr[i + 48] = (byte) i;
        }
        for (int i2 = 0; i2 < 26; i2++) {
            byte b2 = (byte) (i2 + 10);
            bArr[i2 + 65] = b2;
            bArr[i2 + 97] = b2;
        }
        f14238a = bArr;
    }
}

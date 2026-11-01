package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class che {

    /* renamed from: a, reason: collision with root package name */
    public int f12870a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f12871b = new int[10];

    public final int c() {
        if ((this.f12870a & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            return this.f12871b[7];
        }
        return 65535;
    }

    public final void d(che cheVar) {
        bff.p(cheVar, "other");
        for (int i = 0; i < 10; i++) {
            if (((1 << i) & cheVar.f12870a) != 0) {
                e(i, cheVar.f12871b[i]);
            }
        }
    }

    public final void e(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f12871b;
            if (i >= iArr.length) {
                return;
            }
            this.f12870a = (1 << i) | this.f12870a;
            iArr[i] = i2;
        }
    }
}

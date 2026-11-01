package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class bft extends bpu {
    @Override // g.bpu
    public final int a(int i) {
        return i;
    }

    @Override // g.bpu
    public final int b(int i) {
        int i2 = i + TTAdConstant.INIT_LOCAL_FAIL_CODE;
        if (i2 < this.f11978c.length()) {
            return i2;
        }
        return -1;
    }
}

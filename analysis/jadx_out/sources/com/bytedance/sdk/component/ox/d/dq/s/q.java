package com.bytedance.sdk.component.ox.d.dq.s;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: d, reason: collision with root package name */
    private final int[] f2104d = new int[10];
    private int dq;

    public int d() {
        return Integer.bitCount(this.dq);
    }

    public int d(int i) {
        return this.f2104d[i];
    }

    public q dq(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f2104d;
            if (i < iArr.length) {
                this.dq = (1 << i) | this.dq;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public void dq() {
        this.dq = 0;
        Arrays.fill(this.f2104d, 0);
    }

    public void dq(q qVar) {
        for (int i = 0; i < 10; i++) {
            if (qVar.dq(i)) {
                dq(i, qVar.d(i));
            }
        }
    }

    public boolean dq(int i) {
        return ((1 << i) & this.dq) != 0;
    }

    public int ox() {
        if ((this.dq & 2) != 0) {
            return this.f2104d[1];
        }
        return -1;
    }

    public int ox(int i) {
        return (this.dq & 16) != 0 ? this.f2104d[4] : i;
    }

    public int p() {
        if ((this.dq & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            return this.f2104d[7];
        }
        return 65535;
    }

    public int p(int i) {
        return (this.dq & 32) != 0 ? this.f2104d[5] : i;
    }
}

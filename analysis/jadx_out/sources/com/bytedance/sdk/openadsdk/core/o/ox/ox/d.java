package com.bytedance.sdk.openadsdk.core.o.ox.ox;

import com.bytedance.sdk.openadsdk.core.r.r;

/* loaded from: classes3.dex */
public class d extends dq {
    private boolean s = false;
    private int iw = 0;
    private boolean mn = false;

    public void d(boolean z) {
        this.s = z;
    }

    public void dq(int i) {
        this.iw = i;
    }

    public void ox(boolean z) {
        this.mn = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ox.dq
    public boolean ox() {
        this.ox = 1;
        boolean z = iw.p;
        int ig = r.ig(this.f3323d);
        if (z) {
            ig = 0;
            iw.p = false;
        }
        if (this.mn) {
            return p();
        }
        if (this.s) {
            int i = this.iw;
            if (i == 2) {
                return p();
            }
            if (ig == 2 && i == 1) {
                return p();
            }
        }
        if (ig == 0) {
            return p();
        }
        return true;
    }
}

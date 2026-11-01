package com.bytedance.sdk.component.iw.p;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.iw.q;

/* loaded from: classes.dex */
public class s extends dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.iw.iw f1980d;
    private byte[] dq;

    public s(byte[] bArr, com.bytedance.sdk.component.iw.iw iwVar) {
        this.dq = bArr;
        this.f1980d = iwVar;
    }

    private void dq(int i, String str, Throwable th, com.bytedance.sdk.component.iw.ox.ox oxVar) {
        if (this.f1980d == null) {
            oxVar.dq(new no());
        } else {
            oxVar.dq(new ia(i, str, th));
        }
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "decode";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        com.bytedance.sdk.component.iw.ox.iw r = oxVar.r();
        com.bytedance.sdk.component.iw.ox.d.dq dq = r.dq(oxVar);
        try {
            q k = oxVar.k();
            if (k != null) {
                k.dq(10, null);
            }
            Bitmap dq2 = dq.dq(this.dq);
            if (dq2 != null) {
                oxVar.dq(new mp(dq2, this.dq, this.f1980d, false));
                r.dq(oxVar.i()).dq(oxVar.mn(), dq2);
            } else {
                dq(1002, "decode failed bitmap null", null, oxVar);
            }
            if (k != null) {
                k.dq(11, dq2);
            }
        } catch (Throwable th) {
            dq(1002, "decode failed:" + th.getMessage(), th, oxVar);
        }
    }
}

package com.bytedance.sdk.component.iw.ox.dq.d;

import com.bytedance.sdk.component.iw.gh;

/* loaded from: classes.dex */
public class ox implements gh {

    /* renamed from: d, reason: collision with root package name */
    private int f1951d;
    private int dq;
    private com.bytedance.sdk.component.iw.ox.dq.ox<String, byte[]> ox;

    public ox(int i, int i2) {
        this.f1951d = i;
        this.dq = i2;
        this.ox = new com.bytedance.sdk.component.iw.ox.dq.ox<String, byte[]>(i) { // from class: com.bytedance.sdk.component.iw.ox.dq.d.ox.1
            @Override // com.bytedance.sdk.component.iw.ox.dq.ox
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int d(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean d(String str) {
        return this.ox.dq((com.bytedance.sdk.component.iw.ox.dq.ox<String, byte[]>) str) != null;
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public void dq(double d2) {
        this.ox.dq((int) (this.f1951d * d2));
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean dq(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.ox.dq(str, bArr);
        return true;
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public byte[] dq(String str) {
        return this.ox.dq((com.bytedance.sdk.component.iw.ox.dq.ox<String, byte[]>) str);
    }
}

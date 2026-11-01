package com.bytedance.sdk.component.iw.p;

/* loaded from: classes.dex */
public class d implements kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.iw.iw f1976d;
    private byte[] dq;

    public d(byte[] bArr, com.bytedance.sdk.component.iw.iw iwVar) {
        this.dq = bArr;
        this.f1976d = iwVar;
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "image_type";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        kk sVar;
        int mp = oxVar.mp();
        oxVar.dq(this.dq.length);
        if (mp == 2) {
            sVar = com.bytedance.sdk.component.iw.ox.ox.dq.dq(this.dq) ? new s(this.dq, this.f1976d) : this.f1976d == null ? new no() : new ia(1001, "not image format", null);
        } else if (mp != 3) {
            boolean d2 = com.bytedance.sdk.component.iw.ox.ox.dq.d(this.dq);
            if (d2) {
                byte[] bArr = this.dq;
                sVar = new mp(bArr, bArr, this.f1976d, d2);
            } else if (com.bytedance.sdk.component.iw.ox.ox.dq.dq(this.dq)) {
                sVar = new s(this.dq, this.f1976d);
            } else {
                byte[] bArr2 = this.dq;
                sVar = new mp(bArr2, bArr2, this.f1976d, d2);
            }
        } else {
            byte[] bArr3 = this.dq;
            sVar = new mp(bArr3, bArr3, this.f1976d, com.bytedance.sdk.component.iw.ox.ox.dq.d(bArr3));
        }
        oxVar.dq(sVar);
    }
}

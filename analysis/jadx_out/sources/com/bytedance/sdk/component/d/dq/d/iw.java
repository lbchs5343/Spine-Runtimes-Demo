package com.bytedance.sdk.component.d.dq.d;

/* loaded from: classes.dex */
final class iw {

    /* renamed from: d, reason: collision with root package name */
    int f1832d;
    final byte[] dq;
    iw iw;
    iw mn;
    int ox;
    boolean p;
    boolean s;

    public iw() {
        this.dq = new byte[8192];
        this.s = true;
        this.p = false;
    }

    public iw(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.dq = bArr;
        this.f1832d = i;
        this.ox = i2;
        this.p = z;
        this.s = z2;
    }

    public final iw d() {
        iw iwVar = this.iw;
        iw iwVar2 = iwVar != this ? iwVar : null;
        iw iwVar3 = this.mn;
        if (iwVar3 != null) {
            iwVar3.iw = iwVar;
        }
        iw iwVar4 = this.iw;
        if (iwVar4 != null) {
            iwVar4.mn = iwVar3;
        }
        this.iw = null;
        this.mn = null;
        return iwVar2;
    }

    public final iw dq() {
        this.p = true;
        return new iw(this.dq, this.f1832d, this.ox, true, false);
    }

    public final iw dq(iw iwVar) {
        iwVar.mn = this;
        iwVar.iw = this.iw;
        this.iw.mn = iwVar;
        this.iw = iwVar;
        return iwVar;
    }
}

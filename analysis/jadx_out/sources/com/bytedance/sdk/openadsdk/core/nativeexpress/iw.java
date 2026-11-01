package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;

/* loaded from: classes3.dex */
public class iw extends com.bytedance.sdk.openadsdk.core.d.d {
    private com.bytedance.sdk.openadsdk.core.r.k dq;
    protected int ig;
    protected int mp;
    private boolean no;
    protected int q;

    public iw(Context context, j jVar, String str, int i) {
        super(context, jVar, str, i);
        this.ig = 0;
        this.mp = -1;
        this.q = -1;
        this.no = true;
    }

    private com.bytedance.sdk.openadsdk.core.r.kk dq(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View mn = this.ia.mn();
        int[] dq = ce.dq(mn);
        if (dq == null || dq.length != 2) {
            i = 0;
            i2 = 0;
        } else {
            i = dq[0];
            i2 = dq[1];
            if (this.ig == 0 && this.no) {
                this.ia.dq((ce.ox(this.mn, r8.q()) + i) - 0.5f);
                this.ia.d((ce.ox(this.mn, r8.jy()) + i2) - 0.5f);
                this.ia.ox((ce.ox(this.mn, r8.f()) + i) - 0.5f);
                this.ia.p((ce.ox(this.mn, r8.fw()) + i2) - 0.5f);
            }
        }
        float iw = ce.iw(this.mn);
        int ia = ce.ia(this.mn);
        float mn2 = ce.mn(this.mn);
        int[] iArr = {-1, -1};
        int[] iArr2 = {-1, -1};
        com.bytedance.sdk.openadsdk.core.r.k kVar = this.dq;
        if (kVar == null || !this.no) {
            i3 = 0;
        } else {
            this.ia.dq(kVar.s);
            int i6 = i;
            i3 = 0;
            this.ia.d(this.dq.iw);
            if (this.ig == 0) {
                iArr[0] = ce.ox(this.mn, this.dq.mn) + i6;
                iArr[1] = ce.ox(this.mn, this.dq.ia) + i2;
                i5 = ce.ox(this.mn, this.dq.kk);
                i4 = ce.ox(this.mn, this.dq.o);
            } else {
                com.bytedance.sdk.openadsdk.core.r.k kVar2 = this.dq;
                iArr[0] = kVar2.mn;
                iArr[1] = kVar2.ia;
                int i7 = kVar2.kk;
                i4 = kVar2.o;
                i5 = i7;
            }
            iArr2[0] = i5;
            iArr2[1] = i4;
            View iw2 = this.ia.iw();
            if (i5 == 0 && i4 == 0 && iw2 != null) {
                iArr = ce.dq(iw2);
                iArr2 = ce.ox(iw2);
            }
        }
        this.ig = i3;
        return new kk.dq().iw(this.ia.q()).s(this.ia.jy()).p(this.ia.f()).ox(this.ia.fw()).d(this.ia.ig()).dq(this.ia.mp()).d(dq).dq(iArr).ox(ce.ox(mn)).p(iArr2).ox(this.ia.d()).p(this.ia.ox()).s(this.ia.p()).d(com.bytedance.sdk.openadsdk.core.no.ia().ox() ? 1 : 2).dq(this.ia.o()).dq(str).dq(iw).dq(ia).iw(this.mp).mn(this.q).d(mn2).dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
    public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
        com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class);
        dqVar.dq(dq(dqVar.ox()));
        super.dq(view, oVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void dq(com.bytedance.sdk.openadsdk.core.r.k kVar) {
        this.dq = kVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void ox() {
        this.mp = 1;
        this.no = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void p() {
        this.q = 1;
        this.no = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void s(int i) {
        this.ig = i;
    }
}

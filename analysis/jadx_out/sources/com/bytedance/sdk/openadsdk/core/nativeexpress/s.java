package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.openadsdk.core.d.dq {
    private com.bytedance.sdk.openadsdk.core.r.k dq;
    protected int ig;
    protected int mp;
    private boolean no;
    protected int q;

    public s(Context context, j jVar, String str, int i) {
        super(context, jVar, str, i);
        this.ig = 0;
        this.mp = -1;
        this.q = -1;
        this.no = true;
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.mn) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.mn.class)).dq(true);
        if (jVar == null) {
            return;
        }
        com.bytedance.sdk.component.no.s.dq.dq().dq(jVar.hashCode() + jVar.el()).put("is_express_ad", Boolean.TRUE);
    }

    public com.bytedance.sdk.openadsdk.core.r.kk dq(String str) {
        int i;
        int i2;
        String str2;
        String str3;
        String str4;
        String str5;
        int i3;
        int i4;
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
        int[] iArr = {-1, -1};
        int[] iArr2 = new int[2];
        com.bytedance.sdk.openadsdk.core.r.k kVar = this.dq;
        if (kVar == null || !this.no) {
            str2 = "";
            str3 = str;
            str4 = "";
            str5 = str4;
        } else {
            this.ia.dq(kVar.s);
            this.ia.d(this.dq.iw);
            if (this.ig == 0) {
                iArr[0] = ce.ox(this.mn, this.dq.mn) + i;
                iArr[1] = ce.ox(this.mn, this.dq.ia) + i2;
                i4 = ce.ox(this.mn, this.dq.kk);
                i3 = ce.ox(this.mn, this.dq.o);
            } else {
                com.bytedance.sdk.openadsdk.core.r.k kVar2 = this.dq;
                iArr[0] = kVar2.mn;
                iArr[1] = kVar2.ia;
                int i5 = kVar2.kk;
                i3 = kVar2.o;
                i4 = i5;
            }
            str3 = TextUtils.isEmpty(str) ? this.dq.no : str;
            com.bytedance.sdk.openadsdk.core.r.k kVar3 = this.dq;
            str2 = kVar3.ig;
            str5 = kVar3.mp;
            str4 = kVar3.q;
            iArr2[0] = i4;
            iArr2[1] = i3;
            View iw = this.ia.iw();
            if (i4 == 0 && i3 == 0 && iw != null) {
                iArr = ce.dq(iw);
                iArr2 = ce.ox(iw);
            }
        }
        this.ig = 0;
        return new kk.dq().iw(this.ia.q()).s(this.ia.jy()).p(this.ia.f()).ox(this.ia.fw()).d(this.ia.ig()).dq(this.ia.mp()).d(dq).dq(iArr).ox(ce.ox(mn)).p(iArr2).ox(this.ia.d()).p(this.ia.ox()).s(this.ia.p()).d(com.bytedance.sdk.openadsdk.core.no.ia().ox() ? 1 : 2).dq(this.ia.o()).dq(str3).d(str5).ox(str2).p(str4).dq(ce.iw(this.mn)).dq(ce.ia(this.mn)).iw(this.mp).mn(this.q).d(ce.mn(this.mn)).s(this.ia.cd()).ia(this.ia.gh()).dq();
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

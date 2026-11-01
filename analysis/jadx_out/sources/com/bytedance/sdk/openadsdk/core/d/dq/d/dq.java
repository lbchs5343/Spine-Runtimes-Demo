package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq extends d {
    private int iw;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.ox s;

    public dq() {
    }

    public dq(j jVar, Context context) {
        this.dq = jVar;
        this.f2787d = context;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        if (this.s == null) {
            return 0;
        }
        if (this.ox == null) {
            this.ox = new com.bytedance.sdk.openadsdk.core.r.o();
        }
        View iw = this.ox.iw();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (iw != null) {
            iArr = ce.dq(iw);
            iArr2 = ce.ox(iw);
        }
        this.s.dq(this.p, this.iw, new k.dq().p(this.ox.q()).ox(this.ox.jy()).d(this.ox.f()).dq(this.ox.fw()).d(this.ox.ig()).dq(this.ox.mp()).dq(iArr[0]).d(iArr[1]).ox(iArr2[0]).p(iArr2[1]).dq(this.ox.s()).dq(this.ox.o()).dq());
        return 1;
    }

    public void dq(int i) {
        this.iw = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public void dq(View view) {
        this.p = view;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.nativeexpress.ox oxVar) {
        this.s = oxVar;
    }
}

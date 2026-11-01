package com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;

/* loaded from: classes3.dex */
public abstract class dq extends com.bytedance.sdk.openadsdk.core.component.reward.ox.d {
    protected String dq;

    public dq(Activity activity, j jVar) {
        super(activity, jVar);
    }

    public dq(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq dq(o oVar) {
        p pVar = new p(this.ia, this.mn);
        pVar.p(this.no);
        pVar.ox(this.ig);
        pVar.d(this.jy);
        pVar.dq(this.dq);
        return pVar.dq(oVar);
    }

    public void dq(String str) {
        this.dq = str;
    }
}

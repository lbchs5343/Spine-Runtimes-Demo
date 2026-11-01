package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xi;

/* loaded from: classes3.dex */
public abstract class dq extends d {

    /* renamed from: d, reason: collision with root package name */
    protected int f2630d;
    protected int dq;
    protected boolean iw;
    protected boolean ox;
    protected boolean p;
    protected boolean s;

    public dq(Activity activity, j jVar) {
        super(activity, jVar);
    }

    public dq(Activity activity, j jVar, xi xiVar) {
        super(activity, jVar, xiVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        mp mpVar = new mp(this.ia, this.mn);
        mpVar.d(this.p);
        mpVar.dq(this.ox);
        mpVar.dq(this.dq);
        mpVar.d(this.f2630d);
        mpVar.p(this.no);
        mpVar.ox(this.ig);
        mpVar.dq(this.f2625f);
        mpVar.d(this.jy);
        mpVar.ox(this.iw);
        mpVar.p(this.s);
        return mpVar.d(oVar);
    }

    public void d(int i) {
        this.f2630d = i;
    }

    public void d(boolean z) {
        this.p = z;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(boolean z) {
        this.ox = z;
    }

    public void ox(boolean z) {
        this.iw = z;
    }

    public void p(boolean z) {
        this.s = z;
    }
}

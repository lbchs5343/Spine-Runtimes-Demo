package com.bytedance.sdk.openadsdk.core.component.reward.s;

import com.bytedance.sdk.openadsdk.core.component.reward.d.iw;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private int f2650d;
    private final int dq;
    private int ox;
    private iw p;

    public ox(boolean z, j jVar, iw iwVar) {
        this.p = iwVar;
        this.dq = z ? wp.d().s(c.kk(jVar)) : wp.d().iw(c.kk(jVar));
    }

    public void d() {
        this.f2650d++;
    }

    public long dq() {
        return this.p.op();
    }

    public void dq(int i) {
        this.ox += i;
    }

    public int ox() {
        return this.f2650d;
    }

    public int p() {
        return this.ox;
    }

    public int s() {
        return this.dq;
    }
}

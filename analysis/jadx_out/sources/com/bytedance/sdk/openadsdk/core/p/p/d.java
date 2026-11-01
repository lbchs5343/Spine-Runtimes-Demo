package com.bytedance.sdk.openadsdk.core.p.p;

import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.mn;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    protected int f3382d;
    protected mn.dq dq;
    protected com.bytedance.sdk.openadsdk.core.p.d.dq ox = d();
    protected com.bytedance.sdk.openadsdk.core.p.dq.d p = ox();

    public d(int i) {
        this.f3382d = i;
        this.dq = dq(i);
    }

    private com.bytedance.sdk.openadsdk.core.p.d.dq d() {
        int p = p();
        return p != -1 ? p != 0 ? p != 1 ? p != 3 ? dq.d(this.f3382d) : new com.bytedance.sdk.openadsdk.core.p.d.p(this.f3382d) : new com.bytedance.sdk.openadsdk.core.p.d.s(this.f3382d) : new com.bytedance.sdk.openadsdk.core.p.d.d(this.f3382d) : new com.bytedance.sdk.openadsdk.core.p.d.ox(this.f3382d);
    }

    public static mn.dq dq(int i) {
        if (i == 7) {
            return mn.dq();
        }
        if (i != 8) {
            return null;
        }
        return mn.d();
    }

    private com.bytedance.sdk.openadsdk.core.p.dq.d ox() {
        int i = this.f3382d;
        if (i == 7) {
            return new com.bytedance.sdk.openadsdk.core.p.dq.ox(this);
        }
        if (i != 8) {
            return null;
        }
        return new com.bytedance.sdk.openadsdk.core.p.dq.dq(this);
    }

    private int p() {
        mn.dq dqVar = this.dq;
        if (dqVar == null) {
            return -2;
        }
        if (dqVar.mn() && wp.d().hz()) {
            return this.dq.p();
        }
        return -1;
    }

    public com.bytedance.sdk.openadsdk.core.p.d.dq dq() {
        return this.ox;
    }

    public boolean dq(j jVar) {
        return com.bytedance.sdk.openadsdk.core.live.d.dq().ox(jVar) != 3;
    }
}

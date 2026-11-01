package com.bytedance.sdk.openadsdk.core.component.reward.dq;

import com.bytedance.sdk.openadsdk.f.d.d.f;
import com.bytedance.sdk.openadsdk.f.d.d.ig;
import com.bytedance.sdk.openadsdk.r.dq.d.dq.mn;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.p f2583d;
    private mn dq;

    public ox(mn mnVar) {
        this.dq = mnVar;
    }

    public ox(com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        this.f2583d = pVar;
    }

    public void d(Object obj) {
        mn mnVar = this.dq;
        if (mnVar != null && (obj instanceof f)) {
            mnVar.dq();
            this.dq.d((f) obj);
        }
        com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar = this.f2583d;
        if (pVar == null || !(obj instanceof ig)) {
            return;
        }
        pVar.dq();
        this.f2583d.d((ig) obj);
    }

    public long dq() {
        Object obj = this.dq;
        if (obj != null) {
            return obj instanceof com.bytedance.sdk.openadsdk.core.dq.d ? ((com.bytedance.sdk.openadsdk.core.dq.d) obj).d() : System.currentTimeMillis();
        }
        Object obj2 = this.f2583d;
        if (obj2 != null) {
            return obj2 instanceof com.bytedance.sdk.openadsdk.core.dq.d ? ((com.bytedance.sdk.openadsdk.core.dq.d) obj2).d() : System.currentTimeMillis();
        }
        return 0L;
    }

    public void dq(int i, String str) {
        mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.dq(i, str);
        }
        com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar = this.f2583d;
        if (pVar != null) {
            pVar.dq(i, str);
        }
    }

    public void dq(Object obj) {
        mn mnVar = this.dq;
        if (mnVar != null && (obj instanceof f)) {
            mnVar.dq((f) obj);
        }
        com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar = this.f2583d;
        if (pVar == null || !(obj instanceof ig)) {
            return;
        }
        pVar.dq((ig) obj);
    }
}

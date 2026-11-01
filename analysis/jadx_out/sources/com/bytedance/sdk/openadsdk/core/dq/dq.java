package com.bytedance.sdk.openadsdk.core.dq;

import com.bytedance.sdk.openadsdk.core.h;

/* loaded from: classes3.dex */
public class dq implements h.d {

    /* renamed from: d, reason: collision with root package name */
    private int f2819d;
    private h.d dq;

    public dq(h.d dVar) {
        this.dq = dVar;
    }

    public void dq(int i) {
        this.f2819d = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.h.d
    public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar) {
        h.d dVar2 = this.dq;
        if (dVar2 != null) {
            dVar2.dq(i, str, dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.h.d
    public void dq(final com.bytedance.sdk.openadsdk.core.r.dq dqVar, final com.bytedance.sdk.openadsdk.core.r.d dVar) {
        int i = this.f2819d;
        boolean z = i == 3 || i == 4;
        if (z && (com.bytedance.sdk.openadsdk.core.ox.p.dq().op() & 1) == 1) {
            h.d dVar2 = this.dq;
            if (dVar2 != null) {
                dVar2.dq(dqVar, dVar);
                return;
            }
            return;
        }
        if (this.dq != null) {
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.dq.dq(dqVar, dVar);
                }
            };
            if (z) {
                com.bytedance.sdk.openadsdk.h.mn.dq(runnable);
            } else {
                com.bytedance.sdk.openadsdk.h.mn.d(runnable);
            }
        }
    }
}

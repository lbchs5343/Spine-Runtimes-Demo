package com.bytedance.sdk.openadsdk.core.p.p;

import com.bytedance.sdk.openadsdk.h.mn;

/* loaded from: classes3.dex */
public class iw implements s {
    private s dq;

    public iw(s sVar) {
        this.dq = sVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.s
    public void d(final Object obj) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.p.iw.2
            @Override // java.lang.Runnable
            public void run() {
                if (iw.this.dq != null) {
                    iw.this.dq.d(obj);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.s
    public void dq(final int i, final String str) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.p.iw.3
            @Override // java.lang.Runnable
            public void run() {
                if (iw.this.dq != null) {
                    iw.this.dq.dq(i, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.p.s
    public void dq(final Object obj) {
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.p.iw.1
            @Override // java.lang.Runnable
            public void run() {
                if (iw.this.dq != null) {
                    iw.this.dq.dq(obj);
                }
            }
        });
    }
}

package com.bytedance.sdk.openadsdk.core.o;

import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.no;

/* loaded from: classes3.dex */
public class p implements dq.d {

    public static class dq {
        private static p dq = new p();
    }

    private p() {
        com.bytedance.sdk.openadsdk.core.ir.dq p = no.ia().p();
        if (p != null) {
            p.dq(this);
        }
    }

    public static p ox() {
        return dq.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void d() {
        com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("dl_work") { // from class: com.bytedance.sdk.openadsdk.core.o.p.1
            @Override // java.lang.Runnable
            public void run() {
                no.ia().dq(o.dq());
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void dq() {
    }
}

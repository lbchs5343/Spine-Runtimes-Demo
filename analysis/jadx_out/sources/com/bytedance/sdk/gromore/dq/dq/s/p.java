package com.bytedance.sdk.gromore.dq.dq.s;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.admanager.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;

/* loaded from: classes.dex */
public class p implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2359d;
    private o dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.mn ox;
    private d p;

    public p(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.mn mnVar) {
        this.f2359d = dqVar;
        if (dqVar != null) {
            this.dq = new o(context, dqVar.mn());
            this.ox = mnVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        HashMap hashMap = new HashMap();
        String f2 = this.f2359d.f();
        if (!TextUtils.isEmpty(f2)) {
            hashMap.put(MediationConstant.ADN_GDT, f2);
        }
        this.dq.dq(new com.bytedance.msdk.api.dq.d(7, this.f2359d.ox()), new com.bytedance.msdk.api.p.dq.ia.d() { // from class: com.bytedance.sdk.gromore.dq.dq.s.p.1
            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void d() {
                if (p.this.ox != null) {
                    p.this.ox.dq();
                    if (p.this.p == null) {
                        p pVar = p.this;
                        pVar.p = new d(pVar.dq);
                    }
                    p.this.ox.d(p.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void dq() {
                if (p.this.ox != null) {
                    if (p.this.p == null) {
                        p pVar = p.this;
                        pVar.p = new d(pVar.dq);
                    }
                    p.this.ox.dq(p.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || p.this.ox == null) {
                    return;
                }
                p.this.ox.dq(dqVar.dq, dqVar.f756d);
            }
        });
    }
}

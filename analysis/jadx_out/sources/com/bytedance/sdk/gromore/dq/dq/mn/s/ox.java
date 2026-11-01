package com.bytedance.sdk.gromore.dq.dq.mn.s;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.ox.p.ig;
import com.bytedance.sdk.gromore.dq.dq.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.r.dq.d.dq.mn;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ox implements s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2340d;
    private ig dq;
    private mn ox;
    private dq p;

    public ox(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, mn mnVar) {
        this.f2340d = dqVar;
        if (dqVar != null) {
            this.dq = new ig(context);
            this.ox = mnVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        HashMap hashMap = new HashMap();
        String f2 = this.f2340d.f();
        if (!TextUtils.isEmpty(f2)) {
            hashMap.put(MediationConstant.ADN_GDT, f2);
        }
        this.dq.dq(new com.bytedance.msdk.api.dq.d(7, this.f2340d.ox()), new com.bytedance.msdk.api.p.dq.ia.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.s.ox.1
            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void d() {
                if (ox.this.ox != null) {
                    ox.this.ox.dq();
                    if (ox.this.p == null) {
                        ox oxVar = ox.this;
                        oxVar.p = new dq(oxVar.dq);
                    }
                    ox.this.ox.d(ox.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void dq() {
                if (ox.this.ox != null) {
                    if (ox.this.p == null) {
                        ox oxVar = ox.this;
                        oxVar.p = new dq(oxVar.dq);
                    }
                    ox.this.ox.dq(ox.this.p);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.ia.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || ox.this.ox == null) {
                    return;
                }
                ox.this.ox.dq(dqVar.dq, dqVar.f756d);
            }
        });
    }
}

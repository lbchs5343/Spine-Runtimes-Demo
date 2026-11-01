package com.bytedance.sdk.gromore.dq.dq.dq;

import android.app.Activity;
import java.util.Map;

/* loaded from: classes.dex */
public class s extends com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.ox {
    private com.bytedance.msdk.api.p.d dq;

    public s(Activity activity, Map<String, Object> map, com.bytedance.msdk.api.p.dq.dq.ox oxVar) {
        if (oxVar == null || activity == null) {
            return;
        }
        if (map != null) {
            this.dq = oxVar.dq(activity, map);
        } else {
            this.dq = oxVar.dq(activity);
        }
    }

    public s(com.bytedance.msdk.api.p.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.ox
    public void dq() {
        com.bytedance.msdk.api.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.ox
    public void dq(final com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(new com.bytedance.msdk.api.p.mn() { // from class: com.bytedance.sdk.gromore.dq.dq.dq.s.1
                @Override // com.bytedance.msdk.api.p.mn
                public void d() {
                    com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.d();
                    }
                }

                @Override // com.bytedance.msdk.api.p.mn
                public void dq() {
                    com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.mn
                public void dq(int i, String str) {
                    com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        dqVar2.dq(i, str);
                    }
                }
            });
        }
    }
}

package com.bytedance.sdk.gromore.init;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class kk extends com.bytedance.sdk.openadsdk.mediation.dq.d.d.dq {
    private com.bytedance.msdk.core.admanager.s dq;

    public kk(com.bytedance.msdk.core.admanager.s sVar) {
        this.dq = sVar;
    }

    public void d(String str, final com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar) {
        com.bytedance.msdk.core.admanager.s sVar;
        if (TextUtils.isEmpty(str) || (sVar = this.dq) == null || dVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "adm 参数错误 或者 drawTokenInfo is null");
        } else {
            sVar.dq(str, new com.bytedance.msdk.api.p.dq.ox.ox() { // from class: com.bytedance.sdk.gromore.init.kk.1
                @Override // com.bytedance.msdk.api.p.dq.ox.ox
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                    if (dqVar != null) {
                        dVar.dq(dqVar.dq, dqVar.f756d);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.ox
                public void dq(List<com.bytedance.msdk.api.p.dq.ox.dq> list) {
                    if (list == null) {
                        dVar.dq(null);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (com.bytedance.msdk.api.p.dq.ox.dq dqVar : list) {
                        if (dqVar != null) {
                            arrayList.add(new com.bytedance.sdk.gromore.dq.dq.d.ox(kk.this.dq, dqVar));
                        }
                    }
                    dVar.dq(arrayList);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.d.dq
    public void dq(String str, com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar) {
        d(str, dVar);
    }
}

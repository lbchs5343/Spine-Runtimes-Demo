package com.bytedance.sdk.gromore.init;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class no extends com.bytedance.sdk.openadsdk.mediation.dq.d.d.d {
    private com.bytedance.msdk.core.admanager.ia dq;

    public no(com.bytedance.msdk.core.admanager.ia iaVar) {
        this.dq = iaVar;
    }

    public void d(String str, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        com.bytedance.msdk.core.admanager.ia iaVar;
        if (TextUtils.isEmpty(str) || (iaVar = this.dq) == null || oxVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "adm 参数错误 或者 nativeAdManager is null");
        } else {
            iaVar.dq(str, new com.bytedance.msdk.api.p.dq.mn.s() { // from class: com.bytedance.sdk.gromore.init.no.1
                @Override // com.bytedance.msdk.api.p.dq.mn.s
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                    if (dqVar != null) {
                        oxVar.dq(dqVar.dq, dqVar.f756d);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.s
                public void dq(List<com.bytedance.msdk.api.p.dq.mn.dq> list) {
                    if (list == null) {
                        oxVar.dq(null);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (com.bytedance.msdk.api.p.dq.mn.dq dqVar : list) {
                        if (dqVar != null) {
                            arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.no(no.this.dq, dqVar));
                        }
                    }
                    oxVar.dq(arrayList);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.d.d.d
    public void dq(String str, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        d(str, oxVar);
    }
}

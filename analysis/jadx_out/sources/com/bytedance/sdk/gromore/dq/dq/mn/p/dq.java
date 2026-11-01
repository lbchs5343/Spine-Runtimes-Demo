package com.bytedance.sdk.gromore.dq.dq.mn.p;

import android.text.TextUtils;
import com.bytedance.msdk.ox.p.kk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class dq extends com.bytedance.sdk.openadsdk.mediation.dq.d.d.d {
    private kk dq;

    public dq(kk kkVar) {
        this.dq = kkVar;
    }

    public void d(String str, final com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        kk kkVar;
        if (TextUtils.isEmpty(str) || (kkVar = this.dq) == null || oxVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "adm 参数错误 或者 nativeAdManager is null");
        } else {
            kkVar.dq(str, new com.bytedance.msdk.api.p.dq.mn.s() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.dq.1
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
                            arrayList.add(new d(dq.this.dq, dqVar));
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

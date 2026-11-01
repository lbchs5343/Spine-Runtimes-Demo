package com.bytedance.sdk.gromore.dq.dq.mn.d;

import android.text.TextUtils;
import com.bytedance.msdk.ox.p.mn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class p extends com.bytedance.sdk.openadsdk.mediation.dq.d.d.dq {
    private mn dq;

    public p(mn mnVar) {
        this.dq = mnVar;
    }

    public void d(String str, final com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar) {
        mn mnVar;
        if (TextUtils.isEmpty(str) || (mnVar = this.dq) == null || dVar == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "adm 参数错误 或者 drawTokenInfo is null");
        } else {
            mnVar.dq(str, new com.bytedance.msdk.api.p.dq.ox.ox() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.d.p.1
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
                            arrayList.add(new dq(p.this.dq, dqVar));
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

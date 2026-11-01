package com.bytedance.sdk.gromore.dq.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class s implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2306d;
    private com.bytedance.msdk.core.admanager.s dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.d ox;

    public s(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar) {
        this.f2306d = dqVar;
        if (dqVar != null) {
            this.dq = new com.bytedance.msdk.core.admanager.s(context, dqVar.mn());
            this.ox = dVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        this.dq.dq(new com.bytedance.msdk.api.dq.d(9, this.f2306d.ox()), new com.bytedance.msdk.api.p.dq.ox.ox() { // from class: com.bytedance.sdk.gromore.dq.dq.d.s.1
            @Override // com.bytedance.msdk.api.p.dq.ox.ox
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || s.this.ox == null) {
                    return;
                }
                s.this.ox.dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.ox.ox
            public void dq(List<com.bytedance.msdk.api.p.dq.ox.dq> list) {
                if (list == null) {
                    dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (s.this.ox != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.bytedance.msdk.api.p.dq.ox.dq> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new ox(s.this.dq, it.next()));
                    }
                    s.this.ox.dq(arrayList);
                }
            }
        });
    }
}

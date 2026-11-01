package com.bytedance.sdk.gromore.dq.dq.p;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class f implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.ox f2348d;
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq dq;
    private com.bytedance.msdk.core.admanager.ia ox;

    public f(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        this.dq = dqVar;
        if (dqVar != null) {
            this.ox = new com.bytedance.msdk.core.admanager.ia(context, dqVar.mn());
            this.f2348d = oxVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        this.ox.dq(new com.bytedance.msdk.api.dq.d(5, this.dq.ox()), new com.bytedance.msdk.api.p.dq.mn.s() { // from class: com.bytedance.sdk.gromore.dq.dq.p.f.1
            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || f.this.f2348d == null) {
                    return;
                }
                f.this.f2348d.dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(List<com.bytedance.msdk.api.p.dq.mn.dq> list) {
                if (list == null) {
                    dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (f.this.f2348d != null) {
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.bytedance.msdk.api.p.dq.mn.dq> it = list.iterator();
                    while (it.hasNext()) {
                        linkedList.add(new no(f.this.ox, it.next()));
                    }
                    f.this.f2348d.dq(linkedList);
                }
            }
        });
    }
}

package com.bytedance.sdk.gromore.dq.dq.mn.p;

import android.content.Context;
import com.bytedance.msdk.ox.p.kk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class s implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.iw f2337d;
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq dq;
    private kk ox;

    public s(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar) {
        this.dq = dqVar;
        if (dqVar != null) {
            this.ox = new kk(context);
            this.f2337d = iwVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        this.ox.dq(new com.bytedance.msdk.api.dq.d(5, this.dq.ox()), new com.bytedance.msdk.api.p.dq.mn.s() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.s.1
            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || s.this.f2337d == null) {
                    return;
                }
                s.this.f2337d.dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(List<com.bytedance.msdk.api.p.dq.mn.dq> list) {
                com.bytedance.sdk.openadsdk.mediation.dq.d.d dq;
                if (list == null) {
                    dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (s.this.f2337d != null) {
                    com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d o = (s.this.dq == null || (dq = s.this.dq.dq()) == null) ? null : dq.o();
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.bytedance.msdk.api.p.dq.mn.dq> it = list.iterator();
                    while (it.hasNext()) {
                        linkedList.add(new p(s.this.ox, it.next(), o));
                    }
                    s.this.f2337d.dq(linkedList);
                }
            }
        });
    }
}

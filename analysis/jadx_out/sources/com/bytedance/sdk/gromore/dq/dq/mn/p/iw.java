package com.bytedance.sdk.gromore.dq.dq.mn.p;

import android.content.Context;
import com.bytedance.msdk.ox.p.kk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class iw implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.mediation.dq.d.dq f2333d;
    private kk dq;
    private com.bytedance.sdk.openadsdk.r.dq.d.dq.ox ox;

    public iw(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        this.f2333d = dqVar;
        if (dqVar != null) {
            this.dq = new kk(context);
            this.ox = oxVar;
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "-------CSJMV2NativeLoader.load()------");
        this.dq.dq(new com.bytedance.msdk.api.dq.d(5, this.f2333d.ox()), new com.bytedance.msdk.api.p.dq.mn.s() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.iw.1
            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "-------CSJMV2NativeLoader onAdLoadedFail------");
                if (dqVar == null || iw.this.ox == null) {
                    return;
                }
                iw.this.ox.dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.s
            public void dq(List<com.bytedance.msdk.api.p.dq.mn.dq> list) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "-------CSJMV2NativeLoader onAdLoaded------");
                if (list == null) {
                    dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (iw.this.ox != null) {
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.bytedance.msdk.api.p.dq.mn.dq> it = list.iterator();
                    while (it.hasNext()) {
                        linkedList.add(new d(iw.this.dq, it.next()));
                    }
                    iw.this.ox.dq(linkedList);
                }
            }
        });
    }
}

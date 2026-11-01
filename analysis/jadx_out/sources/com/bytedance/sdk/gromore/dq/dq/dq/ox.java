package com.bytedance.sdk.gromore.dq.dq.dq;

import android.content.Context;
import android.view.View;
import com.bytedance.msdk.core.admanager.kk;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ox implements com.bytedance.sdk.gromore.dq.dq.s {

    /* renamed from: d, reason: collision with root package name */
    private final p f2309d;
    private final com.bytedance.sdk.openadsdk.mediation.dq.d.dq dq;
    private kk ox;

    public ox(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, p pVar) {
        this.dq = dqVar;
        this.f2309d = pVar;
        if (dqVar != null) {
            this.ox = new kk(context, dqVar.mn());
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        final com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d o;
        com.bytedance.msdk.api.dq.d dVar = new com.bytedance.msdk.api.dq.d(1, this.dq.ox());
        if (this.dq.dq() != null && (o = this.dq.dq().o()) != null) {
            this.ox.dq(new com.bytedance.msdk.api.p.dq.dq.p() { // from class: com.bytedance.sdk.gromore.dq.dq.dq.ox.1
                @Override // com.bytedance.msdk.api.p.dq.dq.p
                public View dq(com.bytedance.msdk.api.p.dq.dq.ox oxVar) {
                    if (oxVar != null) {
                        return o.dq(new mn(oxVar));
                    }
                    return null;
                }
            });
        }
        this.ox.dq(dVar, new com.bytedance.msdk.api.p.dq.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.dq.ox.2
            @Override // com.bytedance.msdk.api.p.dq.dq.d
            public void dq() {
                if (ox.this.f2309d != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new dq(ox.this.ox));
                    ox.this.f2309d.dq(arrayList);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (ox.this.f2309d != null) {
                    ox.this.f2309d.dq(dqVar.dq, dqVar.f756d);
                }
            }
        });
    }
}

package com.bytedance.sdk.gromore.dq.dq.mn.dq;

import android.content.Context;
import android.view.View;
import com.bytedance.msdk.ox.p.no;
import com.bytedance.sdk.gromore.dq.dq.dq.mn;
import com.bytedance.sdk.gromore.dq.dq.dq.p;
import com.bytedance.sdk.gromore.dq.dq.s;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ox implements s {

    /* renamed from: d, reason: collision with root package name */
    private final p f2320d;
    private final com.bytedance.sdk.openadsdk.mediation.dq.d.dq dq;
    private no ox;

    public ox(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, p pVar) {
        this.dq = dqVar;
        this.f2320d = pVar;
        if (dqVar != null) {
            this.ox = new no(context);
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s
    public void dq() {
        final com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d o;
        com.bytedance.msdk.api.dq.d dVar = new com.bytedance.msdk.api.dq.d(1, this.dq.ox());
        if (this.dq.dq() != null && (o = this.dq.dq().o()) != null) {
            this.ox.dq(new com.bytedance.msdk.api.p.dq.dq.p() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.dq.ox.1
                @Override // com.bytedance.msdk.api.p.dq.dq.p
                public View dq(com.bytedance.msdk.api.p.dq.dq.ox oxVar) {
                    if (oxVar != null) {
                        return o.dq(new mn(oxVar));
                    }
                    return null;
                }
            });
        }
        this.ox.dq(dVar, new com.bytedance.msdk.api.p.dq.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.dq.ox.2
            @Override // com.bytedance.msdk.api.p.dq.dq.d
            public void dq() {
                if (ox.this.f2320d != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new dq(ox.this.ox));
                    ox.this.f2320d.dq(arrayList);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.d
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (ox.this.f2320d != null) {
                    ox.this.f2320d.dq(dqVar.dq, dqVar.f756d);
                }
            }
        });
    }
}

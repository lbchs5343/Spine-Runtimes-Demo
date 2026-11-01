package com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.r.xi;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class p extends dq {

    /* renamed from: d, reason: collision with root package name */
    dq f2538d;

    public p(Activity activity, j jVar) {
        super(activity, jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void d(String str) {
        super.d(str);
        dq dqVar = this.f2538d;
        if (dqVar == null) {
            return;
        }
        dqVar.d(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq dq(o oVar) {
        ArrayList<xi> s = ob.s(this.mn);
        if (s == null) {
            return new d.dq(false, 0, "");
        }
        Iterator<xi> it = s.iterator();
        while (it.hasNext()) {
            xi next = it.next();
            if (next.ox() == 1) {
                this.f2538d = new ox(this.ia, this.mn, next);
            }
            dq dqVar = this.f2538d;
            if (dqVar != null) {
                dqVar.ox(this.ig);
                this.f2538d.p(this.no);
                this.f2538d.dq(this.dq);
                this.f2538d.d(kk());
                this.f2538d.dq(this.f2625f);
                d.dq dq = this.f2538d.dq(oVar);
                if (dq.ox()) {
                    return dq;
                }
            }
        }
        return new d.dq(false, 0, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        dq dqVar = this.f2538d;
        if (dqVar == null) {
            return null;
        }
        return dqVar.dq();
    }
}

package com.bytedance.sdk.openadsdk.core.component.reward.dq;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;

/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.p.p.p f2577d;
    protected Context dq;

    public d(Context context) {
        this.dq = context == null ? wp.getContext() : context.getApplicationContext();
        this.f2577d = new com.bytedance.sdk.openadsdk.core.p.p.p(d() ? 7 : 8);
    }

    private nh dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.business.d.ox oxVar, boolean z, ox oxVar2) {
        boolean z2;
        nh nhVar = new nh();
        if (z) {
            nhVar.f3496d = 2;
        }
        if (wp.d().no(dVar.mn()) || dVar.no() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            nhVar.mn = 2;
        }
        if (oxVar == null || !oxVar.ox()) {
            z2 = false;
        } else {
            nhVar.ox = oxVar.dq();
            nhVar.p = oxVar.d();
            z2 = true;
            nhVar.s = 1;
        }
        if (oxVar2 != null) {
            nhVar.kk = oxVar2.dq();
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", z2);
        bundle.putBoolean("is_preload", z);
        bundle.putLong("start_time", nhVar.kk);
        nhVar.f3497f = bundle;
        return nhVar;
    }

    public abstract boolean d();

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (this.f2577d != null) {
            this.f2577d.dq(dVar, dq(dVar, null, true, null));
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, ox oxVar) {
        if (dVar != null) {
            dVar.mn();
        }
        dq(dVar, oxVar, null);
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final ox oxVar, com.bytedance.sdk.openadsdk.core.component.reward.business.d.ox oxVar2) {
        boolean z = (oxVar2 == null || !oxVar2.ox()) && com.bytedance.sdk.openadsdk.core.live.p.p.dq(dVar.e());
        nh dq = dq(dVar, oxVar2, false, oxVar);
        com.bytedance.sdk.openadsdk.core.p.p.p pVar = this.f2577d;
        if (pVar != null) {
            pVar.dq(dVar, dq, z ? -1 : 0, new com.bytedance.sdk.openadsdk.core.p.p.s() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.d.2
                @Override // com.bytedance.sdk.openadsdk.core.p.p.s
                public void d(Object obj) {
                    ox oxVar3 = oxVar;
                    if (oxVar3 != null) {
                        oxVar3.d(obj);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.p.p.s
                public void dq(int i, String str) {
                    ox oxVar3 = oxVar;
                    if (oxVar3 != null) {
                        oxVar3.dq(i, str);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.p.p.s
                public void dq(Object obj) {
                    ox oxVar3 = oxVar;
                    if (oxVar3 != null) {
                        oxVar3.dq(obj);
                    }
                }
            });
        }
    }

    public void dq(final String str) {
        mn.dq(new kk("rewardFull preloadOnDestroy") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.f.d.ox.d dq = com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().dq(str);
                if (dq == null || TextUtils.isEmpty(dq.mn())) {
                    return;
                }
                int i = d.this.d() ? 7 : 8;
                j dq2 = com.bytedance.sdk.openadsdk.core.p.ox.p.dq(i).dq(dq.mn(), false);
                if (wp.d().d(dq.mn()) && dq2 != null) {
                    if (dq2.h() + dq2.f() < System.currentTimeMillis()) {
                        com.bytedance.sdk.openadsdk.core.p.ox.p.dq(i).dq(dq.mn());
                    }
                }
                if (dq2 == null) {
                    d.this.dq(dq);
                }
            }
        });
    }
}

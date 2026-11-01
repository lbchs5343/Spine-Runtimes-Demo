package com.bytedance.sdk.openadsdk.core.component.splash.d.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.s;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class ox {
    private mn dq = new mn();
    private int ox = 3;

    /* renamed from: d, reason: collision with root package name */
    private final h f2706d = wp.dq();

    public void dq(final s sVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.d<iw, mn> dVar) {
        if (this.f2706d == null || sVar == null) {
            return;
        }
        this.dq.d(false);
        this.f2706d.dq(sVar.p(), sVar.s(), this.ox, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.d.dq.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                ox.this.dq.d(i);
                ox.this.dq.ox(dVar2 != null ? dVar2.ox() : 0);
                if (TextUtils.isEmpty(str)) {
                    str = "load ad error";
                }
                ox.this.dq.dq(str);
                dVar.dq(ox.this.dq);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                if (dqVar == null || dqVar.d() == null) {
                    ox.this.dq.d(1);
                    ox.this.dq.dq("no ad or material");
                    dVar.dq(ox.this.dq);
                    return;
                }
                iw iwVar = new iw(dqVar, false);
                iwVar.d(dVar2.kk());
                iwVar.ox(dVar2.o());
                iwVar.p(dVar2.no());
                iwVar.s(dVar2.ig());
                iwVar.dq(sVar.dq());
                iwVar.dq(sVar.ox());
                dVar.d(iwVar);
            }
        });
    }
}

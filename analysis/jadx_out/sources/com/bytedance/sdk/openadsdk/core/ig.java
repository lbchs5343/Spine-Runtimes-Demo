package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes3.dex */
public class ig {

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.core.r.j f2975d;
    private final Context dq;
    private View iw;
    private String mn;
    private com.bytedance.sdk.openadsdk.core.o.d.ox ox;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.iw p;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.s s;

    public ig(Context context, com.bytedance.sdk.openadsdk.core.r.j jVar, View view, String str) {
        this.mn = "rewarded_video";
        this.f2975d = jVar;
        this.dq = context;
        this.iw = view;
        if (TextUtils.isEmpty(str)) {
            this.mn = com.bytedance.sdk.openadsdk.core.ir.c.d(com.bytedance.sdk.openadsdk.core.ir.c.ia(jVar));
        } else {
            this.mn = str;
        }
        if (jVar.y() == 4) {
            this.ox = com.bytedance.sdk.openadsdk.core.o.s.dq(context, jVar, this.mn, false);
        }
        String str2 = this.mn;
        com.bytedance.sdk.openadsdk.core.nativeexpress.iw iwVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.iw(context, jVar, str2, com.bytedance.sdk.openadsdk.core.ir.c.dq(str2));
        this.p = iwVar;
        iwVar.dq(this.iw);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.p.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
        String str3 = this.mn;
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.s(context, jVar, str3, com.bytedance.sdk.openadsdk.core.ir.c.dq(str3));
        this.s = sVar;
        sVar.dq(this.iw);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.s.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
    }

    public void dq(int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar;
        if (i == -1 || kVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.r.o oVar = new com.bytedance.sdk.openadsdk.core.r.o();
        oVar.dq(kVar.dq);
        oVar.d(kVar.f3469d);
        oVar.ox(kVar.ox);
        oVar.p(kVar.p);
        oVar.dq(kVar.jy);
        oVar.dq(kVar.f3470f);
        if (i != 1) {
            if (i == 2 && (sVar = this.s) != null) {
                sVar.dq(kVar);
                this.s.dq(oVar);
                this.s.dq(this.iw, oVar);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.iw iwVar = this.p;
        if (iwVar != null) {
            iwVar.dq(kVar);
            this.p.dq(oVar);
            this.p.dq(this.iw, oVar);
        }
    }
}

package com.bytedance.sdk.openadsdk.core.cd;

import android.content.Context;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.q.ia;
import java.util.Set;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.q.dq f2506d;
    private ia dq;

    public ia dq(Context context, SSWebView sSWebView, com.bytedance.sdk.openadsdk.q.ox oxVar, com.bytedance.sdk.openadsdk.q.dq dqVar, Set<String> set, ia.dq dqVar2) {
        com.bytedance.sdk.openadsdk.q.dq dqVar3;
        if (this.dq == null) {
            dqVar3 = dqVar;
            ia dq = ia.dq(context, sSWebView, oxVar, dqVar3, set, dqVar2, true);
            this.dq = dq;
            dq.s(false);
        } else {
            dqVar3 = dqVar;
        }
        this.f2506d = dqVar3;
        return this.dq;
    }
}

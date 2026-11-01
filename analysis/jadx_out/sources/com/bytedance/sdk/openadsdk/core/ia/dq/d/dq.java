package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import g.abn;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class dq implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = abn.EXTRA_TITLE)
    private String f2925d;

    @com.bytedance.sdk.component.no.d.dq(dq = abn.EXTRA_URL)
    private String dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context ox;

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        TTDelegateActivity.p(this.ox, this.dq, this.f2925d);
        dqVar.dq(map2);
        return true;
    }
}

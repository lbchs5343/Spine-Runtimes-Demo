package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.app.Dialog;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class s implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "ad_dislike")
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq f2947d;

    @com.bytedance.sdk.component.no.d.dq(dq = "outer_dislike")
    private Dialog dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j p;

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        Dialog dialog = this.dq;
        if (dialog != null) {
            dialog.show();
            dqVar.dq(map2);
            return true;
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar2 = this.f2947d;
        if (dqVar2 != null) {
            dqVar2.dq();
            dqVar.dq(map2);
            return true;
        }
        TTDelegateActivity.dq(this.ox, this.p);
        dqVar.dq(map2);
        return true;
    }
}

package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.no.dq.d;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class ox implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j f2944d;

    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "cancel_event")
    private String ia;

    @com.bytedance.sdk.component.no.d.dq(dq = "confirm_event")
    private String iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "deny_event")
    private String mn;

    @com.bytedance.sdk.component.no.d.dq(dq = MediationConstant.EXTRA_ADID)
    private String ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "permission_popup_listener")
    private iw.dq p;

    @com.bytedance.sdk.component.no.d.dq(dq = "app_manage_model")
    private String s;

    private iw.dq dq() {
        return new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                if (ox.this.p == null) {
                    return;
                }
                ox.this.p.d();
                ox oxVar = ox.this;
                oxVar.dq(oxVar.mn);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                if (ox.this.p == null) {
                    return;
                }
                ox.this.p.dq();
                ox oxVar = ox.this;
                oxVar.dq(oxVar.iw);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                if (ox.this.p == null) {
                    return;
                }
                ox.this.p.ox();
                ox oxVar = ox.this;
                oxVar.dq(oxVar.ia);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str) {
        if (this.f2944d == null || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("material_meta", this.f2944d);
        hashMap.put("context", this.dq);
        new d.dq(str).dq(this.f2944d.ve()).dq(hashMap).dq().dq();
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.ox, dq());
        TTDelegateActivity.dq(this.dq, this.ox, this.s);
        dqVar.dq(map2);
        return true;
    }
}

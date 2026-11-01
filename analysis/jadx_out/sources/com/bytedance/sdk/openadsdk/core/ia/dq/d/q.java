package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class q implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2946d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j dq;

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        Context context;
        j jVar = this.dq;
        if (jVar == null || (context = this.f2946d) == null) {
            dqVar.d(map2);
            return true;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(context, jVar);
        dqVar.dq(map2);
        return true;
    }
}

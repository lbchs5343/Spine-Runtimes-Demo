package com.bytedance.sdk.openadsdk.core.wp;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class kk {
    public abstract JSONObject d(Context context);

    public abstract boolean d();

    public abstract void dq(int i, ia iaVar);

    public void dq(Context context) {
        ox oxVar;
        if (d() && (oxVar = (ox) AutoService.dq(ox.class)) != null && oxVar.ox()) {
            final JSONObject d2 = d(context);
            oxVar.dq("common", d2, new EventListener() { // from class: com.bytedance.sdk.openadsdk.core.wp.kk.1
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i, Result result) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq();
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq(result, d2);
                    kk.this.dq(i, new ia(result, i));
                    return null;
                }
            });
        }
    }
}

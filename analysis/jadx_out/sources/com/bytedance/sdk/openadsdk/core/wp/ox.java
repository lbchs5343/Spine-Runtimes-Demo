package com.bytedance.sdk.openadsdk.core.wp;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import org.json.JSONObject;

@ATSApi("pitaya")
/* loaded from: classes3.dex */
public interface ox {
    @ATSMethod(1)
    void dq(Context context, EventListener eventListener);

    @ATSMethod(6)
    void dq(String str, EventListener eventListener);

    @ATSMethod(5)
    void dq(String str, com.bytedance.sdk.component.ia.dq.d dVar);

    @ATSMethod(4)
    void dq(String str, JSONObject jSONObject, EventListener eventListener);

    @ATSMethod(2)
    boolean ox();

    @ATSMethod(3)
    boolean p();
}

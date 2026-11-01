package com.bytedance.sdk.openadsdk.core.h.dq.dq;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox implements EventListener {
    public Map<String, Object> dq(Map<String, Object> map) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i, Result result) {
        if (i != 223901 || result == null || result.values() == null) {
            return null;
        }
        Map<String, Object> dq = dq((Map) result.values().objectValue(ValueSetConstants.VALUE_PARAMS_INTERCEPT_OBM_MARKET, Map.class));
        hat f2 = hat.f();
        f2.f19148c.put(ValueSetConstants.VALUE_PARAMS_INTERCEPT_OBM_MARKET, dq);
        return f2.k();
    }
}

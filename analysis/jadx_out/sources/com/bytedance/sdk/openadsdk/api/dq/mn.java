package com.bytedance.sdk.openadsdk.api.dq;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.config.DownloadMarketInterceptor;
import g.cpo;
import g.cpq;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class mn extends com.bytedance.sdk.openadsdk.api.d implements DownloadMarketInterceptor {
    public mn(EventListener eventListener) {
        this.dq = eventListener;
    }

    @Override // com.ss.android.download.api.config.DownloadMarketInterceptor
    public Map<String, Object> interceptObmMarket(Map<String, Object> map) {
        hat f2 = hat.f();
        f2.f19148c.put(ValueSetConstants.VALUE_PARAMS_INTERCEPT_OBM_MARKET, map);
        cpo k = f2.k();
        cpq f3 = cpq.f();
        f3.f13284b = k;
        ValueSet dq = dq(ValueSetConstants.VALUE_METHOD_INTERCEPT_OBM_MARKET, f3.h());
        if (dq != null) {
            return (Map) dq.objectValue(ValueSetConstants.VALUE_PARAMS_INTERCEPT_OBM_MARKET, Map.class);
        }
        return null;
    }
}

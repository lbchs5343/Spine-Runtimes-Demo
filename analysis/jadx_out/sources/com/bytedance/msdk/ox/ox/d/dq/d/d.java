package com.bytedance.msdk.ox.ox.d.dq.d;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bytedance.sdk.gromore.init.DispatchAdSdkInitializerHolder;
import com.bytedance.sdk.openadsdk.core.u;

/* loaded from: classes.dex */
public abstract class d extends com.bytedance.msdk.ox.ox.d.dq.d {
    public d(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    public u dq(Context context) {
        Loader csjLoader = DispatchAdSdkInitializerHolder.getCsjLoader(context);
        if (csjLoader instanceof u) {
            return (u) csjLoader;
        }
        if (csjLoader == null) {
            dq(new com.bytedance.msdk.api.dq("ClassCastException：load ad fail loader is null"));
            return null;
        }
        dq(new com.bytedance.msdk.api.dq("ClassCastException：load ad fail loader is not TTAdNativeImpl"));
        return null;
    }

    @Override // com.bytedance.msdk.ox.dq.dq
    public String dq(String str) {
        try {
            return com.bytedance.sdk.gromore.init.dq.ox();
        } catch (Exception unused) {
            return "0.0";
        }
    }
}

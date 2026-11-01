package com.bytedance.sdk.openadsdk.f.dq.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.LocationProvider;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    public static final ValueSet dq(LocationProvider locationProvider) {
        hat f2 = hat.f();
        if (locationProvider == null) {
            return null;
        }
        f2.j(262001, locationProvider.getLatitude());
        f2.j(262002, locationProvider.getLongitude());
        return f2.k();
    }
}

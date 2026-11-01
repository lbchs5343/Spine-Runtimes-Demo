package com.bytedance.sdk.openadsdk.live.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.android.live.base.api.ILiveHostActionParam;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class d implements ILiveHostActionParam {
    private Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge;
    }

    @Override // com.bytedance.android.live.base.api.ILiveHostActionParam
    public void logEvent(boolean z, String str, String str2, Map<String, String> map) {
        Bridge bridge = this.dq;
        if (bridge != null) {
            hat f2 = hat.f();
            SparseArray sparseArray = f2.f19148c;
            f2.i(0, z);
            sparseArray.put(1, str);
            sparseArray.put(2, str2);
            sparseArray.put(3, map);
            bridge.call(1, f2.k(), null);
        }
    }
}

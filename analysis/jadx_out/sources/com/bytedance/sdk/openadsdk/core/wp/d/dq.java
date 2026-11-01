package com.bytedance.sdk.openadsdk.core.wp.d;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.wp.o;

/* loaded from: classes3.dex */
public class dq {
    public static void dq() {
        try {
            com.bytedance.sdk.openadsdk.core.wp.ox.dq.ox().s();
            com.bytedance.sdk.openadsdk.core.wp.dq.dq.d().s();
            o.dq(new EventListener() { // from class: com.bytedance.sdk.openadsdk.core.wp.d.dq.1
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i, Result result) {
                    if (i != 0) {
                        return null;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.p.dq.s();
                    return null;
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}

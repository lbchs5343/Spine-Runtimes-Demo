package com.bytedance.sdk.openadsdk.core.wp;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ce;
import com.bytedance.sdk.openadsdk.core.wp;
import g.cpo;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o {
    public static boolean d() {
        JSONObject ij = wp.d().ij();
        return ij != null && ij.optInt("pre_drop", 0) == 1;
    }

    public static void dq(final EventListener eventListener) {
        ox oxVar;
        Bridge nh = com.bytedance.sdk.openadsdk.core.no.ia().nh();
        if (wp.d().r()) {
            hat g2 = hat.g(1);
            g2.f19148c.put(0, "com.byted.csj.ext");
            cpo k = g2.k();
            if (((Boolean) nh.call(6, k, Boolean.class)).booleanValue()) {
                if ((((Boolean) nh.call(7, k, Boolean.class)).booleanValue() || ce.dq().dq(nh, false)) && (oxVar = (ox) AutoService.dq(ox.class)) != null) {
                    oxVar.dq(wp.getContext(), new EventListener() { // from class: com.bytedance.sdk.openadsdk.core.wp.o.1
                        @Override // com.bykv.vk.openvk.api.proto.EventListener
                        public ValueSet onEvent(int i, Result result) {
                            EventListener eventListener2 = EventListener.this;
                            if (eventListener2 == null) {
                                return null;
                            }
                            eventListener2.onEvent(i, result);
                            return null;
                        }
                    });
                }
            }
        }
    }

    public static boolean dq() {
        JSONObject ij = wp.d().ij();
        return ij != null && ij.optInt("video_cache", 0) == 1;
    }

    public static boolean ox() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().er() == 1;
    }
}

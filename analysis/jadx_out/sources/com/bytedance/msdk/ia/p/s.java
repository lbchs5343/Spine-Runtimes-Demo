package com.bytedance.msdk.ia.p;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import java.util.Map;

/* loaded from: classes.dex */
public class s {
    public static void dq(com.bytedance.sdk.gromore.dq.d.dq dqVar) {
        Map map;
        Boolean bool;
        if (dqVar == null) {
            return;
        }
        Bridge e2 = dqVar.e();
        if (e2 != null && (bool = (Boolean) e2.call(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, null, Boolean.class)) != null) {
            dq.dq(bool.booleanValue());
        }
        Bridge h = dqVar.h();
        if (h != null && (map = (Map) h.call(AVMDLDataLoader.KeyIsStoRingBufferSizeKB, null, Map.class)) != null) {
            System.out.println("onetap " + map.toString());
            ox.dq(map);
        }
        d.dq(dqVar.kx());
        p.dq(dqVar.ji());
    }
}

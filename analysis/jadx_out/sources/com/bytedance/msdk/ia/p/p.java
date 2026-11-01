package com.bytedance.msdk.ia.p;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;

/* loaded from: classes.dex */
public class p {
    private static Bridge dq;

    public static String d() {
        Bridge bridge = dq;
        if (bridge != null) {
            return (String) bridge.call(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, null, String.class);
        }
        return null;
    }

    public static String dq() {
        Bridge bridge = dq;
        if (bridge != null) {
            return (String) bridge.call(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, null, String.class);
        }
        return null;
    }

    public static void dq(Bridge bridge) {
        dq = bridge;
    }

    public static String ox() {
        Bridge bridge = dq;
        if (bridge != null) {
            return (String) bridge.call(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec, null, String.class);
        }
        return null;
    }
}

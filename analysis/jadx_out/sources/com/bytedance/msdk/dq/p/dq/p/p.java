package com.bytedance.msdk.dq.p.dq.p;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.Map;

/* loaded from: classes.dex */
public class p extends com.bytedance.msdk.api.p.dq.mn.d {
    public p(Bridge bridge) {
        ValueSet values;
        if (bridge == null || (values = bridge.values()) == null) {
            return;
        }
        ox(values.stringValue(8505));
        p(values.stringValue(8506));
        dq(values.longValue(8507));
        s(values.stringValue(8508));
        dq((Map<String, String>) values.objectValue(8509, Map.class));
        iw(values.stringValue(8510));
        mn(values.stringValue(8511));
        d((Map<String, Object>) values.objectValue(8512, Map.class));
        d(values.stringValue(8551));
    }
}

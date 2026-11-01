package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public boolean d() {
        return ((Boolean) this.dq.call(266002, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public boolean dq() {
        return ((Boolean) this.dq.call(266001, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public String ia() {
        return (String) this.dq.call(266008, hat.g(0).k(), String.class);
    }

    public float ig() {
        return ((Float) this.dq.call(266011, hat.g(0).k(), Float.TYPE)).floatValue();
    }

    public Map<String, Object> iw() {
        return (Map) this.dq.call(266006, hat.g(0).k(), Map.class);
    }

    public int jy() {
        return ((Integer) this.dq.call(266104, hat.g(0).k(), Integer.TYPE)).intValue();
    }

    public boolean kk() {
        return ((Boolean) this.dq.call(266009, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public boolean mn() {
        return ((Boolean) this.dq.call(266007, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.ox mp() {
        Bridge bridge = (Bridge) this.dq.call(266102, null, Bridge.class);
        if (bridge != null) {
            return new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.ox(bridge);
        }
        return null;
    }

    public float no() {
        return ((Float) this.dq.call(266010, hat.g(0).k(), Float.TYPE)).floatValue();
    }

    public com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d o() {
        Bridge bridge = (Bridge) this.dq.call(266101, null, Bridge.class);
        if (bridge != null) {
            return new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d(bridge);
        }
        return null;
    }

    public boolean ox() {
        return ((Boolean) this.dq.call(266003, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    public float p() {
        return ((Float) this.dq.call(266004, hat.g(0).k(), Float.TYPE)).floatValue();
    }

    public String q() {
        return (String) this.dq.call(266103, hat.g(0).k(), String.class);
    }

    public boolean s() {
        return ((Boolean) this.dq.call(266005, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }
}

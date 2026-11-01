package com.bytedance.msdk.dq.p.dq;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.iw.d.ox;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends com.bytedance.msdk.api.p.dq.d.iw.dq implements Bridge {
    private Context iw;
    private ox ox;
    private Bridge p;
    private Bridge s;

    public d() {
        ox dq = ox.dq(com.bytedance.msdk.core.d.no().l());
        this.ox = dq;
        this.p = dq.dq();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8216) {
            this.s = (Bridge) valueSet.objectValue(8402, Bridge.class);
        } else if (i == 8219) {
            ox();
        } else {
            if (i == 8220) {
                return (T) Boolean.valueOf(p());
            }
            if (i == 8270) {
                long longValue = valueSet.longValue(8073);
                this.f769d = valueSet.intValue(8557);
                this.dq = longValue;
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.iw.dq
    public String d() {
        return "0.0";
    }

    @Override // com.bytedance.msdk.api.p.dq.d.iw.dq
    public String d(Context context, Map<String, Object> map) {
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        f2.m(8075, map);
        Bridge bridge = this.s;
        return bridge != null ? (String) bridge.call(AVMDLDataLoader.KeyIsLoaderFactoryXYLibValue, f2.k(), String.class) : super.d(context, map);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.iw.dq
    public String dq() {
        Bridge bridge = this.s;
        if (bridge != null) {
            return (String) bridge.call(AVMDLDataLoader.KeyIsLoaderFactoryP2PStragetyLevel, null, String.class);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.d.iw.dq
    public String dq(Context context, Map<String, Object> map) {
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        f2.m(8075, map);
        Bridge bridge = this.s;
        return bridge != null ? (String) bridge.call(8139, f2.k(), String.class) : super.dq(context, map);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.iw.dq
    public void dq(Context context, com.bytedance.msdk.api.p.dq.d.ox.d dVar, Map<String, Object> map) {
        this.iw = context;
        if (dVar != null) {
            hat f2 = hat.f();
            f2.m(8089, com.bytedance.msdk.core.d.no().l());
            f2.m(8545, dVar.dq());
            f2.m(8400, map);
            f2.m(8401, this);
            f2.i(8098, true);
            this.p.call(AVMDLDataLoader.KeyIsLiveLoaderEnable, f2.k(), Void.class);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}

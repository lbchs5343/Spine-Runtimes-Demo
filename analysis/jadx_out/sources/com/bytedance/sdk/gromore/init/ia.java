package com.bytedance.sdk.gromore.init;

import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ITTProvider;

/* loaded from: classes.dex */
public class ia implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private o f2361d;
    private Bridge dq;

    public ia(Bridge bridge) {
        this.dq = bridge;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 6) {
            Bundle bundle = valueSet != null ? (Bundle) valueSet.objectValue(10, Bundle.class) : null;
            Class cls2 = valueSet != null ? (Class) valueSet.objectValue(9, Class.class) : null;
            if (bundle != null && TextUtils.equals(bundle.getString("mediation_manager"), "mediation_manager")) {
                if (this.f2361d == null) {
                    this.f2361d = new o();
                }
                return (T) this.f2361d;
            }
            if (cls2 == ITTProvider.class) {
                Bridge bridge = this.dq;
                if (bridge != null) {
                    Object call = bridge.call(i, valueSet, cls);
                    if (call instanceof ITTProvider) {
                        return (T) new ig((ITTProvider) call);
                    }
                }
                return null;
            }
            Bridge bridge2 = this.dq;
            if (bridge2 != null) {
                return (T) bridge2.call(i, valueSet, cls);
            }
        } else {
            Bridge bridge3 = this.dq;
            if (bridge3 != null) {
                return (T) bridge3.call(i, valueSet, cls);
            }
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return bridge.values();
        }
        return null;
    }
}

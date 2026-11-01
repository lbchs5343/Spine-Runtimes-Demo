package com.bytedance.sdk.openadsdk.mediation.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawAdTokenCallback;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationDrawAdTokenCallback f3832d;
    private ValueSet dq = hat.f19147b;

    public dq(IMediationDrawAdTokenCallback iMediationDrawAdTokenCallback) {
        this.f3832d = iMediationDrawAdTokenCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3832d != null) {
            switch (i) {
                case 270029:
                    this.f3832d.onAdTokenLoaded((String) valueSet.objectValue(0, String.class), new com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.dq((Bridge) valueSet.objectValue(1, Bridge.class)));
                    break;
                case 270030:
                    this.f3832d.onAdTokenLoadedFail(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
            }
        } else {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}

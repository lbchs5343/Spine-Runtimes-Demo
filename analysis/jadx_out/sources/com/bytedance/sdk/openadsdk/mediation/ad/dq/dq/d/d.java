package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import g.hat;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationDislikeCallback f3812d;
    private ValueSet dq = hat.f19147b;

    public d(IMediationDislikeCallback iMediationDislikeCallback) {
        this.f3812d = iMediationDislikeCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationDislikeCallback iMediationDislikeCallback = this.f3812d;
        if (iMediationDislikeCallback != null) {
            switch (i) {
                case 268013:
                    this.f3812d.onSelected(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 268014:
                    iMediationDislikeCallback.onCancel();
                    break;
                case 268015:
                    iMediationDislikeCallback.onShow();
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

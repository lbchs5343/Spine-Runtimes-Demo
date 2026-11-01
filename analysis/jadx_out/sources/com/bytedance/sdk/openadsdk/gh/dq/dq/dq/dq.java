package com.bytedance.sdk.openadsdk.gh.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdDislike.DislikeInteractionCallback f3758d;
    private ValueSet dq = hat.f19147b;

    public dq(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f3758d = dislikeInteractionCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback = this.f3758d;
        if (dislikeInteractionCallback != null) {
            switch (i) {
                case 244101:
                    dislikeInteractionCallback.onShow();
                    break;
                case 244102:
                    this.f3758d.onSelected(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class), valueSet.booleanValue(2));
                    break;
                case 244103:
                    dislikeInteractionCallback.onCancel();
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

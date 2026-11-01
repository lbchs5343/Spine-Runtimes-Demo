package com.bytedance.sdk.openadsdk.k.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f3791d;
    private ValueSet dq = hat.f19147b;

    public dq(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f3791d = fullScreenVideoAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f3791d;
        if (fullScreenVideoAdInteractionListener != null) {
            switch (i) {
                case 131101:
                    fullScreenVideoAdInteractionListener.onAdShow();
                    break;
                case 131102:
                    fullScreenVideoAdInteractionListener.onAdVideoBarClick();
                    break;
                case 131103:
                    fullScreenVideoAdInteractionListener.onAdClose();
                    break;
                case 131104:
                    fullScreenVideoAdInteractionListener.onVideoComplete();
                    break;
                case 131105:
                    fullScreenVideoAdInteractionListener.onSkippedVideo();
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

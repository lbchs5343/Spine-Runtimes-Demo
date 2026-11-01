package com.bytedance.sdk.openadsdk.kx.dq.dq.dq;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTRewardVideoAd.RewardAdInteractionListener f3794d;
    private ValueSet dq = hat.f19147b;

    public dq(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f3794d = rewardAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f3794d;
        if (rewardAdInteractionListener != null) {
            switch (i) {
                case 121101:
                    rewardAdInteractionListener.onAdShow();
                    break;
                case 121102:
                    rewardAdInteractionListener.onAdVideoBarClick();
                    break;
                case 121103:
                    rewardAdInteractionListener.onAdClose();
                    break;
                case 121104:
                    rewardAdInteractionListener.onVideoComplete();
                    break;
                case 121105:
                    rewardAdInteractionListener.onVideoError();
                    break;
                case 121106:
                    this.f3794d.onRewardVerify(valueSet.booleanValue(0), valueSet.intValue(1), (String) valueSet.objectValue(2, String.class), valueSet.intValue(3), (String) valueSet.objectValue(4, String.class));
                    break;
                case 121107:
                    this.f3794d.onRewardArrived(valueSet.booleanValue(0), valueSet.intValue(1), (Bundle) valueSet.objectValue(2, Bundle.class));
                    break;
                case 121108:
                    rewardAdInteractionListener.onSkippedVideo();
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

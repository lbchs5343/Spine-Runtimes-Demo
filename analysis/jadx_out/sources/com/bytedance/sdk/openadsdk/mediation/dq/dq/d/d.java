package com.bytedance.sdk.openadsdk.mediation.dq.dq.d;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationInterstitialFullAdListener;
import g.hat;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationInterstitialFullAdListener f3831d;
    private ValueSet dq = hat.f19147b;

    public d(IMediationInterstitialFullAdListener iMediationInterstitialFullAdListener) {
        this.f3831d = iMediationInterstitialFullAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationInterstitialFullAdListener iMediationInterstitialFullAdListener = this.f3831d;
        if (iMediationInterstitialFullAdListener != null) {
            switch (i) {
                case 131101:
                    iMediationInterstitialFullAdListener.onAdShow();
                    break;
                case 131102:
                    iMediationInterstitialFullAdListener.onAdVideoBarClick();
                    break;
                case 131103:
                    iMediationInterstitialFullAdListener.onAdClose();
                    break;
                case 131104:
                    iMediationInterstitialFullAdListener.onVideoComplete();
                    break;
                case 131105:
                    iMediationInterstitialFullAdListener.onSkippedVideo();
                    break;
                case 131106:
                    this.f3831d.onInterstitialFullShowFail(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 131107:
                    iMediationInterstitialFullAdListener.onVideoError();
                    break;
                case 131108:
                    iMediationInterstitialFullAdListener.onAdOpened();
                    break;
                case 131109:
                    iMediationInterstitialFullAdListener.onAdLeftApplication();
                    break;
                case 131110:
                    this.f3831d.onRewardVerify((Bundle) valueSet.objectValue(0, Bundle.class));
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

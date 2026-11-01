package com.bytedance.sdk.openadsdk.e.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTNativeExpressAd.ExpressVideoAdListener f3748d;
    private ValueSet dq = hat.f19147b;

    public ox(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.f3748d = expressVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener = this.f3748d;
        if (expressVideoAdListener != null) {
            switch (i) {
                case 152101:
                    expressVideoAdListener.onVideoLoad();
                    break;
                case 152102:
                    this.f3748d.onVideoError(valueSet.intValue(0), valueSet.intValue(1));
                    break;
                case 152103:
                    expressVideoAdListener.onVideoAdStartPlay();
                    break;
                case 152104:
                    expressVideoAdListener.onVideoAdPaused();
                    break;
                case 152105:
                    expressVideoAdListener.onVideoAdContinuePlay();
                    break;
                case 152106:
                    this.f3748d.onProgressUpdate(valueSet.longValue(0), valueSet.longValue(1));
                    break;
                case 152107:
                    expressVideoAdListener.onVideoAdComplete();
                    break;
                case 152108:
                    expressVideoAdListener.onClickRetry();
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

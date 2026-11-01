package com.bytedance.sdk.openadsdk.r.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.f.dq.dq.f;
import g.hat;

/* loaded from: classes3.dex */
public class iw implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdNative.RewardVideoAdListener f3865d;
    private ValueSet dq = hat.f19147b;

    public iw(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f3865d = rewardVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTAdNative.RewardVideoAdListener rewardVideoAdListener = this.f3865d;
        if (rewardVideoAdListener != null) {
            switch (i) {
                case 124101:
                    this.f3865d.onError(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 124102:
                    this.f3865d.onRewardVideoAdLoad(new f((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 124103:
                    this.f3865d.onRewardVideoCached(new f((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 124104:
                    rewardVideoAdListener.onRewardVideoCached();
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

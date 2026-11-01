package com.bytedance.sdk.openadsdk.le.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.f.dq.dq.no;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTFeedAd.VideoAdListener f3796d;
    private ValueSet dq = hat.f19147b;

    public dq(TTFeedAd.VideoAdListener videoAdListener) {
        this.f3796d = videoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007e, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3796d != null) {
            switch (i) {
                case 161101:
                    this.f3796d.onVideoLoad(new no((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 161102:
                    this.f3796d.onVideoError(valueSet.intValue(0), valueSet.intValue(1));
                    break;
                case 161103:
                    this.f3796d.onVideoAdPaused(new no((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 161104:
                    this.f3796d.onVideoAdStartPlay(new no((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 161105:
                    this.f3796d.onVideoAdContinuePlay(new no((Bridge) valueSet.objectValue(0, Bridge.class)));
                    break;
                case 161106:
                    this.f3796d.onProgressUpdate(valueSet.longValue(0), valueSet.longValue(1));
                    break;
                case 161107:
                    this.f3796d.onVideoAdComplete(new no((Bridge) valueSet.objectValue(0, Bridge.class)));
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

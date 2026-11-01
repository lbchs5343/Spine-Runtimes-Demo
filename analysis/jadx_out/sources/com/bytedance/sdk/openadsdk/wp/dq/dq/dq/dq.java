package com.bytedance.sdk.openadsdk.wp.dq.dq.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.f.dq.dq.q;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTNativeAd.AdInteractionListener f3914d;
    private ValueSet dq = hat.f19147b;

    public dq(TTNativeAd.AdInteractionListener adInteractionListener) {
        this.f3914d = adInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3914d != null) {
            switch (i) {
                case 141101:
                    this.f3914d.onAdClicked((View) valueSet.objectValue(0, View.class), new q((Bridge) valueSet.objectValue(1, Bridge.class)));
                    break;
                case 141102:
                    this.f3914d.onAdCreativeClick((View) valueSet.objectValue(0, View.class), new q((Bridge) valueSet.objectValue(1, Bridge.class)));
                    break;
                case 141103:
                    this.f3914d.onAdShow(new q((Bridge) valueSet.objectValue(0, Bridge.class)));
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

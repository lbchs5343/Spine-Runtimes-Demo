package com.bytedance.sdk.openadsdk.e.dq.dq.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTNativeExpressAd.AdInteractionListener f3747d;
    private ValueSet dq = hat.f19147b;

    public dq(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.f3747d = adInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005e, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTNativeExpressAd.AdInteractionListener adInteractionListener = this.f3747d;
        if (adInteractionListener != null) {
            switch (i) {
                case 151101:
                    this.f3747d.onAdClicked((View) valueSet.objectValue(0, View.class), valueSet.intValue(1));
                    break;
                case 151102:
                    this.f3747d.onAdShow((View) valueSet.objectValue(0, View.class), valueSet.intValue(1));
                    break;
                case 151103:
                    this.f3747d.onRenderFail((View) valueSet.objectValue(0, View.class), (String) valueSet.objectValue(1, String.class), valueSet.intValue(2));
                    break;
                case 151104:
                    this.f3747d.onRenderSuccess((View) valueSet.objectValue(0, View.class), valueSet.floatValue(1), valueSet.floatValue(2));
                    break;
                case 151105:
                    adInteractionListener.onAdDismiss();
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

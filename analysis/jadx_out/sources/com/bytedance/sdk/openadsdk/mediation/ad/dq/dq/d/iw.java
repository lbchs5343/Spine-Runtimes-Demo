package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import g.hat;

/* loaded from: classes3.dex */
public class iw implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final MediationExpressRenderListener f3814d;
    private ValueSet dq = hat.f19147b;

    public iw(MediationExpressRenderListener mediationExpressRenderListener) {
        this.f3814d = mediationExpressRenderListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        MediationExpressRenderListener mediationExpressRenderListener = this.f3814d;
        if (mediationExpressRenderListener != null) {
            switch (i) {
                case 142101:
                    this.f3814d.onRenderSuccess((View) valueSet.objectValue(0, View.class), valueSet.floatValue(1), valueSet.floatValue(2), valueSet.booleanValue(3));
                    break;
                case 142102:
                    this.f3814d.onRenderFail((View) valueSet.objectValue(0, View.class), (String) valueSet.objectValue(1, String.class), valueSet.intValue(2));
                    break;
                case 142103:
                    mediationExpressRenderListener.onAdClick();
                    break;
                case 142104:
                    mediationExpressRenderListener.onAdShow();
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

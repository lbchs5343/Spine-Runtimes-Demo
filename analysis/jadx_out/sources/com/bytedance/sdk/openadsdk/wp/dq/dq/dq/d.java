package com.bytedance.sdk.openadsdk.wp.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import g.hat;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTNativeAd.EasyPlayWidgetListener f3913d;
    private ValueSet dq = hat.f19147b;

    public d(TTNativeAd.EasyPlayWidgetListener easyPlayWidgetListener) {
        this.f3913d = easyPlayWidgetListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        TTNativeAd.EasyPlayWidgetListener easyPlayWidgetListener = this.f3913d;
        if (easyPlayWidgetListener == null) {
            return null;
        }
        switch (i) {
            case 144101:
                this.f3913d.onInfo((JSONObject) valueSet.objectValue(0, JSONObject.class));
                return null;
            case 144102:
                return (T) easyPlayWidgetListener.getEstimatedInteractionArea();
            case 144103:
                this.f3913d.onCanRenderSuccess((JSONObject) valueSet.objectValue(0, JSONObject.class));
                return null;
            case 144104:
                this.f3913d.onCanRenderFail((JSONObject) valueSet.objectValue(0, JSONObject.class));
                return null;
            case 144105:
                easyPlayWidgetListener.onClose();
                return null;
            default:
                return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}

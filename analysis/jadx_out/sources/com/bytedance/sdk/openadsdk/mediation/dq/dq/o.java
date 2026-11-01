package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import g.hat;

/* loaded from: classes3.dex */
public class o implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final MediationAdDislike f3836d;
    private ValueSet dq = hat.f19147b;

    public o(MediationAdDislike mediationAdDislike) {
        this.f3836d = mediationAdDislike;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        MediationAdDislike mediationAdDislike = this.f3836d;
        if (mediationAdDislike != null) {
            switch (i) {
                case 270032:
                    mediationAdDislike.showDislikeDialog();
                    break;
                case 270033:
                    this.f3836d.setDislikeCallback(new iw((Bridge) valueSet.objectValue(0, Bridge.class)));
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

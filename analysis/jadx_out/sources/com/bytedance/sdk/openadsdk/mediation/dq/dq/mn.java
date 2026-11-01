package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.hat;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class mn extends com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d {
    private Bridge dq;

    public mn(Bridge bridge) {
        super(bridge);
        this.dq = bridge;
    }

    private ValueSet dq(AdSlot adSlot) {
        hat e2 = hat.e(com.bytedance.sdk.openadsdk.f.dq.ox.d.d(adSlot));
        e2.m(8302, MediationAdClassLoader.getInstance());
        if (adSlot != null && adSlot.getMediationAdSlot() != null) {
            e2.m(8260028, new s(adSlot.getMediationAdSlot()));
        }
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d, com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadDrawToken(Context context, AdSlot adSlot, IMediationDrawAdTokenCallback iMediationDrawAdTokenCallback) {
        if (this.dq != null) {
            hat g2 = hat.g(3);
            g2.m(0, context);
            g2.m(1, dq(adSlot));
            g2.m(2, new com.bytedance.sdk.openadsdk.mediation.dq.dq.d.dq(iMediationDrawAdTokenCallback));
            g2.m(3, MediationAdClassLoader.getInstance());
            this.dq.call(270022, g2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d, com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadNativeToken(Context context, AdSlot adSlot, IMediationNativeAdTokenCallback iMediationNativeAdTokenCallback) {
        if (this.dq != null) {
            hat g2 = hat.g(3);
            g2.m(0, context);
            g2.m(1, dq(adSlot));
            g2.m(2, new com.bytedance.sdk.openadsdk.mediation.dq.dq.d.ox(iMediationNativeAdTokenCallback));
            g2.m(3, MediationAdClassLoader.getInstance());
            this.dq.call(270021, g2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d, com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void preload(Activity activity, List<IMediationPreloadRequestInfo> list, int i, int i2) {
        if (this.dq != null) {
            hat g2 = hat.g(4);
            g2.m(0, activity);
            if (list != null) {
                LinkedList linkedList = new LinkedList();
                Iterator<IMediationPreloadRequestInfo> it = list.iterator();
                while (it.hasNext()) {
                    linkedList.add(new ia(it.next()));
                }
                g2.m(1, linkedList);
            }
            g2.o(2, i);
            g2.o(3, i2);
            g2.m(4, MediationAdClassLoader.getInstance());
            this.dq.call(270013, g2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d, com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
        if (this.dq != null) {
            hat g2 = hat.g(1);
            g2.m(0, com.bytedance.sdk.openadsdk.mediation.init.dq.dq.dq.ox.dq(mediationConfigUserInfoForSegment));
            this.dq.call(270014, g2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d, com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void updatePrivacyConfig(TTCustomController tTCustomController) {
        if (this.dq != null) {
            hat g2 = hat.g(1);
            g2.m(0, com.bytedance.sdk.openadsdk.f.dq.ox.p.dq(tTCustomController));
            this.dq.call(270016, g2.k(), Void.class);
        }
    }
}

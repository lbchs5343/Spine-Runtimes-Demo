package com.bytedance.sdk.openadsdk.mediation.dq.dq.dq;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.f.dq.dq.kk;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationManager;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeAdTokenCallback;
import com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo;
import com.bytedance.sdk.openadsdk.mediation.MediationAppDialogClickListener;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.d.s;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class d implements IMediationManager {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public Map<String, Object> getMediationExtraInfo() {
        return (Map) this.dq.call(270024, hat.g(0).k(), Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadDrawToken(Context context, AdSlot adSlot, IMediationDrawAdTokenCallback iMediationDrawAdTokenCallback) {
        hat g2 = hat.g(3);
        g2.m(0, context);
        g2.m(1, adSlot);
        g2.m(2, new com.bytedance.sdk.openadsdk.mediation.dq.dq.d.dq(iMediationDrawAdTokenCallback));
        this.dq.call(270022, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void loadNativeToken(Context context, AdSlot adSlot, IMediationNativeAdTokenCallback iMediationNativeAdTokenCallback) {
        hat g2 = hat.g(3);
        g2.m(0, context);
        g2.m(1, adSlot);
        g2.m(2, new com.bytedance.sdk.openadsdk.mediation.dq.dq.d.ox(iMediationNativeAdTokenCallback));
        this.dq.call(270021, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public Object mtool(int i, ValueSet valueSet) {
        hat g2 = hat.g(2);
        g2.o(0, i);
        g2.m(1, valueSet);
        return this.dq.call(271043, g2.k(), Object.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void preload(Activity activity, List<IMediationPreloadRequestInfo> list, int i, int i2) {
        hat g2 = hat.g(4);
        g2.m(0, activity);
        g2.m(1, list);
        g2.o(2, i);
        g2.o(3, i2);
        this.dq.call(270013, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void requestPermissionIfNecessary(Context context) {
        hat g2 = hat.g(1);
        g2.m(0, context);
        this.dq.call(270017, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void requestPermissionIfNecessary(Context context, int[] iArr) {
        hat g2 = hat.g(2);
        g2.m(0, context);
        g2.m(1, iArr);
        this.dq.call(270018, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setPulisherDid(String str) {
        hat g2 = hat.g(1);
        g2.n(0, str);
        this.dq.call(270015, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setThemeStatus(int i) {
        hat g2 = hat.g(1);
        g2.o(0, i);
        this.dq.call(270019, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void setUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
        hat g2 = hat.g(1);
        g2.m(0, mediationConfigUserInfoForSegment);
        this.dq.call(270014, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public int showOpenOrInstallAppDialog(MediationAppDialogClickListener mediationAppDialogClickListener) {
        hat g2 = hat.g(1);
        g2.m(0, new s(mediationAppDialogClickListener));
        return ((Integer) this.dq.call(270020, g2.k(), Integer.TYPE)).intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void updateLocalExtra(Map<String, Object> map) {
        hat g2 = hat.g(1);
        g2.m(0, map);
        this.dq.call(271050, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationManager
    public void updatePrivacyConfig(TTCustomController tTCustomController) {
        hat g2 = hat.g(1);
        g2.m(0, new kk(tTCustomController));
        this.dq.call(270016, g2.k(), Void.class);
    }
}

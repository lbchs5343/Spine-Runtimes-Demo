package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.dq;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.dq.dq.ia;
import com.bytedance.sdk.openadsdk.f.dq.dq.p;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo;
import com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.s;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq implements IMediationNativeAdInfo {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getActionText() {
        return (String) this.dq.call(268005, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public int getAdImageMode() {
        return ((Integer) this.dq.call(268009, hat.g(0).k(), Integer.TYPE)).intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getDescription() {
        return (String) this.dq.call(268002, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public TTAdDislike getDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        hat g2 = hat.g(1);
        g2.m(0, tTDislikeDialogAbstract);
        return new ia((Bridge) this.dq.call(268019, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public MediationAdDislike getDislikeDialog(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        return new d((Bridge) this.dq.call(268102, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public MediationAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
        hat g2 = hat.g(2);
        g2.m(0, activity);
        g2.m(1, map);
        return new d((Bridge) this.dq.call(268103, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public TTAdDislike getDislikeDialog2(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        return new ia((Bridge) this.dq.call(268018, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public DislikeInfo getDislikeInfo() {
        return new p((Bridge) this.dq.call(268020, hat.g(0).k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getIconUrl() {
        return (String) this.dq.call(268003, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public List<String> getImageList() {
        return (List) this.dq.call(268007, hat.g(0).k(), List.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getImageUrl() {
        return (String) this.dq.call(268004, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public int getInteractionType() {
        return ((Integer) this.dq.call(268010, hat.g(0).k(), Integer.TYPE)).intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public MediationNativeAdAppInfo getNativeAdAppInfo() {
        return new ox((Bridge) this.dq.values().objectValue(268101, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getSource() {
        return (String) this.dq.call(268008, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public double getStarRating() {
        return ((Double) this.dq.call(268006, hat.g(0).k(), Double.TYPE)).doubleValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public String getTitle() {
        return (String) this.dq.call(268001, hat.g(0).k(), String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public boolean hasDislike() {
        return ((Boolean) this.dq.call(268012, hat.g(0).k(), Boolean.TYPE)).booleanValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, IMediationViewBinder iMediationViewBinder) {
        hat g2 = hat.g(6);
        g2.m(0, activity);
        g2.m(1, viewGroup);
        g2.m(2, list);
        g2.m(3, list2);
        g2.m(4, list3);
        g2.m(5, new s(iMediationViewBinder));
        this.dq.call(268011, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        hat g2 = hat.g(2);
        g2.m(0, activity);
        g2.m(1, new com.bytedance.sdk.openadsdk.gh.dq.dq.dq.dq(dislikeInteractionCallback));
        this.dq.call(268016, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationNativeAdInfo
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        hat g2 = hat.g(1);
        g2.m(0, tTDislikeDialogAbstract);
        this.dq.call(268017, g2.k(), Void.class);
    }
}

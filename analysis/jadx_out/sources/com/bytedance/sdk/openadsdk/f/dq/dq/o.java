package com.bytedance.sdk.openadsdk.f.dq.dq;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.DislikeInfo;
import com.bytedance.sdk.openadsdk.DownloadStatusController;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationNativeManager;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class o implements TTDrawFeedAd {
    private final Bridge dq;

    public o(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void destroy() {
        this.dq.call(140114, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Bitmap getAdLogo() {
        return (Bitmap) this.dq.values().objectValue(140002, Bitmap.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public View getAdView() {
        return (View) this.dq.values().objectValue(140016, View.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public int getAdViewHeight() {
        return this.dq.values().intValue(160004);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public int getAdViewWidth() {
        return this.dq.values().intValue(160003);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppCommentNum() {
        return this.dq.values().intValue(140006);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppScore() {
        return this.dq.values().intValue(140005);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getAppSize() {
        return this.dq.values().intValue(140007);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getButtonText() {
        return (String) this.dq.values().objectValue(140018, String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public ComplianceInfo getComplianceInfo() {
        return new ox((Bridge) this.dq.values().objectValue(140014, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public TTFeedAd.CustomizeVideo getCustomVideo() {
        return new com.bytedance.sdk.openadsdk.le.dq.dq.dq.dq((Bridge) this.dq.values().objectValue(160002, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getDescription() {
        return (String) this.dq.values().objectValue(140004, String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        return new ia((Bridge) this.dq.call(140101, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTAdDislike getDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        hat g2 = hat.g(1);
        g2.m(0, tTDislikeDialogAbstract);
        return new ia((Bridge) this.dq.call(140102, g2.k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public DislikeInfo getDislikeInfo() {
        return new p((Bridge) this.dq.values().objectValue(140013, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public DownloadStatusController getDownloadStatusController() {
        return new s((Bridge) this.dq.values().objectValue(140015, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getIcon() {
        return new mp((Bridge) this.dq.values().objectValue(140009, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public List<TTImage> getImageList() {
        List list = (List) this.dq.values().objectValue(140010, List.class);
        if (list == null) {
            list = new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new mp((Bridge) it.next()));
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getImageMode() {
        return this.dq.values().intValue(140012);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public int getInteractionType() {
        return this.dq.values().intValue(140011);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public Map<String, Object> getMediaExtraInfo() {
        return (Map) this.dq.values().objectValue(140017, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public MediationNativeManager getMediationManager() {
        return new com.bytedance.sdk.openadsdk.mediation.manager.dq.dq.dq.p((Bridge) this.dq.call(140116, hat.g(0).k(), Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getSource() {
        return (String) this.dq.values().objectValue(140008, String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public String getTitle() {
        return (String) this.dq.values().objectValue(140003, String.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public TTImage getVideoCoverImage() {
        return new mp((Bridge) this.dq.values().objectValue(140001, Bridge.class));
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public double getVideoDuration() {
        return this.dq.values().doubleValue(160001);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        hat g2 = hat.g(3);
        g2.m(0, d2);
        g2.n(1, str);
        g2.n(2, str2);
        this.dq.call(210102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, TTNativeAd.AdInteractionListener adInteractionListener, IMediationViewBinder iMediationViewBinder) {
        hat g2 = hat.g(7);
        g2.m(0, activity);
        g2.m(1, viewGroup);
        g2.m(2, list);
        g2.m(3, list2);
        g2.m(4, list3);
        g2.m(5, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        g2.m(6, new com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d.s(iMediationViewBinder));
        this.dq.call(140117, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(3);
        g2.m(0, viewGroup);
        g2.m(1, view);
        g2.m(2, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(140103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(5);
        g2.m(0, viewGroup);
        g2.m(1, list);
        g2.m(2, list2);
        g2.m(3, view);
        g2.m(4, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(140105, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, TTNativeAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(4);
        g2.m(0, viewGroup);
        g2.m(1, list);
        g2.m(2, list2);
        g2.m(3, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(140104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(6);
        g2.m(0, viewGroup);
        g2.m(1, list);
        g2.m(2, list2);
        g2.m(3, list3);
        g2.m(4, view);
        g2.m(5, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(140106, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
        hat g2 = hat.g(7);
        g2.m(0, viewGroup);
        g2.m(1, list);
        g2.m(2, list2);
        g2.m(3, list3);
        g2.m(4, list4);
        g2.m(5, view);
        g2.m(6, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.dq(adInteractionListener));
        this.dq.call(140107, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void render() {
        this.dq.call(140110, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setActivityForDownloadApp(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        this.dq.call(140109, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setAdInteractionListener(TTAdInteractionListener tTAdInteractionListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.dq(tTAdInteractionListener));
        this.dq.call(210104, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setCanInterruptVideoPlay(boolean z) {
        hat g2 = hat.g(1);
        g2.i(0, z);
        this.dq.call(170101, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        hat g2 = hat.g(2);
        g2.m(0, activity);
        g2.m(1, new com.bytedance.sdk.openadsdk.gh.dq.dq.dq.dq(dislikeInteractionCallback));
        this.dq.call(140112, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        hat g2 = hat.g(1);
        g2.m(0, tTDislikeDialogAbstract);
        this.dq.call(140113, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setDownloadListener(TTAppDownloadListener tTAppDownloadListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.f.dq.d.d(tTAppDownloadListener));
        this.dq.call(140108, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setDrawVideoListener(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.i.dq.dq.dq.dq(drawVideoListener));
        this.dq.call(170103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setEasyPlayWidgetListener(TTNativeAd.EasyPlayWidgetListener easyPlayWidgetListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.d(easyPlayWidgetListener));
        this.dq.call(140119, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void setExpressRenderListener(TTNativeAd.ExpressRenderListener expressRenderListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.wp.dq.dq.dq.ox(expressRenderListener));
        this.dq.call(140111, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDrawFeedAd
    public void setPauseIcon(Bitmap bitmap, int i) {
        hat g2 = hat.g(2);
        g2.m(0, bitmap);
        g2.o(1, i);
        this.dq.call(170102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void setPrice(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210103, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public void setVideoAdListener(TTFeedAd.VideoAdListener videoAdListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.le.dq.dq.d.dq(videoAdListener));
        this.dq.call(160101, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFeedAd
    public void setVideoRewardListener(TTFeedAd.VideoRewardListener videoRewardListener) {
        hat g2 = hat.g(1);
        g2.m(0, new com.bytedance.sdk.openadsdk.le.dq.dq.d.d(videoRewardListener));
        this.dq.call(160102, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void showInteractionExpressAd(Activity activity) {
        hat g2 = hat.g(1);
        g2.m(0, activity);
        this.dq.call(140115, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd
    public void uploadDislikeEvent(String str) {
        hat g2 = hat.g(1);
        g2.n(0, str);
        this.dq.call(140118, g2.k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        hat g2 = hat.g(1);
        g2.m(0, d2);
        this.dq.call(210101, g2.k(), Void.class);
    }
}

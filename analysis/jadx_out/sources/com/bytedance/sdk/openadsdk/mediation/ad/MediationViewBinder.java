package com.bytedance.sdk.openadsdk.mediation.ad;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class MediationViewBinder implements IMediationViewBinder {
    public final int callToActionId;
    public final int decriptionTextId;
    public final Map<String, Integer> extras;
    public final int groupImage1Id;
    public final int groupImage2Id;
    public final int groupImage3Id;
    public final int iconImageId;
    public final int layoutId;
    public final int logoLayoutId;
    public final int mainImageId;
    public final int mediaViewId;
    public final int shakeViewContainerId;
    public final int sourceId;
    public final int titleId;

    public static class Builder {

        /* renamed from: d, reason: collision with root package name */
        protected int f3811d;
        protected int dq;
        protected int ia;
        protected int ig;
        protected int iw;
        protected int kk;
        protected int mn;
        protected int mp;
        protected int no;
        protected int o;
        protected int ox;
        protected int p;
        protected Map<String, Integer> q;
        protected int s;

        public Builder(int i) {
            this.q = Collections.EMPTY_MAP;
            this.dq = i;
            this.q = new HashMap();
        }

        public Builder addExtra(String str, int i) {
            this.q.put(str, Integer.valueOf(i));
            return this;
        }

        public Builder addExtras(Map<String, Integer> map) {
            this.q = new HashMap(map);
            return this;
        }

        public MediationViewBinder build() {
            return new MediationViewBinder(this);
        }

        public Builder callToActionId(int i) {
            this.p = i;
            return this;
        }

        public Builder descriptionTextId(int i) {
            this.ox = i;
            return this;
        }

        public Builder groupImage1Id(int i) {
            this.o = i;
            return this;
        }

        public Builder groupImage2Id(int i) {
            this.no = i;
            return this;
        }

        public Builder groupImage3Id(int i) {
            this.ig = i;
            return this;
        }

        public Builder iconImageId(int i) {
            this.s = i;
            return this;
        }

        public Builder logoLayoutId(int i) {
            this.kk = i;
            return this;
        }

        public Builder mainImageId(int i) {
            this.iw = i;
            return this;
        }

        public Builder mediaViewIdId(int i) {
            this.mn = i;
            return this;
        }

        public Builder shakeViewContainerId(int i) {
            this.mp = i;
            return this;
        }

        public Builder sourceId(int i) {
            this.ia = i;
            return this;
        }

        public Builder titleId(int i) {
            this.f3811d = i;
            return this;
        }
    }

    public MediationViewBinder(Builder builder) {
        this.layoutId = builder.dq;
        this.titleId = builder.f3811d;
        this.decriptionTextId = builder.ox;
        this.callToActionId = builder.p;
        this.iconImageId = builder.s;
        this.mainImageId = builder.iw;
        this.mediaViewId = builder.mn;
        this.sourceId = builder.ia;
        this.extras = builder.q;
        this.groupImage1Id = builder.o;
        this.groupImage2Id = builder.no;
        this.groupImage3Id = builder.ig;
        this.logoLayoutId = builder.kk;
        this.shakeViewContainerId = builder.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getCallToActionId() {
        return this.callToActionId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getDecriptionTextId() {
        return this.decriptionTextId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public Map<String, Integer> getExtras() {
        return this.extras;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage1Id() {
        return this.groupImage1Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage2Id() {
        return this.groupImage2Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage3Id() {
        return this.groupImage3Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getIconImageId() {
        return this.iconImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLogoLayoutId() {
        return this.logoLayoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMainImageId() {
        return this.mainImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMediaViewId() {
        return this.mediaViewId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getShakeViewContainerId() {
        return this.shakeViewContainerId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getSourceId() {
        return this.sourceId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getTitleId() {
        return this.titleId;
    }
}

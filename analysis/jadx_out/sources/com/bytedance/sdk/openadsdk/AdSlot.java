package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AdSlot implements SlotType {
    private String cd;

    /* renamed from: d, reason: collision with root package name */
    private int f2378d;
    private String dq;

    /* renamed from: e, reason: collision with root package name */
    private IMediationAdSlot f2379e;

    /* renamed from: f, reason: collision with root package name */
    private int[] f2380f;
    private int fw;
    private String gh;
    private String h;
    private String i;
    private boolean ia;
    private int ig;
    private int iw;
    private boolean jy;
    private String k;
    private boolean kk;
    private int kx;
    private String le;
    private boolean mn;
    private int mp;
    private String no;
    private String o;
    private int ox;
    private float p;
    private int q;
    private String r;
    private float s;
    private TTAdLoadType wp;

    public static class Builder {
        private String cd;
        private String dq;

        /* renamed from: e, reason: collision with root package name */
        private IMediationAdSlot f2382e;

        /* renamed from: f, reason: collision with root package name */
        private int[] f2383f;
        private int fw;
        private String gh;
        private String h;
        private String ia;
        private int ig;
        private String k;
        private int kx;
        private String le;
        private float mp;
        private int no;
        private float q;
        private String r;
        private String wp;

        /* renamed from: d, reason: collision with root package name */
        private int f2381d = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
        private int ox = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        private boolean p = true;
        private boolean s = false;
        private boolean iw = false;
        private int mn = 1;
        private String kk = "defaultUser";
        private int o = 2;
        private boolean jy = true;
        private TTAdLoadType i = TTAdLoadType.UNKNOWN;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.dq = this.dq;
            adSlot.iw = this.mn;
            adSlot.mn = this.p;
            adSlot.ia = this.s;
            adSlot.kk = this.iw;
            adSlot.f2378d = this.f2381d;
            adSlot.ox = this.ox;
            adSlot.p = this.mp;
            adSlot.s = this.q;
            adSlot.o = this.ia;
            adSlot.no = this.kk;
            adSlot.ig = this.o;
            adSlot.q = this.no;
            adSlot.jy = this.jy;
            adSlot.f2380f = this.f2383f;
            adSlot.fw = this.fw;
            adSlot.cd = this.cd;
            adSlot.r = this.le;
            adSlot.i = this.k;
            adSlot.le = this.wp;
            adSlot.mp = this.ig;
            adSlot.gh = this.gh;
            adSlot.k = this.r;
            adSlot.wp = this.i;
            adSlot.h = this.h;
            adSlot.kx = this.kx;
            adSlot.f2379e = this.f2382e;
            return adSlot;
        }

        public Builder setAdCount(int i) {
            if (i <= 0) {
                i = 1;
            }
            if (i > 20) {
                i = 20;
            }
            this.mn = i;
            return this;
        }

        public Builder setAdId(String str) {
            this.le = str;
            return this;
        }

        public Builder setAdLoadType(TTAdLoadType tTAdLoadType) {
            this.i = tTAdLoadType;
            return this;
        }

        public Builder setAdType(int i) {
            this.ig = i;
            return this;
        }

        public Builder setAdloadSeq(int i) {
            this.fw = i;
            return this;
        }

        public Builder setCodeId(String str) {
            this.dq = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.k = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f2, float f3) {
            this.mp = f2;
            this.q = f3;
            return this;
        }

        public Builder setExt(String str) {
            this.wp = str;
            return this;
        }

        public Builder setExternalABVid(int... iArr) {
            this.f2383f = iArr;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.f2381d = i;
            this.ox = i2;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.jy = z;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.ia = str;
            return this;
        }

        public Builder setMediationAdSlot(IMediationAdSlot iMediationAdSlot) {
            this.f2382e = iMediationAdSlot;
            return this;
        }

        @Deprecated
        public Builder setNativeAdType(int i) {
            this.no = i;
            return this;
        }

        public Builder setOrientation(int i) {
            this.o = i;
            return this;
        }

        public Builder setPrimeRit(String str) {
            this.cd = str;
            return this;
        }

        public Builder setRewardAmount(int i) {
            this.kx = i;
            return this;
        }

        public Builder setRewardName(String str) {
            this.h = str;
            return this;
        }

        public Builder setSupportDeepLink(boolean z) {
            this.p = z;
            return this;
        }

        public Builder setUserData(String str) {
            this.r = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.kk = str;
            return this;
        }

        public Builder supportIconStyle() {
            this.iw = true;
            return this;
        }

        public Builder supportRenderControl() {
            this.s = true;
            return this;
        }

        public Builder withBid(String str) {
            if (str == null) {
                return this;
            }
            this.gh = str;
            return this;
        }
    }

    private AdSlot() {
        this.ig = 2;
        this.jy = true;
    }

    private String dq(String str, int i) {
        if (i <= 0) {
            return str;
        }
        try {
            JSONObject jSONObject = TextUtils.isEmpty(str) ? new JSONObject() : new JSONObject(str);
            jSONObject.put("_tt_group_load_more", i);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public int getAdCount() {
        return this.iw;
    }

    public String getAdId() {
        return this.r;
    }

    public TTAdLoadType getAdLoadType() {
        return this.wp;
    }

    public int getAdType() {
        return this.mp;
    }

    public int getAdloadSeq() {
        return this.fw;
    }

    public String getBidAdm() {
        return this.gh;
    }

    public String getCodeId() {
        return this.dq;
    }

    public String getCreativeId() {
        return this.i;
    }

    public float getExpressViewAcceptedHeight() {
        return this.s;
    }

    public float getExpressViewAcceptedWidth() {
        return this.p;
    }

    public String getExt() {
        return this.le;
    }

    public int[] getExternalABVid() {
        return this.f2380f;
    }

    public int getImgAcceptedHeight() {
        return this.ox;
    }

    public int getImgAcceptedWidth() {
        return this.f2378d;
    }

    public String getMediaExtra() {
        return this.o;
    }

    public IMediationAdSlot getMediationAdSlot() {
        return this.f2379e;
    }

    @Deprecated
    public int getNativeAdType() {
        return this.q;
    }

    public int getOrientation() {
        return this.ig;
    }

    public String getPrimeRit() {
        String str = this.cd;
        return str == null ? "" : str;
    }

    public int getRewardAmount() {
        return this.kx;
    }

    public String getRewardName() {
        return this.h;
    }

    public String getUserData() {
        return this.k;
    }

    public String getUserID() {
        return this.no;
    }

    public boolean isAutoPlay() {
        return this.jy;
    }

    public boolean isSupportDeepLink() {
        return this.mn;
    }

    public boolean isSupportIconStyle() {
        return this.kk;
    }

    public boolean isSupportRenderConrol() {
        return this.ia;
    }

    public void setAdCount(int i) {
        this.iw = i;
    }

    public void setAdLoadType(TTAdLoadType tTAdLoadType) {
        this.wp = tTAdLoadType;
    }

    public void setExternalABVid(int... iArr) {
        this.f2380f = iArr;
    }

    public void setGroupLoadMore(int i) {
        this.o = dq(this.o, i);
    }

    public void setNativeAdType(int i) {
        this.q = i;
    }

    public void setUserData(String str) {
        this.k = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.dq);
            jSONObject.put("mIsAutoPlay", this.jy);
            jSONObject.put("mImgAcceptedWidth", this.f2378d);
            jSONObject.put("mImgAcceptedHeight", this.ox);
            jSONObject.put("mExpressViewAcceptedWidth", this.p);
            jSONObject.put("mExpressViewAcceptedHeight", this.s);
            jSONObject.put("mAdCount", this.iw);
            jSONObject.put("mSupportDeepLink", this.mn);
            jSONObject.put("mSupportRenderControl", this.ia);
            jSONObject.put("mSupportIconStyle", this.kk);
            jSONObject.put("mMediaExtra", this.o);
            jSONObject.put("mUserID", this.no);
            jSONObject.put("mOrientation", this.ig);
            jSONObject.put("mNativeAdType", this.q);
            jSONObject.put("mAdloadSeq", this.fw);
            jSONObject.put("mPrimeRit", this.cd);
            jSONObject.put("mAdId", this.r);
            jSONObject.put("mCreativeId", this.i);
            jSONObject.put("mExt", this.le);
            jSONObject.put("mBidAdm", this.gh);
            jSONObject.put("mUserData", this.k);
            jSONObject.put("mAdLoadType", this.wp);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.dq + "', mImgAcceptedWidth=" + this.f2378d + ", mImgAcceptedHeight=" + this.ox + ", mExpressViewAcceptedWidth=" + this.p + ", mExpressViewAcceptedHeight=" + this.s + ", mAdCount=" + this.iw + ", mSupportDeepLink=" + this.mn + ", mSupportRenderControl=" + this.ia + ", mSupportIconStyle=" + this.kk + ", mMediaExtra='" + this.o + "', mUserID='" + this.no + "', mOrientation=" + this.ig + ", mNativeAdType=" + this.q + ", mIsAutoPlay=" + this.jy + ", mPrimeRit" + this.cd + ", mAdloadSeq" + this.fw + ", mAdId" + this.r + ", mCreativeId" + this.i + ", mExt" + this.le + ", mUserData" + this.k + ", mAdLoadType" + this.wp + '}';
    }
}

package com.bytedance.msdk.api.p.dq.d.ox;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.awf;
import g.hat;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private final String f773d;
    private final String dq;
    private final String ia;
    private final String ig;
    private final String iw;
    private final String kk;
    private final String mn;
    private final String no;
    private final String o;
    private final String ox;
    private final String p;
    private final String s;

    public d() {
        this.ox = "";
        this.dq = "";
        this.f773d = "";
        this.p = "";
        this.s = "";
        this.iw = "";
        this.mn = "";
        this.ia = "";
        this.kk = "";
        this.o = "";
        this.no = "";
        this.ig = "";
    }

    public d(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.ox = str;
        this.dq = str2;
        this.f773d = str3;
        this.p = str4;
        this.s = str5;
        this.iw = str6;
        this.mn = str7;
        this.ia = str8;
        this.kk = str9;
        this.o = str10;
        this.no = str11;
        this.ig = str12;
    }

    public String d() {
        return this.ox;
    }

    public ValueSet dq() {
        hat f2 = hat.f();
        f2.n(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec, this.ox);
        f2.n(8534, this.dq);
        f2.n(8535, this.f773d);
        f2.n(8536, this.p);
        f2.n(8537, this.s);
        f2.n(8538, this.iw);
        f2.n(8539, this.mn);
        f2.n(8540, this.ia);
        f2.n(8541, this.kk);
        f2.n(8542, this.o);
        f2.n(8543, this.no);
        f2.n(8544, this.ig);
        return f2.k();
    }

    public dq dq(int i, int i2) {
        switch (i) {
            case 1:
                return new dq(this.s, com.bytedance.msdk.api.p.dq.d.dq.d.class);
            case 2:
                return new dq(this.iw, com.bytedance.msdk.api.p.dq.d.mn.d.class);
            case 3:
                return new dq(this.kk, com.bytedance.msdk.api.p.dq.d.o.d.class);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return i2 == 4 ? new dq(this.o, com.bytedance.msdk.api.p.dq.d.ia.ox.class) : i2 == 5 ? new dq(this.no, com.bytedance.msdk.api.p.dq.d.p.d.class) : i2 == 3 ? new dq(this.s, com.bytedance.msdk.api.p.dq.d.dq.d.class) : new dq(this.o, com.bytedance.msdk.api.p.dq.d.ia.ox.class);
            case 7:
                if (i2 != 6 && i2 == 7) {
                    return new dq(this.ia, com.bytedance.msdk.api.p.dq.d.s.d.class);
                }
                return new dq(this.mn, com.bytedance.msdk.api.p.dq.d.kk.d.class);
            case 8:
                return new dq(this.ia, com.bytedance.msdk.api.p.dq.d.s.d.class);
            case 9:
                break;
            case 10:
                if (i2 == 1) {
                    return new dq(this.iw, com.bytedance.msdk.api.p.dq.d.mn.d.class);
                }
                if (i2 == 2) {
                    return new dq(this.ia, com.bytedance.msdk.api.p.dq.d.s.d.class);
                }
                break;
        }
        return new dq(this.no, com.bytedance.msdk.api.p.dq.d.p.d.class);
    }

    public String ox() {
        return this.p;
    }

    public boolean p() {
        return TextUtils.equals(this.ig, "1");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GMCustomInitConfig{mAppId='");
        sb.append(this.dq);
        sb.append("', mAppKey='");
        sb.append(this.f773d);
        sb.append("', mADNName='");
        sb.append(this.ox);
        sb.append("', mAdnInitClassName='");
        sb.append(this.p);
        sb.append("', mBannerClassName='");
        sb.append(this.s);
        sb.append("', mInterstitialClassName='");
        sb.append(this.iw);
        sb.append("', mRewardClassName='");
        sb.append(this.mn);
        sb.append("', mFullVideoClassName='");
        sb.append(this.ia);
        sb.append("', mSplashClassName='");
        sb.append(this.kk);
        sb.append("', mDrawClassName='");
        sb.append(this.no);
        sb.append("', mFeedClassName='");
        return awf.ad(sb, this.o, "'}");
    }
}

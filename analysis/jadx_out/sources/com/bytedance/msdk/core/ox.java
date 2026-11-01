package com.bytedance.msdk.core;

import android.text.TextUtils;
import com.bytedance.msdk.ia.u;
import com.bytedance.msdk.mn.s;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static String f1001d;
    private static String dq;

    public static String d() {
        return u.dq("https://" + dq.d().no());
    }

    public static String dq() {
        return u.dq(s() + "/api/ad/union/mediation/config/");
    }

    private static String iw() {
        String d2 = s.dq().d("server_dist_host");
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        if (TextUtils.equals(d2, dq) && !TextUtils.isEmpty(f1001d)) {
            return f1001d;
        }
        dq = d2;
        f1001d = null;
        if (!TextUtils.isEmpty(d2)) {
            f1001d = com.bytedance.msdk.ia.dq.d(dq, com.bytedance.msdk.ia.d.dq());
        }
        if (TextUtils.isEmpty(f1001d)) {
            return null;
        }
        String str = "https://" + f1001d;
        f1001d = str;
        return str;
    }

    public static String ox() {
        return u.dq(s() + "/api/ad/union/mediation/exchange/");
    }

    public static String p() {
        return u.dq(s() + "/api/ad/union/mediation/reward_video/reward/");
    }

    private static String s() {
        String iw = iw();
        return !TextUtils.isEmpty(iw) ? iw : "https://gromore.pangolin-sdk-toutiao.com";
    }
}

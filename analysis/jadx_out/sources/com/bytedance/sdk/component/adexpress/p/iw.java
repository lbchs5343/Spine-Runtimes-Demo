package com.bytedance.sdk.component.adexpress.p;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class iw {
    public static boolean d(String str) {
        return com.bytedance.sdk.component.adexpress.p.dq() && dq(str);
    }

    public static boolean dq(String str) {
        return TextUtils.equals(str, "fullscreen_interstitial_ad") || TextUtils.equals(str, "rewarded_video");
    }
}

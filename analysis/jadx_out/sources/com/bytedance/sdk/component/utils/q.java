package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class q {
    public static int d(Context context) {
        int ox = ox(context);
        if (ox == 1) {
            return 0;
        }
        if (ox == 4) {
            return 1;
        }
        if (ox == 5) {
            return 4;
        }
        if (ox != 6) {
            return ox;
        }
        return 6;
    }

    public static void dq(jy jyVar) {
        k.dq(jyVar);
    }

    public static boolean dq(Context context) {
        return ox(context) != 0;
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean iw(Context context) {
        return ox(context) == 6;
    }

    public static String mn(Context context) {
        int ox = ox(context);
        return ox != 2 ? ox != 3 ? ox != 4 ? ox != 5 ? ox != 6 ? "mobile" : "5g" : "4g" : "wifi" : "3g" : "2g";
    }

    public static int ox(Context context) {
        return k.dq(context, 60000L);
    }

    public static boolean p(Context context) {
        return ox(context) == 4;
    }

    public static boolean s(Context context) {
        return ox(context) == 5;
    }
}

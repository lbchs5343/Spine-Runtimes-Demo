package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class m {
    /* JADX WARN: Removed duplicated region for block: B:20:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String d(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e2) {
            jo.d(e2);
            networkInfo = null;
            return networkInfo != null ? null : null;
        } catch (Throwable unused) {
            networkInfo = null;
            if (networkInfo != null) {
            }
        }
        if (networkInfo != null && networkInfo.isAvailable()) {
            int type = networkInfo.getType();
            if (1 == type) {
                return "wifi";
            }
            if (type == 0) {
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                }
            }
            return null;
        }
    }

    public static String dq(Context context) {
        if (context == null) {
            return null;
        }
        SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "applog_net_cache.dat", 0);
        if (System.currentTimeMillis() - d2.getLong("start_mills", 0L) < 900000) {
            String string = d2.getString("access", null);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        String d3 = d(context);
        SharedPreferences.Editor edit = d2.edit();
        if (!TextUtils.isEmpty(d3)) {
            edit.putString("access", d3);
        }
        edit.putLong("start_mills", System.currentTimeMillis());
        edit.apply();
        return d3;
    }
}

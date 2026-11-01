package com.ss.android.socialbase.downloader.constants;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    public static volatile String f9317d = "";
    public static volatile String dq = "";
    public static long ia = 10485760;
    public static long iw = 5242880;
    public static final JSONObject kk = new JSONObject();
    public static long mn = 31457280;
    public static volatile String ox = "";
    public static long p = 512000;
    public static long s = 50;

    public static void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dq = str;
    }
}

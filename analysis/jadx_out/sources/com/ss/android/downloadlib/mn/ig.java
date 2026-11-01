package com.ss.android.downloadlib.mn;

import android.text.TextUtils;
import android.util.Log;
import g.tn;

/* loaded from: classes.dex */
public class ig {

    public static class dq {
        private static ig dq = new ig();
    }

    private ig() {
    }

    public static ig dq() {
        return dq.dq;
    }

    public void d(String str, String str2, String str3) {
        Log.e("[TTDownloaderLogger]", ((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? "" : tn.r("sdk:", str, ".", str2, ":")) + str3);
    }

    public void dq(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TextUtils.isEmpty(str2);
    }
}

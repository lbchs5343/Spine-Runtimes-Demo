package com.ss.android.socialbase.appdownloader.d;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class dq {
    public static final String dq;

    static {
        StringBuilder sb = new StringBuilder("AppDownloader");
        String str = Build.VERSION.RELEASE;
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = Build.ID;
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        boolean z = "REL".equals(Build.VERSION.CODENAME) && !TextUtils.isEmpty(Build.MODEL);
        if (!isEmpty) {
            sb.append("/");
            sb.append(str);
        }
        sb.append(" (Linux; U; Android");
        if (!isEmpty) {
            sb.append(" ");
            sb.append(str);
        }
        if (z || !isEmpty2) {
            sb.append(";");
            if (z) {
                sb.append(" ");
                sb.append(Build.MODEL);
            }
            if (!isEmpty2) {
                sb.append(" Build/");
                sb.append(str2);
            }
        }
        sb.append(")");
        dq = sb.toString();
    }
}

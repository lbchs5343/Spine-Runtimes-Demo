package com.ss.android.socialbase.appdownloader.iw;

import android.text.TextUtils;
import android.util.Base64;

/* loaded from: classes.dex */
public class ox {
    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new String(Base64.decode(com.ss.android.socialbase.downloader.kk.iw.dq(str), 0));
    }

    public static String dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        byte[] decode = Base64.decode(com.ss.android.socialbase.downloader.kk.iw.dq(str), 0);
        int length = str2.length();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (byte b2 : decode) {
            if (i >= length) {
                i %= length;
            }
            sb.append((char) (b2 ^ str2.charAt(i)));
            i++;
        }
        return sb.toString();
    }
}

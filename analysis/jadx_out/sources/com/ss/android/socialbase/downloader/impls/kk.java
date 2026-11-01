package com.ss.android.socialbase.downloader.impls;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class kk implements com.ss.android.socialbase.downloader.downloader.no {
    @Override // com.ss.android.socialbase.downloader.downloader.no
    public int dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return 0;
        }
        String s = com.ss.android.socialbase.downloader.kk.iw.s(str + "_" + str2);
        if (TextUtils.isEmpty(s)) {
            return 0;
        }
        return s.hashCode();
    }
}

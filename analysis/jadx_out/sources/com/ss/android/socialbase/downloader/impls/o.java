package com.ss.android.socialbase.downloader.impls;

import com.ss.android.socialbase.downloader.downloader.gh;

/* loaded from: classes.dex */
public class o implements gh {
    @Override // com.ss.android.socialbase.downloader.downloader.gh
    public long dq(int i, int i2) {
        if (i == 1) {
            return 3000L;
        }
        if (i == 2) {
            return 15000L;
        }
        if (i == 3) {
            return 30000L;
        }
        return i > 3 ? 300000L : 0L;
    }
}

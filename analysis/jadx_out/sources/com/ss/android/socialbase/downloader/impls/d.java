package com.ss.android.socialbase.downloader.impls;

/* loaded from: classes.dex */
public class d implements com.ss.android.socialbase.downloader.downloader.mn {
    @Override // com.ss.android.socialbase.downloader.downloader.mn
    public int dq(int i, com.ss.android.socialbase.downloader.network.ig igVar) {
        if (igVar.ordinal() <= com.ss.android.socialbase.downloader.network.ig.MODERATE.ordinal()) {
            return 1;
        }
        return igVar == com.ss.android.socialbase.downloader.network.ig.GOOD ? i - 1 : i;
    }
}

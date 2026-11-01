package com.ss.android.downloadlib.addownload.compliance;

/* loaded from: classes.dex */
public class ox extends com.ss.android.socialbase.downloader.kk.ia<Long, com.ss.android.downloadlib.addownload.d.d> {

    public static class dq {
        private static ox dq = new ox();
    }

    private ox() {
        super(16, 16);
    }

    public static ox dq() {
        return dq.dq;
    }

    public com.ss.android.downloadlib.addownload.d.d dq(long j) {
        return get(Long.valueOf(j));
    }

    public com.ss.android.downloadlib.addownload.d.d dq(long j, long j2) {
        return get(get(Long.valueOf(j)) != null ? Long.valueOf(j) : Long.valueOf(j2));
    }

    public void dq(com.ss.android.downloadlib.addownload.d.d dVar) {
        if (dVar == null) {
            return;
        }
        put(Long.valueOf(dVar.dq()), dVar);
    }
}

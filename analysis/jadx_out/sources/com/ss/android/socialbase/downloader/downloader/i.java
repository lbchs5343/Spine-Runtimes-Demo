package com.ss.android.socialbase.downloader.downloader;

import com.ss.android.socialbase.downloader.network.IDownloadHttpService;

/* loaded from: classes.dex */
public interface i {

    public static class dq implements i {
        @Override // com.ss.android.socialbase.downloader.downloader.i
        public IDownloadHttpService d() {
            return null;
        }

        @Override // com.ss.android.socialbase.downloader.downloader.i
        public com.ss.android.socialbase.downloader.exception.mn dq(Throwable th, String str) {
            return null;
        }

        @Override // com.ss.android.socialbase.downloader.downloader.i
        public boolean dq() {
            return false;
        }

        @Override // com.ss.android.socialbase.downloader.downloader.i
        public boolean dq(Throwable th) {
            return false;
        }

        @Override // com.ss.android.socialbase.downloader.downloader.i
        public com.ss.android.socialbase.downloader.network.ia ox() {
            return null;
        }
    }

    IDownloadHttpService d();

    com.ss.android.socialbase.downloader.exception.mn dq(Throwable th, String str);

    boolean dq();

    boolean dq(Throwable th);

    com.ss.android.socialbase.downloader.network.ia ox();
}

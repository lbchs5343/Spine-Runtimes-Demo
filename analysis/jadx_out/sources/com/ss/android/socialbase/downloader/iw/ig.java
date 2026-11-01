package com.ss.android.socialbase.downloader.iw;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;

/* loaded from: classes.dex */
class ig implements s {

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.model.s f9408d;
    private final kk dq;
    private final s ox;

    public ig(DownloadInfo downloadInfo, d dVar, kk kkVar) throws BaseException {
        this.dq = kkVar;
        this.f9408d = dq(downloadInfo, kkVar);
        this.ox = new ia(dVar, this);
    }

    private com.ss.android.socialbase.downloader.model.s dq(DownloadInfo downloadInfo, kk kkVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.s dq = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo, downloadInfo.getTempPath(), downloadInfo.getTempName(), com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("flush_buffer_size_byte", -1));
        try {
            dq.dq(kkVar.s());
            return dq;
        } catch (IOException e2) {
            throw new BaseException(1054, e2);
        }
    }

    public void d() throws IOException {
        this.f9408d.d();
    }

    @Override // com.ss.android.socialbase.downloader.iw.s
    public void d(dq dqVar) throws IOException {
        this.f9408d.dq(dqVar.dq, 0, dqVar.ox);
        this.dq.d(dqVar.ox);
    }

    public s dq() {
        return this.ox;
    }

    public void ox() throws IOException {
        this.f9408d.ox();
    }

    public void p() {
        com.ss.android.socialbase.downloader.kk.iw.dq(this.f9408d);
    }

    public kk s() {
        return this.dq;
    }
}

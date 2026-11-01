package com.ss.android.socialbase.downloader.s;

import com.ss.android.socialbase.downloader.kk.iw;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ox implements d {

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.iw.dq f9471d;
    private final InputStream dq;

    public ox(InputStream inputStream, int i) {
        this.dq = inputStream;
        this.f9471d = new com.ss.android.socialbase.downloader.iw.dq(i);
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public void d() {
        iw.dq(this.dq);
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public com.ss.android.socialbase.downloader.iw.dq dq() throws IOException {
        com.ss.android.socialbase.downloader.iw.dq dqVar = this.f9471d;
        dqVar.ox = this.dq.read(dqVar.dq);
        return this.f9471d;
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public void dq(com.ss.android.socialbase.downloader.iw.dq dqVar) {
    }
}

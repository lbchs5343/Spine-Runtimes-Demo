package com.ss.android.socialbase.downloader.iw;

import java.io.IOException;

/* loaded from: classes.dex */
class ia implements s {

    /* renamed from: d, reason: collision with root package name */
    private final s f9407d;
    private final s dq;

    public ia(s sVar, s sVar2) {
        this.dq = sVar;
        this.f9407d = sVar2;
    }

    @Override // com.ss.android.socialbase.downloader.iw.s
    public void d(dq dqVar) throws IOException {
        dqVar.f9405d = this.f9407d;
        this.dq.d(dqVar);
    }
}

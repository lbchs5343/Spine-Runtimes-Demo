package com.ss.android.downloadlib.d;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.dq.dq;

/* loaded from: classes.dex */
public class s implements dq.InterfaceC0248dq {
    private long dq;

    public static class dq {
        private static s dq = new s();
    }

    private s() {
        this.dq = 0L;
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(this);
    }

    public static s dq() {
        return dq.dq;
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void d() {
        this.dq = System.currentTimeMillis();
    }

    public void d(p pVar) {
        if (pVar == null) {
            return;
        }
        dq(pVar, no.kk().optInt("check_an_result_delay", 1200) > 0 ? r0 : 1200);
    }

    public void dq(p pVar) {
        dq(pVar, PushUIConfig.dismissTime);
    }

    public void dq(final p pVar, final long j) {
        if (pVar == null) {
            return;
        }
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.d.s.1
            @Override // java.lang.Runnable
            public void run() {
                if (!com.ss.android.socialbase.downloader.dq.dq.dq().ox() || System.currentTimeMillis() - s.this.dq <= j) {
                    pVar.dq(true);
                } else {
                    pVar.dq(false);
                }
            }
        }, j);
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void ox() {
    }
}

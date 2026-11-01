package com.bytedance.sdk.openadsdk.core.o.d;

import android.os.Looper;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.le;

/* loaded from: classes3.dex */
public class d extends kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.o.d.dq f3277d;
    private String dq;
    private String iw;
    private long ox;
    private long p;
    private String s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private long f3278d;
        private String dq;
        private com.bytedance.sdk.openadsdk.core.o.d.dq iw;
        private long ox;
        private String p;
        private String s;

        public dq d(long j) {
            this.ox = j;
            return this;
        }

        public dq d(String str) {
            this.p = str;
            return this;
        }

        public dq dq(long j) {
            this.f3278d = j;
            return this;
        }

        public dq dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
            this.iw = dqVar;
            return this;
        }

        public dq dq(String str) {
            this.dq = str;
            return this;
        }

        public void dq() {
            d dVar = new d("tt_csj_download_thread");
            dVar.iw = this.s;
            dVar.s = this.p;
            dVar.p = this.ox;
            dVar.ox = this.f3278d;
            dVar.dq = this.dq;
            dVar.f3277d = this.iw;
            d.d(dVar);
        }

        public dq ox(String str) {
            this.s = str;
            return this;
        }
    }

    public d(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            le.iw().post(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3277d == null) {
            return;
        }
        String str = this.dq;
        str.getClass();
        switch (str) {
            case "onIdle":
                this.f3277d.dq();
                break;
            case "onInstalled":
                this.f3277d.dq(this.s, this.iw);
                break;
            case "onDownloadActive":
                this.f3277d.dq(this.ox, this.p, this.s, this.iw);
                break;
            case "onDownloadFailed":
                this.f3277d.ox(this.ox, this.p, this.s, this.iw);
                break;
            case "onDownloadPaused":
                this.f3277d.d(this.ox, this.p, this.s, this.iw);
                break;
            case "onDownloadFinished":
                this.f3277d.dq(this.ox, this.s, this.iw);
                break;
        }
    }
}

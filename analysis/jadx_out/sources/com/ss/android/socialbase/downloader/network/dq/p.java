package com.ss.android.socialbase.downloader.network.dq;

import com.ss.android.socialbase.downloader.network.kk;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes.dex */
public class p implements kk {

    /* renamed from: d, reason: collision with root package name */
    private final List<com.ss.android.socialbase.downloader.model.ox> f9454d;
    protected final Object dq;
    private InputStream iw;
    private kk ox;
    private boolean p;
    private long s;

    @Override // com.ss.android.socialbase.downloader.network.mn
    public int d() throws IOException {
        kk kkVar = this.ox;
        if (kkVar != null) {
            return kkVar.d();
        }
        return 0;
    }

    @Override // com.ss.android.socialbase.downloader.network.kk
    public InputStream dq() throws IOException {
        InputStream inputStream = this.iw;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.network.mn
    public String dq(String str) {
        kk kkVar = this.ox;
        if (kkVar != null) {
            return kkVar.dq(str);
        }
        return null;
    }

    public boolean dq(int i) {
        return i >= 200 && i < 300;
    }

    public boolean ia() {
        return System.currentTimeMillis() - this.s < d.dq;
    }

    public List<com.ss.android.socialbase.downloader.model.ox> iw() {
        return this.f9454d;
    }

    public boolean mn() {
        try {
            kk kkVar = this.ox;
            if (kkVar != null) {
                if (dq(kkVar.d())) {
                    return true;
                }
            }
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.mn
    public void ox() {
        kk kkVar = this.ox;
        if (kkVar != null) {
            kkVar.ox();
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.kk
    public void p() {
        kk kkVar = this.ox;
        if (kkVar != null) {
            kkVar.p();
        }
    }

    public void s() throws InterruptedException {
        synchronized (this.dq) {
            try {
                if (this.p && this.ox == null) {
                    this.dq.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

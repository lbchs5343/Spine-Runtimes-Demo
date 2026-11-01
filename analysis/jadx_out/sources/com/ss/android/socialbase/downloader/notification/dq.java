package com.ss.android.socialbase.downloader.notification;

import android.app.Notification;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    private int f9467d;
    protected Notification dq;
    private int ia;
    private int iw = 0;
    private boolean kk;
    private long mn;
    private long ox;
    private long p;
    private String s;

    public dq(int i, String str) {
        this.f9467d = i;
        this.s = str;
    }

    public long d() {
        return this.ox;
    }

    public void d(long j) {
        this.p = j;
    }

    public int dq() {
        return this.f9467d;
    }

    public void dq(int i, BaseException baseException, boolean z) {
        dq(i, baseException, z, false);
    }

    public void dq(int i, BaseException baseException, boolean z, boolean z2) {
        if (z2 || this.iw != i) {
            this.iw = i;
            dq(baseException, z);
        }
    }

    public void dq(long j) {
        this.ox = j;
    }

    public void dq(long j, long j2) {
        this.ox = j;
        this.p = j2;
        this.iw = 4;
        dq((BaseException) null, false);
    }

    public void dq(Notification notification) {
        if (this.f9467d == 0 || notification == null) {
            return;
        }
        d.dq().dq(this.f9467d, this.iw, notification);
    }

    public abstract void dq(BaseException baseException, boolean z);

    public void dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f9467d = downloadInfo.getId();
        this.s = downloadInfo.getTitle();
    }

    public boolean ia() {
        return this.kk;
    }

    public long iw() {
        if (this.mn == 0) {
            this.mn = System.currentTimeMillis();
        }
        return this.mn;
    }

    public synchronized void mn() {
        this.ia++;
    }

    public long ox() {
        return this.p;
    }

    public String p() {
        return this.s;
    }

    public int s() {
        return this.iw;
    }
}

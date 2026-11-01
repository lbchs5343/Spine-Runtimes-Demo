package com.ss.android.socialbase.downloader.iw;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
class fw {

    /* renamed from: d, reason: collision with root package name */
    final String f9406d;
    final String dq;
    private int ia;
    private int iw;
    private String kk;
    private boolean mn;
    private final AtomicLong o;
    final String ox;
    final boolean p;
    private final List<mp> s;

    public fw(String str, String str2) {
        this.s = new ArrayList();
        this.o = new AtomicLong();
        this.dq = str;
        this.p = false;
        this.f9406d = str2;
        this.ox = dq(str2);
    }

    public fw(String str, boolean z) {
        this.s = new ArrayList();
        this.o = new AtomicLong();
        this.dq = str;
        this.p = z;
        this.f9406d = null;
        this.ox = null;
    }

    private String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf <= 0 || lastIndexOf >= str.length()) {
                return null;
            }
            return str.substring(0, lastIndexOf);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private String s() {
        if (this.kk == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.dq);
            sb.append("_");
            String str = this.f9406d;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("_");
            sb.append(this.p);
            this.kk = sb.toString();
        }
        return this.kk;
    }

    public synchronized void d() {
        this.iw++;
        this.mn = true;
    }

    public synchronized void d(mp mpVar) {
        try {
            this.s.remove(mpVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized int dq() {
        return this.s.size();
    }

    public void dq(long j) {
        this.o.addAndGet(j);
    }

    public synchronized void dq(mp mpVar) {
        this.s.add(mpVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof fw) {
            return s().equals(((fw) obj).s());
        }
        return false;
    }

    public int hashCode() {
        if (this.ia == 0) {
            this.ia = s().hashCode();
        }
        return this.ia;
    }

    public synchronized void ox() {
        this.mn = false;
    }

    public synchronized boolean p() {
        return this.mn;
    }

    public String toString() {
        return "UrlRecord{url='" + this.dq + "', ip='" + this.f9406d + "', ipFamily='" + this.ox + "', isMainUrl=" + this.p + ", failedTimes=" + this.iw + ", isCurrentFailed=" + this.mn + '}';
    }
}

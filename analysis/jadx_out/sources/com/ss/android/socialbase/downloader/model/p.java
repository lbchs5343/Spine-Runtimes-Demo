package com.ss.android.socialbase.downloader.model;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.network.mn;
import java.io.IOException;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    public final mn f9447d;
    public final String dq;
    public final int ox;
    private long p;
    private long s;

    public p(String str, mn mnVar) throws IOException {
        this.dq = str;
        this.ox = mnVar.d();
        this.f9447d = mnVar;
    }

    public boolean d() {
        return iw.dq(this.ox, this.f9447d.dq("Accept-Ranges"));
    }

    public boolean dq() {
        return iw.ox(this.ox);
    }

    public long ia() {
        if (this.p <= 0) {
            this.p = iw.dq(this.f9447d);
        }
        return this.p;
    }

    public String iw() {
        String d2 = iw.d(this.f9447d, "last-modified");
        return TextUtils.isEmpty(d2) ? iw.d(this.f9447d, "Last-Modified") : d2;
    }

    public boolean kk() {
        return com.ss.android.socialbase.downloader.kk.dq.dq(8) ? iw.ox(this.f9447d) : iw.d(ia());
    }

    public String mn() {
        return iw.d(this.f9447d, "Cache-Control");
    }

    public long no() {
        return iw.kk(mn());
    }

    public long o() {
        if (this.s <= 0) {
            if (kk()) {
                this.s = -1L;
            } else {
                String s = s();
                if (!TextUtils.isEmpty(s)) {
                    this.s = iw.d(s);
                }
            }
        }
        return this.s;
    }

    public String ox() {
        return this.f9447d.dq("Etag");
    }

    public String p() {
        return this.f9447d.dq("Content-Type");
    }

    public String s() {
        return iw.d(this.f9447d, "Content-Range");
    }
}

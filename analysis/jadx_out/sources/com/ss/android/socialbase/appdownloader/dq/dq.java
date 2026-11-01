package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class dq implements s {

    /* renamed from: d, reason: collision with root package name */
    protected final com.ss.android.socialbase.downloader.mn.dq f9273d;
    protected final Context dq;
    protected final String ox;

    public dq(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str) {
        this.dq = context;
        this.f9273d = dqVar;
        this.ox = str;
    }

    public boolean dq() {
        if (this.dq == null) {
            return false;
        }
        try {
        } catch (Throwable th) {
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                Log.e("AbsDevicePlan", "check is valid failed!", th);
            }
        }
        return d().resolveActivity(this.dq.getPackageManager()) != null;
    }
}

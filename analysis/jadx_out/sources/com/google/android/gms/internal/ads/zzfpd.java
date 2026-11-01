package com.google.android.gms.internal.ads;

import android.os.AsyncTask;

/* loaded from: classes3.dex */
public abstract class zzfpd extends AsyncTask {

    /* renamed from: d, reason: collision with root package name */
    public zzfpe f8133d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfov f8134e;

    public zzfpd(zzfov zzfovVar) {
        this.f8134e = zzfovVar;
    }

    @Override // android.os.AsyncTask
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        zzfpe zzfpeVar = this.f8133d;
        if (zzfpeVar != null) {
            zzfpeVar.zza(this);
        }
    }

    public final void zzb(zzfpe zzfpeVar) {
        this.f8133d = zzfpeVar;
    }
}

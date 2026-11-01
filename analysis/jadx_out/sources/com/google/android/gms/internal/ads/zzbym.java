package com.google.android.gms.internal.ads;

import android.content.Context;
import g.cvb;
import g.czz;
import g.dst;
import g.pw;

/* loaded from: classes3.dex */
public final class zzbym {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f5073a;

    /* renamed from: b, reason: collision with root package name */
    public final dst f5074b;

    public zzbym(cvb cvbVar, dst dstVar) {
        this.f5073a = cvbVar;
        this.f5074b = dstVar;
    }

    public static zzbym zza(Context context) {
        return zzbyw.zzd(context).b();
    }

    public final void zzb(int i, long j) {
        this.f5074b.b(i, j);
    }

    public final void zzc(pw pwVar) {
        ((czz) this.f5073a).getClass();
        this.f5074b.b(-1, System.currentTimeMillis());
    }

    public final void zzd() {
        ((czz) this.f5073a).getClass();
        this.f5074b.b(-1, System.currentTimeMillis());
    }
}

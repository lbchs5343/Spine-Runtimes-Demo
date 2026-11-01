package com.google.android.gms.internal.ads;

import android.os.Handler;
import g.dbi;
import g.eax;

/* loaded from: classes3.dex */
public final class zzapg {

    /* renamed from: a, reason: collision with root package name */
    public final dbi f4436a;

    public zzapg(Handler handler) {
        this.f4436a = new dbi(handler, 3);
    }

    public final void zza(zzapp zzappVar, zzapy zzapyVar) {
        zzappVar.zzm("post-error");
        this.f4436a.f13917b.post(new eax(zzappVar, zzapv.zza(zzapyVar), null, 6, false));
    }

    public final void zzb(zzapp zzappVar, zzapv zzapvVar, Runnable runnable) {
        zzappVar.zzq();
        zzappVar.zzm("post-response");
        this.f4436a.f13917b.post(new eax(zzappVar, zzapvVar, runnable, 6, false));
    }
}

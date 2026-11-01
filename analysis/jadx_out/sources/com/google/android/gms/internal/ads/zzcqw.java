package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import g.bpp;
import g.cbz;
import g.eno;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzcqw extends zzcpd {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f5540a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f5541b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbhp f5542c;

    public zzcqw(zzcrp zzcrpVar, zzbhp zzbhpVar, Runnable runnable, Executor executor) {
        super(zzcrpVar);
        this.f5542c = zzbhpVar;
        this.f5540a = runnable;
        this.f5541b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final View zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final cbz zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final zzfeu zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final zzfeu zzg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final void zzi(ViewGroup viewGroup, eno enoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcrq
    public final void zzk() {
        final zzcqu zzcquVar = new zzcqu(new AtomicReference(this.f5540a));
        this.f5541b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqv
            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable;
                zzcqw zzcqwVar = zzcqw.this;
                Runnable runnable2 = zzcquVar;
                zzcqwVar.getClass();
                try {
                    if (zzcqwVar.f5542c.zze(new bpp(runnable2)) || (runnable = (Runnable) ((zzcqu) runnable2).zza.getAndSet(null)) == null) {
                        return;
                    }
                    runnable.run();
                } catch (RemoteException unused) {
                    Runnable runnable3 = (Runnable) ((zzcqu) runnable2).zza.getAndSet(null);
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
            }
        });
    }
}

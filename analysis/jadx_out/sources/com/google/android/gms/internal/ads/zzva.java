package com.google.android.gms.internal.ads;

import android.os.Handler;
import g.fzi;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class zzva {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f8908a;
    public final int zza;
    public final zzur zzb;

    public zzva() {
        this(new CopyOnWriteArrayList(), null);
    }

    public zzva(CopyOnWriteArrayList copyOnWriteArrayList, zzur zzurVar) {
        this.f8908a = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzurVar;
    }

    public final zzva zza(int i, zzur zzurVar) {
        return new zzva(this.f8908a, zzurVar);
    }

    public final void zzb(Handler handler, zzvb zzvbVar) {
        this.f8908a.add(new fzi(handler, zzvbVar));
    }

    public final void zzc(final zzun zzunVar) {
        Iterator it = this.f8908a.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            final zzvb zzvbVar = fziVar.f17707b;
            zzen.zzN(fziVar.f17706a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuu
                @Override // java.lang.Runnable
                public final void run() {
                    zzvbVar.zzaf(0, zzva.this.zzb, zzunVar);
                }
            });
        }
    }

    public final void zzd(final zzui zzuiVar, final zzun zzunVar) {
        Iterator it = this.f8908a.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            final zzvb zzvbVar = fziVar.f17707b;
            zzen.zzN(fziVar.f17706a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuy
                @Override // java.lang.Runnable
                public final void run() {
                    zzvbVar.zzag(0, zzva.this.zzb, zzuiVar, zzunVar);
                }
            });
        }
    }

    public final void zze(final zzui zzuiVar, final zzun zzunVar) {
        Iterator it = this.f8908a.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            final zzvb zzvbVar = fziVar.f17707b;
            zzen.zzN(fziVar.f17706a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuw
                @Override // java.lang.Runnable
                public final void run() {
                    zzvbVar.zzah(0, zzva.this.zzb, zzuiVar, zzunVar);
                }
            });
        }
    }

    public final void zzf(final zzui zzuiVar, final zzun zzunVar, final IOException iOException, final boolean z) {
        Iterator it = this.f8908a.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            final zzvb zzvbVar = fziVar.f17707b;
            zzen.zzN(fziVar.f17706a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzux
                @Override // java.lang.Runnable
                public final void run() {
                    zzvbVar.zzai(0, zzva.this.zzb, zzuiVar, zzunVar, iOException, z);
                }
            });
        }
    }

    public final void zzg(final zzui zzuiVar, final zzun zzunVar) {
        Iterator it = this.f8908a.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            final zzvb zzvbVar = fziVar.f17707b;
            zzen.zzN(fziVar.f17706a, new Runnable() { // from class: com.google.android.gms.internal.ads.zzuv
                @Override // java.lang.Runnable
                public final void run() {
                    zzvbVar.zzaj(0, zzva.this.zzb, zzuiVar, zzunVar);
                }
            });
        }
    }

    public final void zzh(zzvb zzvbVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f8908a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            fzi fziVar = (fzi) it.next();
            if (fziVar.f17707b == zzvbVar) {
                copyOnWriteArrayList.remove(fziVar);
            }
        }
    }
}

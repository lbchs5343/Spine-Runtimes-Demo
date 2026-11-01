package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.fvh;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcgl implements Runnable {
    public final /* synthetic */ zzcgm zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ boolean zze;

    public /* synthetic */ zzcgl(zzcgm zzcgmVar, int i, int i2, boolean z, boolean z2) {
        this.zza = zzcgmVar;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        boolean z;
        boolean z2;
        fvh fvhVar;
        fvh fvhVar2;
        fvh fvhVar3;
        zzcgm zzcgmVar = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        boolean z3 = this.zzd;
        boolean z4 = this.zze;
        synchronized (zzcgmVar.k) {
            try {
                boolean z5 = zzcgmVar.f5259b;
                if (z5 || i3 != 1) {
                    i = i3;
                    z = false;
                } else {
                    i3 = 1;
                    i = 1;
                    z = true;
                }
                boolean z6 = i2 != i3;
                if (z6 && i == 1) {
                    z2 = true;
                    i = 1;
                } else {
                    z2 = false;
                }
                boolean z7 = z6 && i == 2;
                boolean z8 = z6 && i == 3;
                zzcgmVar.f5259b = z5 || z;
                if (z) {
                    try {
                        fvh fvhVar4 = zzcgmVar.o;
                        if (fvhVar4 != null) {
                            fvhVar4.zzi();
                        }
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                    }
                }
                if (z2 && (fvhVar3 = zzcgmVar.o) != null) {
                    fvhVar3.zzh();
                }
                if (z7 && (fvhVar2 = zzcgmVar.o) != null) {
                    fvhVar2.zzg();
                }
                if (z8) {
                    fvh fvhVar5 = zzcgmVar.o;
                    if (fvhVar5 != null) {
                        fvhVar5.zze();
                    }
                    zzcgmVar.i.zzw();
                }
                if (z3 != z4 && (fvhVar = zzcgmVar.o) != null) {
                    fvhVar.a(z4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

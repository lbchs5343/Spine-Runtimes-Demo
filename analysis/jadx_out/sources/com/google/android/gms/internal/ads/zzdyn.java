package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.dcy;
import g.edt;
import g.nk;
import g.ti;

/* loaded from: classes3.dex */
public final class zzdyn extends zzdyh {

    /* renamed from: a, reason: collision with root package name */
    public int f6688a;

    /* renamed from: b, reason: collision with root package name */
    public String f6689b;

    @Override // com.google.android.gms.internal.ads.zzdyh, g.bjb
    public final void onConnected(Bundle bundle) {
        synchronized (this.f6684g) {
            try {
                if (!this.f6681d) {
                    this.f6681d = true;
                    try {
                        int i = this.f6688a;
                        if (i == 2) {
                            this.h.zzp().zze(this.f6682e, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmD)).booleanValue() ? new zzdyg(this.f6683f, this.f6682e) : new zzdyf(this));
                        } else if (i == 3) {
                            this.h.zzp().zzh(this.f6689b, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmD)).booleanValue() ? new zzdyg(this.f6683f, this.f6682e) : new zzdyf(this));
                        } else {
                            this.f6683f.zzd(new zzdyw(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6683f.zzd(new zzdyw(1));
                    } catch (Throwable th) {
                        ti.f20033a.f20034ab.zzw(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                        this.f6683f.zzd(new zzdyw(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyh, g.lb
    public final void onConnectionFailed(nk nkVar) {
        agd.c("Cannot connect to remote service, fallback to local instance.");
        this.f6683f.zzd(new zzdyw(1));
    }

    public final dcy zza(zzbvx zzbvxVar) {
        synchronized (this.f6684g) {
            try {
                int i = this.f6688a;
                if (i != 1 && i != 2) {
                    return zzgei.zzg(new zzdyw(2));
                }
                if (this.f6680c) {
                    return this.f6683f;
                }
                this.f6688a = 2;
                this.f6680c = true;
                this.f6682e = zzbvxVar;
                this.h.checkAvailabilityAndConnect();
                this.f6683f.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyn.this.j();
                    }
                }, zzcaj.zzf);
                return this.f6683f;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final dcy zzd(String str) {
        synchronized (this.f6684g) {
            try {
                int i = this.f6688a;
                if (i != 1 && i != 3) {
                    return zzgei.zzg(new zzdyw(2));
                }
                if (this.f6680c) {
                    return this.f6683f;
                }
                this.f6688a = 3;
                this.f6680c = true;
                this.f6689b = str;
                this.h.checkAvailabilityAndConnect();
                this.f6683f.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdym
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyn.this.j();
                    }
                }, zzcaj.zzf);
                return this.f6683f;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.dcy;
import g.edt;
import g.nk;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdyd extends zzdyh {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6675a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6676b;

    public zzdyd(Context context, Executor executor) {
        this.f6676b = context;
        this.f6675a = executor;
        this.h = new zzbur(context, ti.f20033a.q.f(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdyh, g.bjb
    public final void onConnected(Bundle bundle) {
        synchronized (this.f6684g) {
            try {
                if (!this.f6681d) {
                    this.f6681d = true;
                    try {
                        this.h.zzp().zzg(this.f6682e, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmD)).booleanValue() ? new zzdyg(this.f6683f, this.f6682e) : new zzdyf(this));
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6683f.zzd(new zzdyw(1));
                    } catch (Throwable th) {
                        ti.f20033a.f20034ab.zzw(th, "RemoteAdRequestClientTask.onConnected");
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
                if (this.f6680c) {
                    return this.f6683f;
                }
                this.f6680c = true;
                this.f6682e = zzbvxVar;
                this.h.checkAvailabilityAndConnect();
                this.f6683f.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyd.this.j();
                    }
                }, zzcaj.zzf);
                zzdyh.i(this.f6676b, this.f6683f, this.f6675a);
                return this.f6683f;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

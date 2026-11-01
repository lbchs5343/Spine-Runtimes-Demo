package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import g.dcy;
import g.edt;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdyj extends zzdyh {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6685a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6686b;

    public zzdyj(Context context, zzges zzgesVar) {
        this.f6686b = context;
        this.f6685a = zzgesVar;
        this.h = new zzbur(context, ti.f20033a.q.f(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdyh, g.bjb
    public final void onConnected(Bundle bundle) {
        synchronized (this.f6684g) {
            try {
                if (!this.f6681d) {
                    this.f6681d = true;
                    try {
                        this.h.zzp().zzf(this.f6682e, ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmD)).booleanValue() ? new zzdyg(this.f6683f, this.f6682e) : new zzdyf(this));
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6683f.zzd(new zzdyw(1));
                    } catch (Throwable th) {
                        ti.f20033a.f20034ab.zzw(th, "RemoteSignalsClientTask.onConnected");
                        this.f6683f.zzd(new zzdyw(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
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
                this.f6683f.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdyj.this.j();
                    }
                }, zzcaj.zzf);
                zzdyh.i(this.f6686b, this.f6683f, this.f6685a);
                return this.f6683f;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

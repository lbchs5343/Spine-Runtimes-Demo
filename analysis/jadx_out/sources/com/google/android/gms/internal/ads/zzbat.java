package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import g.agd;
import g.dyn;
import g.edt;
import g.eie;
import g.emr;
import g.evn;
import g.ti;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzbat {

    /* renamed from: a, reason: collision with root package name */
    public zzbaw f4677a;

    /* renamed from: b, reason: collision with root package name */
    public Context f4678b;

    /* renamed from: d, reason: collision with root package name */
    public zzbaz f4680d;

    /* renamed from: c, reason: collision with root package name */
    public ScheduledFuture f4679c = null;

    /* renamed from: e, reason: collision with root package name */
    public final dyn f4681e = new dyn(28, this);

    /* renamed from: f, reason: collision with root package name */
    public final Object f4682f = new Object();

    public static /* bridge */ /* synthetic */ void g(zzbat zzbatVar) {
        synchronized (zzbatVar.f4682f) {
            try {
                zzbaw zzbawVar = zzbatVar.f4677a;
                if (zzbawVar == null) {
                    return;
                }
                if (zzbawVar.isConnected() || zzbatVar.f4677a.isConnecting()) {
                    zzbatVar.f4677a.disconnect();
                }
                zzbatVar.f4677a = null;
                zzbatVar.f4680d = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized zzbaw h(eie eieVar, emr emrVar) {
        return new zzbaw(this.f4678b, ti.f20033a.q.f(), eieVar, emrVar);
    }

    public final void i() {
        synchronized (this.f4682f) {
            try {
                if (this.f4678b != null && this.f4677a == null) {
                    zzbaw h = h(new eie(25, this), new emr(24, this));
                    this.f4677a = h;
                    h.checkAvailabilityAndConnect();
                }
            } finally {
            }
        }
    }

    public final long zza(zzbax zzbaxVar) {
        synchronized (this.f4682f) {
            try {
                if (this.f4680d == null) {
                    return -2L;
                }
                if (this.f4677a.zzp()) {
                    try {
                        return this.f4680d.zze(zzbaxVar);
                    } catch (RemoteException e2) {
                        agd.f("Unable to call into cache service.", e2);
                    }
                }
                return -2L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbau zzb(zzbax zzbaxVar) {
        synchronized (this.f4682f) {
            if (this.f4680d == null) {
                return new zzbau();
            }
            try {
                if (this.f4677a.zzp()) {
                    return this.f4680d.zzg(zzbaxVar);
                }
                return this.f4680d.zzf(zzbaxVar);
            } catch (RemoteException e2) {
                agd.f("Unable to call into cache service.", e2);
                return new zzbau();
            }
        }
    }

    public final void zzi(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f4682f) {
            try {
                if (this.f4678b != null) {
                    return;
                }
                this.f4678b = context.getApplicationContext();
                zzbce zzbceVar = zzbcn.zzel;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    i();
                } else {
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzek)).booleanValue()) {
                        ti.f20033a.p.zzc(new evn(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() {
        zzbce zzbceVar = zzbcn.zzem;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            synchronized (this.f4682f) {
                try {
                    i();
                    ScheduledFuture scheduledFuture = this.f4679c;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f4679c = zzcaj.zzd.schedule(this.f4681e, ((Long) edtVar.f15379d.zza(zzbcn.zzen)).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}

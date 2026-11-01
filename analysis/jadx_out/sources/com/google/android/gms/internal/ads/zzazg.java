package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import g.agd;
import g.edt;
import g.fes;

/* loaded from: classes3.dex */
public final class zzazg {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4632a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public fes f4633b = null;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4634c = false;

    public final Activity zza() {
        synchronized (this.f4632a) {
            try {
                fes fesVar = this.f4633b;
                if (fesVar == null) {
                    return null;
                }
                return fesVar.f16681g;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Context zzb() {
        synchronized (this.f4632a) {
            try {
                fes fesVar = this.f4633b;
                if (fesVar == null) {
                    return null;
                }
                return fesVar.i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc(zzazf zzazfVar) {
        synchronized (this.f4632a) {
            try {
                if (this.f4633b == null) {
                    this.f4633b = new fes();
                }
                this.f4633b.k(zzazfVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(Context context) {
        synchronized (this.f4632a) {
            try {
                if (!this.f4634c) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                    if (application == null) {
                        agd.b("Can not cast Context to Application");
                        return;
                    }
                    if (this.f4633b == null) {
                        this.f4633b = new fes();
                    }
                    fes fesVar = this.f4633b;
                    if (!fesVar.h) {
                        application.registerActivityLifecycleCallbacks(fesVar);
                        if (context instanceof Activity) {
                            fesVar.m((Activity) context);
                        }
                        fesVar.i = application;
                        fesVar.f16677c = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzaZ)).longValue();
                        fesVar.h = true;
                    }
                    this.f4634c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze(zzazf zzazfVar) {
        synchronized (this.f4632a) {
            try {
                fes fesVar = this.f4633b;
                if (fesVar == null) {
                    return;
                }
                fesVar.l(zzazfVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

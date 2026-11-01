package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import g.agd;
import g.bjb;
import g.cva;
import g.lb;
import g.nk;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class zzdyh implements bjb, lb {

    /* renamed from: e, reason: collision with root package name */
    public zzbvx f6682e;
    public zzbur h;

    /* renamed from: f, reason: collision with root package name */
    public final zzcao f6683f = new zzcao();

    /* renamed from: g, reason: collision with root package name */
    public final Object f6684g = new Object();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6680c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6681d = false;

    public static void i(Context context, zzcao zzcaoVar, Executor executor) {
        if (((Boolean) zzbef.zzj.zze()).booleanValue() || ((Boolean) zzbef.zzh.zze()).booleanValue()) {
            cva cvaVar = new cva();
            cvaVar.f13569a = context;
            zzgei.zzr(zzcaoVar, cvaVar, executor);
        }
    }

    public final void j() {
        synchronized (this.f6684g) {
            try {
                this.f6681d = true;
                if (!this.h.isConnected()) {
                    if (this.h.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                this.h.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.bjb
    public abstract /* synthetic */ void onConnected(Bundle bundle);

    public void onConnectionFailed(nk nkVar) {
        agd.c("Disconnected from remote ad request service.");
        this.f6683f.zzd(new zzdyw(1));
    }

    @Override // g.bjb
    public final void onConnectionSuspended(int i) {
        agd.c("Cannot connect to remote service, fallback to local instance.");
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import g.agd;
import g.bjb;
import g.lb;
import g.nk;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public abstract class zzeap implements bjb, lb {

    /* renamed from: b, reason: collision with root package name */
    public ScheduledExecutorService f6747b;

    /* renamed from: d, reason: collision with root package name */
    public zzbuu f6749d;

    /* renamed from: e, reason: collision with root package name */
    public Context f6750e;
    public Looper h;

    /* renamed from: f, reason: collision with root package name */
    public final zzcao f6751f = new zzcao();

    /* renamed from: g, reason: collision with root package name */
    public boolean f6752g = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6748c = false;

    public final synchronized void i() {
        try {
            if (this.f6749d == null) {
                this.f6749d = new zzbuu(this.f6750e, this.h, this, this);
            }
            this.f6749d.checkAvailabilityAndConnect();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j() {
        try {
            this.f6748c = true;
            zzbuu zzbuuVar = this.f6749d;
            if (zzbuuVar == null) {
                return;
            }
            if (!zzbuuVar.isConnected()) {
                if (this.f6749d.isConnecting()) {
                }
                Binder.flushPendingCommands();
            }
            this.f6749d.disconnect();
            Binder.flushPendingCommands();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g.bjb
    public abstract /* synthetic */ void onConnected(Bundle bundle);

    @Override // g.lb
    public final void onConnectionFailed(nk nkVar) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection failed, cause: " + nkVar.getErrorCode() + ".";
        agd.c(str);
        this.f6751f.zzd(new zzdyw(1, str));
    }

    @Override // g.bjb
    public void onConnectionSuspended(int i) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection suspended, cause: " + i + ".";
        agd.c(str);
        this.f6751f.zzd(new zzdyw(1, str));
    }
}

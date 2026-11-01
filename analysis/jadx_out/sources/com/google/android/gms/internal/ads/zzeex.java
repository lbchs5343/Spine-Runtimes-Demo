package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.InputEvent;
import g.bff;
import g.cev;
import g.dcy;
import g.fuk;
import g.qw;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzeex {

    /* renamed from: a, reason: collision with root package name */
    public cev f6874a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6875b;

    public zzeex(Context context) {
        this.f6875b = context;
    }

    public final dcy zza() {
        try {
            Context context = this.f6875b;
            bff.p(context, "context");
            qw qwVar = qw.f19883a;
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                qwVar.b();
            }
            fuk fukVar = (i >= 30 ? qwVar.b() : 0) >= 5 ? new fuk(context) : null;
            cev cevVar = fukVar != null ? new cev(fukVar) : null;
            this.f6874a = cevVar;
            return cevVar == null ? zzgei.zzg(new IllegalStateException("MeasurementManagerFutures is null")) : cevVar.f();
        } catch (Exception e2) {
            return zzgei.zzg(e2);
        }
    }

    public final dcy zzb(Uri uri, InputEvent inputEvent) {
        try {
            cev cevVar = this.f6874a;
            Objects.requireNonNull(cevVar);
            return cevVar.g(uri, inputEvent);
        } catch (Exception e2) {
            return zzgei.zzg(e2);
        }
    }
}

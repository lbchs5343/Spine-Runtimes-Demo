package com.google.android.gms.internal.ads;

import android.content.Context;
import g.bea;
import g.chw;
import g.ci;
import g.eeo;
import g.err;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfpp {

    /* renamed from: a, reason: collision with root package name */
    public static volatile int f8142a = 1;
    public static final /* synthetic */ int zza = 0;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8143b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8144c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f8145d;

    /* renamed from: e, reason: collision with root package name */
    public final ci f8146e;

    public zzfpp(Context context, Executor executor, ci ciVar, boolean z) {
        this.f8144c = context;
        this.f8145d = executor;
        this.f8146e = ciVar;
        this.f8143b = z;
    }

    public static zzfpp zza(final Context context, Executor executor, boolean z) {
        final eeo eeoVar = new eeo();
        if (z) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpn
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    eeo eeoVar2 = eeoVar;
                    eeoVar2.f15402a.m(zzfrr.zzb(context2, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpo
                @Override // java.lang.Runnable
                public final void run() {
                    eeo eeoVar2 = eeo.this;
                    eeoVar2.f15402a.m(zzfrr.zzc());
                }
            });
        }
        return new zzfpp(context, executor, eeoVar.f15402a, z);
    }

    public final chw f(final int i, long j, Exception exc, String str, String str2) {
        if (!this.f8143b) {
            ci ciVar = this.f8146e;
            Executor executor = this.f8145d;
            bea beaVar = new bea() { // from class: com.google.android.gms.internal.ads.zzfpl
                @Override // g.bea
                public final Object then(ci ciVar2) {
                    return Boolean.valueOf(ciVar2.a());
                }
            };
            chw chwVar = (chw) ciVar;
            chwVar.getClass();
            chw chwVar2 = new chw();
            chwVar.i.f(new err(executor, beaVar, chwVar2, 0));
            chwVar.n();
            return chwVar2;
        }
        Context context = this.f8144c;
        final zzarl zza2 = zzarp.zza();
        zza2.zza(context.getPackageName());
        zza2.zze(j);
        zza2.zzg(f8142a);
        if (exc != null) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            zza2.zzf(stringWriter.toString());
            zza2.zzd(exc.getClass().getName());
        }
        if (str2 != null) {
            zza2.zzb(str2);
        }
        if (str != null) {
            zza2.zzc(str);
        }
        ci ciVar2 = this.f8146e;
        Executor executor2 = this.f8145d;
        bea beaVar2 = new bea() { // from class: com.google.android.gms.internal.ads.zzfpm
            @Override // g.bea
            public final Object then(ci ciVar3) {
                if (!ciVar3.a()) {
                    return Boolean.FALSE;
                }
                int i2 = i;
                zzfrp zza3 = ((zzfrr) ciVar3.c()).zza(((zzarp) zzarl.this.zzbr()).zzaV());
                zza3.zza(i2);
                zza3.zzc();
                return Boolean.TRUE;
            }
        };
        chw chwVar3 = (chw) ciVar2;
        chwVar3.getClass();
        chw chwVar4 = new chw();
        chwVar3.i.f(new err(executor2, beaVar2, chwVar4, 0));
        chwVar3.n();
        return chwVar4;
    }

    public final ci zzb(int i, String str) {
        return f(i, 0L, null, null, str);
    }

    public final ci zzc(int i, long j, Exception exc) {
        return f(i, j, exc, null, null);
    }

    public final ci zzd(int i, long j) {
        return f(i, j, null, null, null);
    }

    public final ci zze(int i, long j, String str) {
        return f(i, j, null, null, str);
    }

    public final ci zzf(int i, long j, String str, Map map) {
        return f(i, j, null, str, null);
    }
}

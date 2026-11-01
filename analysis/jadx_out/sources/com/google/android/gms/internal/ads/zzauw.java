package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import g.dyn;
import j$.util.concurrent.ThreadLocalRandom;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* loaded from: classes3.dex */
public final class zzauw {

    /* renamed from: d, reason: collision with root package name */
    public final zzawf f4509d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Boolean f4510e;

    /* renamed from: c, reason: collision with root package name */
    public static final ConditionVariable f4508c = new ConditionVariable();

    /* renamed from: a, reason: collision with root package name */
    public static volatile zzfrr f4506a = null;

    /* renamed from: b, reason: collision with root package name */
    public static volatile Random f4507b = null;

    public zzauw(zzawf zzawfVar) {
        this.f4509d = zzawfVar;
        zzawfVar.zzk().execute(new dyn(24, this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (f4507b == null) {
                synchronized (zzauw.class) {
                    try {
                        if (f4507b == null) {
                            f4507b = new Random();
                        }
                    } finally {
                    }
                }
            }
            return f4507b.nextInt();
        }
    }

    public final void zzc(int i, int i2, long j, String str, Exception exc) {
        try {
            f4508c.block();
            if (!this.f4510e.booleanValue() || f4506a == null) {
                return;
            }
            zzarl zza = zzarp.zza();
            zza.zza(this.f4509d.h.getPackageName());
            zza.zze(j);
            if (str != null) {
                zza.zzb(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zza.zzf(stringWriter.toString());
                zza.zzd(exc.getClass().getName());
            }
            zzfrp zza2 = f4506a.zza(((zzarp) zza.zzbr()).zzaV());
            zza2.zza(i);
            if (i2 != -1) {
                zza2.zzb(i2);
            }
            zza2.zzc();
        } catch (Exception unused) {
        }
    }
}

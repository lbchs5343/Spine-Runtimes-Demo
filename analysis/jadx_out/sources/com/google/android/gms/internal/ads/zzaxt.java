package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public abstract class zzaxt implements Callable {
    public final zzasf i;
    public Method j;
    public final zzawf k;
    public final int l;
    public final String m;
    public final String n;
    public final int o;

    public zzaxt(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        this.k = zzawfVar;
        this.m = str;
        this.n = str2;
        this.i = zzasfVar;
        this.l = i;
        this.o = i2;
    }

    public abstract void c();

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() throws Exception {
        zzk();
        return null;
    }

    public Void zzk() throws Exception {
        int i;
        zzawf zzawfVar = this.k;
        try {
            long nanoTime = System.nanoTime();
            Method zzj = zzawfVar.zzj(this.m, this.n);
            this.j = zzj;
            if (zzj == null) {
                return null;
            }
            c();
            zzauw zzd = zzawfVar.zzd();
            if (zzd == null || (i = this.l) == Integer.MIN_VALUE) {
                return null;
            }
            zzd.zzc(this.o, i, (System.nanoTime() - nanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }
}

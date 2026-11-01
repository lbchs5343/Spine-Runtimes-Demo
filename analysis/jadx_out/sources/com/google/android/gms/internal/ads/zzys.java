package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzys {

    /* renamed from: b, reason: collision with root package name */
    public int f8957b;

    /* renamed from: c, reason: collision with root package name */
    public int f8958c;

    /* renamed from: d, reason: collision with root package name */
    public int f8959d = 0;

    /* renamed from: a, reason: collision with root package name */
    public zzyl[] f8956a = new zzyl[100];

    public zzys(boolean z, int i) {
    }

    public final synchronized int zza() {
        return this.f8958c * 65536;
    }

    public final synchronized zzyl zzb() {
        zzyl zzylVar;
        try {
            this.f8958c++;
            int i = this.f8959d;
            if (i > 0) {
                zzyl[] zzylVarArr = this.f8956a;
                int i2 = i - 1;
                this.f8959d = i2;
                zzylVar = zzylVarArr[i2];
                if (zzylVar == null) {
                    throw null;
                }
                zzylVarArr[i2] = null;
            } else {
                zzylVar = new zzyl(new byte[65536], 0);
                int i3 = this.f8958c;
                zzyl[] zzylVarArr2 = this.f8956a;
                int length = zzylVarArr2.length;
                if (i3 > length) {
                    this.f8956a = (zzyl[]) Arrays.copyOf(zzylVarArr2, length + length);
                    return zzylVar;
                }
            }
            return zzylVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc(zzyl zzylVar) {
        zzyl[] zzylVarArr = this.f8956a;
        int i = this.f8959d;
        this.f8959d = i + 1;
        zzylVarArr[i] = zzylVar;
        this.f8958c--;
        notifyAll();
    }

    public final synchronized void zzd(zzym zzymVar) {
        while (zzymVar != null) {
            try {
                zzyl[] zzylVarArr = this.f8956a;
                int i = this.f8959d;
                this.f8959d = i + 1;
                zzylVarArr[i] = zzymVar.zzc();
                this.f8958c--;
                zzymVar = zzymVar.zzd();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    public final synchronized void zze() {
        zzf(0);
    }

    public final synchronized void zzf(int i) {
        int i2 = this.f8957b;
        this.f8957b = i;
        if (i < i2) {
            zzg();
        }
    }

    public final synchronized void zzg() {
        int i = this.f8957b;
        int i2 = zzen.zza;
        int max = Math.max(0, ((i + 65535) / 65536) - this.f8958c);
        int i3 = this.f8959d;
        if (max >= i3) {
            return;
        }
        Arrays.fill(this.f8956a, max, i3, (Object) null);
        this.f8959d = max;
    }
}

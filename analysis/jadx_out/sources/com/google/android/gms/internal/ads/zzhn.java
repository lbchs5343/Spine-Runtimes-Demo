package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes3.dex */
public abstract class zzhn extends zzbv {

    /* renamed from: a, reason: collision with root package name */
    public final int f8750a;

    /* renamed from: b, reason: collision with root package name */
    public final zzwj f8751b;

    public zzhn(boolean z, zzwj zzwjVar) {
        this.f8751b = zzwjVar;
        this.f8750a = zzwjVar.zzc();
    }

    public final int c(int i, boolean z) {
        if (z) {
            return this.f8751b.zzd(i);
        }
        if (i >= this.f8750a - 1) {
            return -1;
        }
        return i + 1;
    }

    public abstract int d(int i);

    public abstract int e(int i);

    public abstract int f(Object obj);

    public abstract zzbv g(int i);

    public abstract int h(int i);

    public abstract int i(int i);

    public abstract Object j(int i);

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zza(Object obj) {
        int zza;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int f2 = f(obj2);
            if (f2 != -1 && (zza = g(f2).zza(obj3)) != -1) {
                return d(f2) + zza;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbt zzd(int i, zzbt zzbtVar, boolean z) {
        int h = h(i);
        int e2 = e(h);
        g(h).zzd(i - d(h), zzbtVar, z);
        zzbtVar.zzc += e2;
        if (z) {
            Object j = j(h);
            Object obj = zzbtVar.zzb;
            obj.getClass();
            zzbtVar.zzb = Pair.create(j, obj);
        }
        return zzbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbu zze(int i, zzbu zzbuVar, long j) {
        int i2 = i(i);
        int e2 = e(i2);
        int d2 = d(i2);
        g(i2).zze(i - e2, zzbuVar, j);
        Object j2 = j(i2);
        if (!zzbu.zza.equals(zzbuVar.zzb)) {
            j2 = Pair.create(j2, zzbuVar.zzb);
        }
        zzbuVar.zzb = j2;
        zzbuVar.zzn += d2;
        zzbuVar.zzo += d2;
        return zzbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final Object zzf(int i) {
        int h = h(i);
        return Pair.create(j(h), g(h).zzf(i - d(h)));
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzg(boolean z) {
        if (this.f8750a != 0) {
            int zza = z ? this.f8751b.zza() : 0;
            while (g(zza).zzo()) {
                zza = c(zza, z);
                if (zza == -1) {
                }
            }
            return g(zza).zzg(z) + e(zza);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzh(boolean z) {
        int i = this.f8750a;
        if (i != 0) {
            zzwj zzwjVar = this.f8751b;
            int zzb = z ? zzwjVar.zzb() : i - 1;
            while (g(zzb).zzo()) {
                zzb = z ? zzwjVar.zze(zzb) : zzb <= 0 ? -1 : zzb - 1;
                if (zzb == -1) {
                }
            }
            return g(zzb).zzh(z) + e(zzb);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final int zzj(int i, int i2, boolean z) {
        int i3 = i(i);
        int e2 = e(i3);
        int zzj = g(i3).zzj(i - e2, i2 == 2 ? 0 : i2, z);
        if (zzj != -1) {
            return e2 + zzj;
        }
        int c2 = c(i3, z);
        while (c2 != -1 && g(c2).zzo()) {
            c2 = c(c2, z);
        }
        if (c2 != -1) {
            return g(c2).zzg(z) + e(c2);
        }
        if (i2 == 2) {
            return zzg(z);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[LOOP:0: B:9:0x001c->B:13:0x002b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0019 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003e A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0028 -> B:7:0x0019). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzk(int i, int i2, boolean z) {
        int i3;
        int i4 = i(i);
        int e2 = e(i4);
        int zzk = g(i4).zzk(i - e2, 0, false);
        if (zzk != -1) {
            return e2 + zzk;
        }
        if (i4 > 0) {
            i3 = i4 - 1;
            while (i3 != -1 && g(i3).zzo()) {
                if (i3 <= 0) {
                    i3--;
                }
            }
            if (i3 != -1) {
                return -1;
            }
            return g(i3).zzh(false) + e(i3);
        }
        i3 = -1;
        while (i3 != -1) {
            if (i3 <= 0) {
            }
        }
        if (i3 != -1) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbv
    public final zzbt zzn(Object obj, zzbt zzbtVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int f2 = f(obj2);
        int e2 = e(f2);
        g(f2).zzn(obj3, zzbtVar);
        zzbtVar.zzc += e2;
        zzbtVar.zzb = obj;
        return zzbtVar;
    }
}

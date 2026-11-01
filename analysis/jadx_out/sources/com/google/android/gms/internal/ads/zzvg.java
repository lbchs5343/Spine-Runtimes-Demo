package com.google.android.gms.internal.ads;

import g.dol;
import g.gva;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzvg extends zztz {
    public static final zzaw t;
    public final zzut[] u;
    public final zzbv[] x;
    public zzvf y;
    public final ArrayList z;
    public int w = -1;
    public long[][] v = new long[0][];

    static {
        zzak zzakVar = new zzak();
        zzakVar.zza("MergingMediaSource");
        t = zzakVar.zzc();
    }

    public zzvg(boolean z, boolean z2, zzuc zzucVar, zzut... zzutVarArr) {
        this.u = zzutVarArr;
        this.z = new ArrayList(Arrays.asList(zzutVarArr));
        this.x = new zzbv[zzutVarArr.length];
        new HashMap();
        zzgau.zzb(8).zzb(2).zza();
    }

    @Override // com.google.android.gms.internal.ads.zztz, com.google.android.gms.internal.ads.zztq
    public final void k(zzhd zzhdVar) {
        super.k(zzhdVar);
        int i = 0;
        while (true) {
            zzut[] zzutVarArr = this.u;
            if (i >= zzutVarArr.length) {
                return;
            }
            q(Integer.valueOf(i), zzutVarArr[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ void p(Object obj, zzut zzutVar, zzbv zzbvVar) {
        int i;
        Integer num = (Integer) obj;
        if (this.y != null) {
            return;
        }
        if (this.w == -1) {
            i = zzbvVar.zzb();
            this.w = i;
        } else {
            int zzb = zzbvVar.zzb();
            int i2 = this.w;
            if (zzb != i2) {
                this.y = new zzvf(0);
                return;
            }
            i = i2;
        }
        int length = this.v.length;
        zzbv[] zzbvVarArr = this.x;
        if (length == 0) {
            this.v = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, zzbvVarArr.length);
        }
        ArrayList arrayList = this.z;
        arrayList.remove(zzutVar);
        zzbvVarArr[num.intValue()] = zzbvVar;
        if (arrayList.isEmpty()) {
            h(zzbvVarArr[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ zzur r(Object obj, zzur zzurVar) {
        if (((Integer) obj).intValue() == 0) {
            return zzurVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzG(zzup zzupVar) {
        dol dolVar = (dol) zzupVar;
        int i = 0;
        while (true) {
            zzut[] zzutVarArr = this.u;
            if (i >= zzutVarArr.length) {
                return;
            }
            zzut zzutVar = zzutVarArr[i];
            zzup zzupVar2 = dolVar.f14532f[i];
            if (zzupVar2 instanceof gva) {
                zzupVar2 = ((gva) zzupVar2).f18794b;
            }
            zzutVar.zzG(zzupVar2);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzup zzI(zzur zzurVar, zzys zzysVar, long j) {
        zzut[] zzutVarArr = this.u;
        int length = zzutVarArr.length;
        zzup[] zzupVarArr = new zzup[length];
        zzbv[] zzbvVarArr = this.x;
        int zza = zzbvVarArr[0].zza(zzurVar.zza);
        for (int i = 0; i < length; i++) {
            zzupVarArr[i] = zzutVarArr[i].zzI(zzurVar.zza(zzbvVarArr[i].zzf(zza)), zzysVar, j - this.v[zza][i]);
        }
        return new dol(this.v[zza], zzupVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzaw zzJ() {
        zzut[] zzutVarArr = this.u;
        return zzutVarArr.length > 0 ? zzutVarArr[0].zzJ() : t;
    }

    @Override // com.google.android.gms.internal.ads.zztz, com.google.android.gms.internal.ads.zztq
    public final void zzq() {
        super.zzq();
        Arrays.fill(this.x, (Object) null);
        this.w = -1;
        this.y = null;
        ArrayList arrayList = this.z;
        arrayList.clear();
        Collections.addAll(arrayList, this.u);
    }

    @Override // com.google.android.gms.internal.ads.zztq, com.google.android.gms.internal.ads.zzut
    public final void zzt(zzaw zzawVar) {
        this.u[0].zzt(zzawVar);
    }

    @Override // com.google.android.gms.internal.ads.zztz, com.google.android.gms.internal.ads.zzut
    public final void zzz() throws IOException {
        zzvf zzvfVar = this.y;
        if (zzvfVar != null) {
            throw zzvfVar;
        }
        super.zzz();
    }
}

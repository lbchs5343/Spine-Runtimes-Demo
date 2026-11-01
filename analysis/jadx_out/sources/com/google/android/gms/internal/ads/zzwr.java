package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzwr {
    public static final zzwr zza = new zzwr(new zzbw[0]);

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f8931a;

    /* renamed from: b, reason: collision with root package name */
    public int f8932b;
    public final int zzb;

    static {
        Integer.toString(0, 36);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzwr(zzbw... zzbwVarArr) {
        this.f8931a = zzfzo.zzm(zzbwVarArr);
        this.zzb = zzbwVarArr.length;
        int i = 0;
        while (i < this.f8931a.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f8931a.size(); i3++) {
                if (((zzbw) this.f8931a.get(i)).equals(this.f8931a.get(i3))) {
                    zzdt.zzd("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzwr.class == obj.getClass()) {
            zzwr zzwrVar = (zzwr) obj;
            if (this.zzb == zzwrVar.zzb && this.f8931a.equals(zzwrVar.f8931a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f8932b;
        if (i != 0) {
            return i;
        }
        int hashCode = this.f8931a.hashCode();
        this.f8932b = hashCode;
        return hashCode;
    }

    public final int zza(zzbw zzbwVar) {
        int indexOf = this.f8931a.indexOf(zzbwVar);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzbw zzb(int i) {
        return (zzbw) this.f8931a.get(i);
    }

    public final zzfzo zzc() {
        return zzfzo.zzl(zzgae.zzb(this.f8931a, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzwq
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzwr zzwrVar = zzwr.zza;
                return Integer.valueOf(((zzbw) obj).zzc);
            }
        }));
    }
}

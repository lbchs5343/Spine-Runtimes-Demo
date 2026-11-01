package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes3.dex */
public final class zzcd {
    public static final zzcd zza = new zzcd(zzfzo.zzn());

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f5201a;

    static {
        Integer.toString(0, 36);
    }

    public zzcd(List list) {
        this.f5201a = zzfzo.zzl(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzcd.class != obj.getClass()) {
            return false;
        }
        return this.f5201a.equals(((zzcd) obj).f5201a);
    }

    public final int hashCode() {
        return this.f5201a.hashCode();
    }

    public final zzfzo zza() {
        return this.f5201a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzb(int i) {
        int i2 = 0;
        while (true) {
            zzfzo zzfzoVar = this.f5201a;
            if (i2 >= zzfzoVar.size()) {
                return false;
            }
            zzcc zzccVar = (zzcc) zzfzoVar.get(i2);
            if (zzccVar.zzc() && zzccVar.zza() == i) {
                return true;
            }
            i2++;
        }
    }
}

package com.google.android.gms.internal.ads;

import g.tn;

/* loaded from: classes3.dex */
public final class zzadr {
    public static final zzadr zza = new zzadr(0, 0);
    public final long zzb;
    public final long zzc;

    public zzadr(long j, long j2) {
        this.zzb = j;
        this.zzc = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadr.class == obj.getClass()) {
            zzadr zzadrVar = (zzadr) obj;
            if (this.zzb == zzadrVar.zzb && this.zzc == zzadrVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.zzb);
        sb.append(", position=");
        return tn.f(this.zzc, "]", sb);
    }
}

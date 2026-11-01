package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public class zzgzt {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzhai f8690a;

    /* renamed from: b, reason: collision with root package name */
    public volatile zzgxp f8691b;

    public final void c(zzhai zzhaiVar) {
        if (this.f8690a != null) {
            return;
        }
        synchronized (this) {
            if (this.f8690a != null) {
                return;
            }
            try {
                this.f8690a = zzhaiVar;
                this.f8691b = zzgxp.zzb;
            } catch (zzgzm unused) {
                this.f8690a = zzhaiVar;
                this.f8691b = zzgxp.zzb;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgzt)) {
            return false;
        }
        zzgzt zzgztVar = (zzgzt) obj;
        zzhai zzhaiVar = this.f8690a;
        zzhai zzhaiVar2 = zzgztVar.f8690a;
        if (zzhaiVar == null && zzhaiVar2 == null) {
            return zzb().equals(zzgztVar.zzb());
        }
        if (zzhaiVar != null && zzhaiVar2 != null) {
            return zzhaiVar.equals(zzhaiVar2);
        }
        if (zzhaiVar != null) {
            zzgztVar.c(zzhaiVar.zzbt());
            return zzhaiVar.equals(zzgztVar.f8690a);
        }
        c(zzhaiVar2.zzbt());
        return this.f8690a.equals(zzhaiVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.f8691b != null) {
            return ((ah) this.f8691b).zza.length;
        }
        if (this.f8690a != null) {
            return this.f8690a.zzaY();
        }
        return 0;
    }

    public final zzgxp zzb() {
        if (this.f8691b != null) {
            return this.f8691b;
        }
        synchronized (this) {
            try {
                if (this.f8691b != null) {
                    return this.f8691b;
                }
                if (this.f8690a == null) {
                    this.f8691b = zzgxp.zzb;
                } else {
                    this.f8691b = this.f8690a.zzaN();
                }
                return this.f8691b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzhai zzc(zzhai zzhaiVar) {
        zzhai zzhaiVar2 = this.f8690a;
        this.f8691b = null;
        this.f8690a = zzhaiVar;
        return zzhaiVar2;
    }
}

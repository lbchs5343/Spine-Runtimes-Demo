package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import g.ckd;
import g.egh;
import g.exk;
import g.rj;

/* loaded from: classes3.dex */
public final class Scope extends exk implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new rj(13);
    final int zza;
    private final String zzb;

    public Scope(int i, String str) {
        ckd.j(str, "scopeUri must not be null or empty");
        this.zza = i;
        this.zzb = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.zzb.equals(((Scope) obj).zzb);
        }
        return false;
    }

    public String getScopeUri() {
        return this.zzb;
    }

    public int hashCode() {
        return this.zzb.hashCode();
    }

    public String toString() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 2, getScopeUri());
        egh.s(parcel, af);
    }
}

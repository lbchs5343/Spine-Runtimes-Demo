package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.axk;
import g.egh;
import g.exk;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzbru extends exk {
    public static final Parcelable.Creator<zzbru> CREATOR = new zzbrv();
    public final int zza;
    public final int zzb;
    public final int zzc;

    public zzbru(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzbru zza(axk axkVar) {
        return new zzbru(axkVar.f11024a, axkVar.f11025b, axkVar.f11026c);
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbru)) {
            zzbru zzbruVar = (zzbru) obj;
            if (zzbruVar.zzc == this.zzc && zzbruVar.zzb == this.zzb && zzbruVar.zza == this.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.zza, this.zzb, this.zzc});
    }

    public final String toString() {
        return this.zza + "." + this.zzb + "." + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i4);
        egh.s(parcel, af);
    }
}

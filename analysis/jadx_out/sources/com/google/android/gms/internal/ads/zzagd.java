package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzagd extends zzagl {
    public static final Parcelable.Creator<zzagd> CREATOR = new rj(22);
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzagl[] zze;

    public zzagd(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readByte() != 0;
        this.zzc = parcel.readByte() != 0;
        this.zzd = parcel.createStringArray();
        int readInt = parcel.readInt();
        this.zze = new zzagl[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zze[i2] = (zzagl) parcel.readParcelable(zzagl.class.getClassLoader());
        }
    }

    public zzagd(String str, boolean z, boolean z2, String[] strArr, zzagl[] zzaglVarArr) {
        super("CTOC");
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = strArr;
        this.zze = zzaglVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagd.class == obj.getClass()) {
            zzagd zzagdVar = (zzagd) obj;
            if (this.zzb == zzagdVar.zzb && this.zzc == zzagdVar.zzc && Objects.equals(this.zza, zzagdVar.zza) && Arrays.equals(this.zzd, zzagdVar.zzd) && Arrays.equals(this.zze, zzagdVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        return (((((this.zzb ? 1 : 0) + 527) * 31) + (this.zzc ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByte(this.zzb ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.zzc ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.zzd);
        parcel.writeInt(this.zze.length);
        for (zzagl zzaglVar : this.zze) {
            parcel.writeParcelable(zzaglVar, 0);
        }
    }
}

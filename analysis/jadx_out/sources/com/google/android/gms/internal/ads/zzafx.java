package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzafx extends zzagl {
    public static final Parcelable.Creator<zzafx> CREATOR = new rj(19);
    public final String zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzafx(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = parcel.createByteArray();
    }

    public zzafx(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafx.class == obj.getClass()) {
            zzafx zzafxVar = (zzafx) obj;
            if (this.zzc == zzafxVar.zzc && Objects.equals(this.zza, zzafxVar.zza) && Objects.equals(this.zzb, zzafxVar.zzb) && Arrays.equals(this.zzd, zzafxVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = str != null ? str.hashCode() : 0;
        int i = this.zzc;
        String str2 = this.zzb;
        return Arrays.hashCode(this.zzd) + ((((((i + 527) * 31) + hashCode) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzagl
    public final String toString() {
        return this.zzf + ": mimeType=" + this.zza + ", description=" + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzagl, com.google.android.gms.internal.ads.zzbc
    public final void zza(zzay zzayVar) {
        zzayVar.zza(this.zzd, this.zzc);
    }
}

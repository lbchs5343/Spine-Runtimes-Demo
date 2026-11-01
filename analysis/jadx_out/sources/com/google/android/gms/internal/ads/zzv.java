package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.cqu;
import g.tn;
import j$.util.Objects;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzv implements Parcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new cqu(14);
    public final UUID zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;
    private int zze;

    public zzv(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zzc = readString;
        this.zzd = parcel.createByteArray();
    }

    public zzv(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.zza = uuid;
        this.zzb = null;
        this.zzc = zzbg.zze(str2);
        this.zzd = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzv)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzv zzvVar = (zzv) obj;
        return Objects.equals(this.zzb, zzvVar.zzb) && Objects.equals(this.zzc, zzvVar.zzc) && Objects.equals(this.zza, zzvVar.zza) && Arrays.equals(this.zzd, zzvVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        if (i != 0) {
            return i;
        }
        int hashCode = this.zza.hashCode() * 31;
        String str = this.zzb;
        int hashCode2 = Arrays.hashCode(this.zzd) + tn.k((hashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.zzc);
        this.zze = hashCode2;
        return hashCode2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza.getMostSignificantBits());
        parcel.writeLong(this.zza.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }
}

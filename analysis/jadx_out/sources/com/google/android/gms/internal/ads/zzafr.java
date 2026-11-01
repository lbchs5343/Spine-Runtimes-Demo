package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzafr implements zzbc {
    public static final Parcelable.Creator<zzafr> CREATOR = new rj(16);
    public final int zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final byte[] zzh;

    public zzafr(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = bArr;
    }

    public zzafr(Parcel parcel) {
        this.zza = parcel.readInt();
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zzb = readString;
        this.zzc = parcel.readString();
        this.zzd = parcel.readInt();
        this.zze = parcel.readInt();
        this.zzf = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzh = parcel.createByteArray();
    }

    public static zzafr zzb(zzed zzedVar) {
        int zzg = zzedVar.zzg();
        String zze = zzbg.zze(zzedVar.zzB(zzedVar.zzg(), StandardCharsets.US_ASCII));
        String zzB = zzedVar.zzB(zzedVar.zzg(), StandardCharsets.UTF_8);
        int zzg2 = zzedVar.zzg();
        int zzg3 = zzedVar.zzg();
        int zzg4 = zzedVar.zzg();
        int zzg5 = zzedVar.zzg();
        int zzg6 = zzedVar.zzg();
        byte[] bArr = new byte[zzg6];
        zzedVar.zzH(bArr, 0, zzg6);
        return new zzafr(zzg, zze, zzB, zzg2, zzg3, zzg4, zzg5, bArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafr.class == obj.getClass()) {
            zzafr zzafrVar = (zzafr) obj;
            if (this.zza == zzafrVar.zza && this.zzb.equals(zzafrVar.zzb) && this.zzc.equals(zzafrVar.zzc) && this.zzd == zzafrVar.zzd && this.zze == zzafrVar.zze && this.zzf == zzafrVar.zzf && this.zzg == zzafrVar.zzg && Arrays.equals(this.zzh, zzafrVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza + 527;
        int hashCode = this.zzb.hashCode() + (i * 31);
        int hashCode2 = this.zzc.hashCode() + (hashCode * 31);
        byte[] bArr = this.zzh;
        return Arrays.hashCode(bArr) + (((((((((hashCode2 * 31) + this.zzd) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.zzb + ", description=" + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeInt(this.zzd);
        parcel.writeInt(this.zze);
        parcel.writeInt(this.zzf);
        parcel.writeInt(this.zzg);
        parcel.writeByteArray(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzbc
    public final void zza(zzay zzayVar) {
        zzayVar.zza(this.zzh, this.zza);
    }
}

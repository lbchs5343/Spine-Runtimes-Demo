package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.fbe;
import g.tn;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbd implements Parcelable {
    public static final Parcelable.Creator<zzbd> CREATOR = new fbe(14);
    public final long zza;
    private final zzbc[] zzb;

    public zzbd(long j, zzbc... zzbcVarArr) {
        this.zza = j;
        this.zzb = zzbcVarArr;
    }

    public zzbd(Parcel parcel) {
        this.zzb = new zzbc[parcel.readInt()];
        int i = 0;
        while (true) {
            zzbc[] zzbcVarArr = this.zzb;
            if (i >= zzbcVarArr.length) {
                this.zza = parcel.readLong();
                return;
            } else {
                zzbcVarArr[i] = (zzbc) parcel.readParcelable(zzbc.class.getClassLoader());
                i++;
            }
        }
    }

    public zzbd(List list) {
        this(-9223372036854775807L, (zzbc[]) list.toArray(new zzbc[0]));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbd.class == obj.getClass()) {
            zzbd zzbdVar = (zzbd) obj;
            if (Arrays.equals(this.zzb, zzbdVar.zzb) && this.zza == zzbdVar.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.zzb) * 31;
        long j = this.zza;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        String str;
        long j = this.zza;
        String arrays = Arrays.toString(this.zzb);
        if (j == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        return tn.ad("entries=", arrays, str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzb.length);
        for (zzbc zzbcVar : this.zzb) {
            parcel.writeParcelable(zzbcVar, 0);
        }
        parcel.writeLong(this.zza);
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final zzbc zzb(int i) {
        return this.zzb[i];
    }

    public final zzbd zzc(zzbc... zzbcVarArr) {
        int length = zzbcVarArr.length;
        if (length == 0) {
            return this;
        }
        long j = this.zza;
        zzbc[] zzbcVarArr2 = this.zzb;
        int i = zzen.zza;
        int length2 = zzbcVarArr2.length;
        Object[] copyOf = Arrays.copyOf(zzbcVarArr2, length2 + length);
        System.arraycopy(zzbcVarArr, 0, copyOf, length2, length);
        return new zzbd(j, (zzbc[]) copyOf);
    }

    public final zzbd zzd(zzbd zzbdVar) {
        return zzbdVar == null ? this : zzc(zzbdVar.zzb);
    }
}

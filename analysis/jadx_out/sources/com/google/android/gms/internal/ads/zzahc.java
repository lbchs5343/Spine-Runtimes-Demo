package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.awf;
import g.fbe;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzahc implements Parcelable {
    public static final Parcelable.Creator<zzahc> CREATOR = new fbe(2);
    public final long zza;
    public final long zzb;
    public final int zzc;

    public zzahc(long j, long j2, int i) {
        zzdb.zzd(j < j2);
        this.zza = j;
        this.zzb = j2;
        this.zzc = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahc.class == obj.getClass()) {
            zzahc zzahcVar = (zzahc) obj;
            if (this.zza == zzahcVar.zza && this.zzb == zzahcVar.zzb && this.zzc == zzahcVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zza), Long.valueOf(this.zzb), Integer.valueOf(this.zzc)});
    }

    public final String toString() {
        long j = this.zza;
        long j2 = this.zzb;
        int i = this.zzc;
        Locale locale = Locale.US;
        StringBuilder l = awf.l(j, "Segment: startTimeMs=", ", endTimeMs=");
        l.append(j2);
        l.append(", speedDivisor=");
        l.append(i);
        return l.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza);
        parcel.writeLong(this.zzb);
        parcel.writeInt(this.zzc);
    }
}

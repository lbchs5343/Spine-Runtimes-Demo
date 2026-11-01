package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.fbe;

/* loaded from: classes3.dex */
public final class zzahg implements zzbc {
    public static final Parcelable.Creator<zzahg> CREATOR = new fbe(3);
    public final float zza;
    public final int zzb;

    public zzahg(float f2, int i) {
        this.zza = f2;
        this.zzb = i;
    }

    public /* synthetic */ zzahg(Parcel parcel, zzahf zzahfVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahg.class == obj.getClass()) {
            zzahg zzahgVar = (zzahg) obj;
            if (this.zza == zzahgVar.zza && this.zzb == zzahgVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + 527) * 31) + this.zzb;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.zza + ", svcTemporalLayerCount=" + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeInt(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbc
    public final /* synthetic */ void zza(zzay zzayVar) {
    }
}

package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzfqz extends exk {
    public static final Parcelable.Creator<zzfqz> CREATOR = new zzfra();
    public final int zza;
    private zzata zzb = null;
    private byte[] zzc;

    public zzfqz(int i, byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzata zzataVar = this.zzb;
        if (zzataVar != null || this.zzc == null) {
            if (zzataVar == null || this.zzc != null) {
                if (zzataVar != null && this.zzc != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (zzataVar != null || this.zzc != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        byte[] bArr = this.zzc;
        if (bArr == null) {
            bArr = this.zzb.zzaV();
        }
        egh.be(parcel, 2, bArr);
        egh.s(parcel, af);
    }

    public final zzata zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzata.zzd(this.zzc, zzgyh.zza());
                this.zzc = null;
            } catch (zzgzm | NullPointerException e2) {
                throw new IllegalStateException(e2);
            }
        }
        zzb();
        return this.zzb;
    }
}

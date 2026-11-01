package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzafz extends zzagl {
    public static final Parcelable.Creator<zzafz> CREATOR = new rj(20);
    public final byte[] zza;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzafz(Parcel parcel) {
        super(r0);
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = parcel.createByteArray();
    }

    public zzafz(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafz.class == obj.getClass()) {
            zzafz zzafzVar = (zzafz) obj;
            if (this.zzf.equals(zzafzVar.zzf) && Arrays.equals(this.zza, zzafzVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzf.hashCode() + 527;
        return Arrays.hashCode(this.zza) + (hashCode * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeByteArray(this.zza);
    }
}

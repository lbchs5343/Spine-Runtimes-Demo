package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzagb extends zzagl {
    public static final Parcelable.Creator<zzagb> CREATOR = new rj(21);
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzagl[] zzg;

    public zzagb(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzg = new zzagl[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zzg[i2] = (zzagl) parcel.readParcelable(zzagl.class.getClassLoader());
        }
    }

    public zzagb(String str, int i, int i2, long j, long j2, zzagl[] zzaglVarArr) {
        super("CHAP");
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = j2;
        this.zzg = zzaglVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzagl, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagb.class == obj.getClass()) {
            zzagb zzagbVar = (zzagb) obj;
            if (this.zzb == zzagbVar.zzb && this.zzc == zzagbVar.zzc && this.zzd == zzagbVar.zzd && this.zze == zzagbVar.zze && Objects.equals(this.zza, zzagbVar.zza) && Arrays.equals(this.zzg, zzagbVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        return ((((((((this.zzb + 527) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + ((int) this.zze)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeLong(this.zze);
        parcel.writeInt(this.zzg.length);
        for (zzagl zzaglVar : this.zzg) {
            parcel.writeParcelable(zzaglVar, 0);
        }
    }
}

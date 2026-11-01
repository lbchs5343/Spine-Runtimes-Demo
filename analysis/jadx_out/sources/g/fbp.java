package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class fbp extends exk {
    public static final Parcelable.Creator<fbp> CREATOR = new cqu(4);
    public final boolean zza;
    public final boolean zzb;
    public final String zzc;
    public final boolean zzd;
    public final float zze;
    public final int zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;

    public fbp(boolean z, boolean z2, String str, boolean z3, float f2, int i, boolean z4, boolean z5, boolean z6) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = f2;
        this.zzf = i;
        this.zzg = z4;
        this.zzh = z5;
        this.zzi = z6;
    }

    public fbp(boolean z, boolean z2, boolean z3, float f2, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f2, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzb;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.p(parcel, 4, this.zzc);
        boolean z3 = this.zzd;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z3 ? 1 : 0);
        float f2 = this.zze;
        egh.aq(parcel, 6, 4);
        parcel.writeFloat(f2);
        int i2 = this.zzf;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(i2);
        boolean z4 = this.zzg;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.zzh;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.zzi;
        egh.aq(parcel, 10, 4);
        parcel.writeInt(z6 ? 1 : 0);
        egh.s(parcel, af);
    }
}

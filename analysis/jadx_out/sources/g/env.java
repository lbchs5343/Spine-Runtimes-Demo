package g;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class env extends exk {
    public static final Parcelable.Creator<env> CREATOR = new cqu(7);
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final Context zzd;
    private final boolean zze;
    private final boolean zzf;

    public env(String str, boolean z, boolean z2, IBinder iBinder, boolean z3, boolean z4) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = (Context) bpp.b(bpp.d(iBinder));
        this.zze = z3;
        this.zzf = z4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        boolean z = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.az(parcel, 4, new bpp(this.zzd));
        boolean z3 = this.zze;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.zzf;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(z4 ? 1 : 0);
        egh.s(parcel, af);
    }
}

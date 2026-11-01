package g;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhp;

/* loaded from: classes3.dex */
public final class gfp extends exk {
    public static final Parcelable.Creator<gfp> CREATOR = new cqu(0);
    private final boolean zza;
    private final fbj zzb;
    private final IBinder zzc;

    public gfp(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.zza = z;
        this.zzb = iBinder != null ? hct.zzd(iBinder) : null;
        this.zzc = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        boolean z = this.zza;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(z ? 1 : 0);
        fbj fbjVar = this.zzb;
        egh.az(parcel, 2, fbjVar == null ? null : fbjVar.asBinder());
        egh.az(parcel, 3, this.zzc);
        egh.s(parcel, af);
    }

    public final fbj zza() {
        return this.zzb;
    }

    public final zzbhp zzb() {
        IBinder iBinder = this.zzc;
        if (iBinder == null) {
            return null;
        }
        return zzbho.zzb(iBinder);
    }

    public final boolean zzc() {
        return this.zza;
    }
}

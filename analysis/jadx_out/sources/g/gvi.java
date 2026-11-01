package g;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfxf;

/* loaded from: classes3.dex */
public final class gvi extends exk {
    public static final Parcelable.Creator<gvi> CREATOR = new fbe(13);
    public final String zza;
    public final int zzb;

    public gvi(String str, int i) {
        this.zza = str == null ? "" : str;
        this.zzb = i;
    }

    public static gvi zzb(Throwable th) {
        abz zza = zzfgq.zza(th);
        return new gvi(zzfxf.zzd(th.getMessage()) ? zza.zzb : th.getMessage(), zza.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        int i2 = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i2);
        egh.s(parcel, af);
    }

    public final gya zza() {
        return new gya(this.zza, this.zzb);
    }
}

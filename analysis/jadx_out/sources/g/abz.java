package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class abz extends exk {
    public static final Parcelable.Creator<abz> CREATOR = new fbe(24);
    public final int zza;
    public final String zzb;
    public final String zzc;
    public abz zzd;
    public IBinder zze;

    public abz(int i, String str, String str2, abz abzVar, IBinder iBinder) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = abzVar;
        this.zze = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.p(parcel, 2, this.zzb);
        egh.p(parcel, 3, this.zzc);
        egh.u(parcel, 4, this.zzd, i);
        egh.az(parcel, 5, this.zze);
        egh.s(parcel, af);
    }

    public final ezz zza() {
        abz abzVar = this.zzd;
        ezz ezzVar = null;
        if (abzVar != null) {
            String str = abzVar.zzc;
            ezzVar = new ezz(abzVar.zza, abzVar.zzb, str, null);
        }
        return new ezz(this.zza, this.zzb, this.zzc, ezzVar);
    }

    public final bfi zzb() {
        ezz ezzVar;
        gcq pyVar;
        abz abzVar = this.zzd;
        if (abzVar == null) {
            ezzVar = null;
        } else {
            ezzVar = new ezz(abzVar.zza, abzVar.zzb, abzVar.zzc, null);
        }
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        IBinder iBinder = this.zze;
        if (iBinder == null) {
            pyVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            pyVar = queryLocalInterface instanceof gcq ? (gcq) queryLocalInterface : new py(iBinder);
        }
        return new bfi(i, str, str2, ezzVar, pyVar != null ? new bof(pyVar) : null);
    }
}

package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes3.dex */
public final class aja extends exk {
    public static final Parcelable.Creator<aja> CREATOR = new cqu(11);
    private final String zza;
    private final cxm zzb;
    private final boolean zzc;
    private final boolean zzd;

    public aja(String str, IBinder iBinder, boolean z, boolean z2) {
        this.zza = str;
        dig digVar = null;
        if (iBinder != null) {
            try {
                int i = cxm.f13694f;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                bjq zzd = (queryLocalInterface instanceof ddw ? (ddw) queryLocalInterface : new dlw(iBinder, "com.google.android.gms.common.internal.ICertData", 1)).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) bpp.b(zzd);
                if (bArr != null) {
                    digVar = new dig(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e2) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e2);
            }
        }
        this.zzb = digVar;
        this.zzc = z;
        this.zzd = z2;
    }

    public aja(String str, cxm cxmVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = cxmVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 1, str);
        cxm cxmVar = this.zzb;
        if (cxmVar == null) {
            cxmVar = null;
        }
        egh.az(parcel, 2, cxmVar);
        boolean z = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzd;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.s(parcel, af);
    }
}

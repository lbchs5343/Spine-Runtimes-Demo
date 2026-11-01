package g;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbhp;

/* loaded from: classes3.dex */
public final class dgw extends exk {
    public static final Parcelable.Creator<dgw> CREATOR = new fbe(16);
    private final boolean zza;
    private final IBinder zzb;

    public /* synthetic */ dgw(cre creVar, hag hagVar) {
        throw null;
    }

    public dgw(boolean z, IBinder iBinder) {
        this.zza = z;
        this.zzb = iBinder;
    }

    public boolean getManualImpressionsEnabled() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        boolean manualImpressionsEnabled = getManualImpressionsEnabled();
        egh.aq(parcel, 1, 4);
        parcel.writeInt(manualImpressionsEnabled ? 1 : 0);
        egh.az(parcel, 2, this.zzb);
        egh.s(parcel, af);
    }

    public final zzbhp zza() {
        IBinder iBinder = this.zzb;
        if (iBinder == null) {
            return null;
        }
        return zzbho.zzb(iBinder);
    }
}

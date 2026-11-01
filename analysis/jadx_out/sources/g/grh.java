package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public abstract class grh extends zzayd implements gpa {
    public grh() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zzc();
        } else {
            if (i != 2) {
                return false;
            }
            abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
            zzaye.zzc(parcel);
            zzb(abzVar);
        }
        parcel2.writeNoException();
        return true;
    }
}

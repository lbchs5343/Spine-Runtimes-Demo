package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public abstract class hei extends zzayd implements dri {
    public hei() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
        zzaye.zzc(parcel);
        b(abzVar);
        parcel2.writeNoException();
        return true;
    }
}

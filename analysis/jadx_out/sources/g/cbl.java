package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class cbl extends zzayd implements aik {
    @Override // g.aik
    public final void a(ghd ghdVar) {
        bza.m(ghdVar).ifPresent(new xw(this, 0));
    }

    @Override // g.aik
    public final void b(ghd ghdVar) {
        bza.m(ghdVar).ifPresent(new xw(this, 1));
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            ghd ghdVar = (ghd) zzaye.zza(parcel, ghd.CREATOR);
            zzaye.zzc(parcel);
            a(ghdVar);
        } else {
            if (i != 2) {
                return false;
            }
            ghd ghdVar2 = (ghd) zzaye.zza(parcel, ghd.CREATOR);
            zzaye.zzc(parcel);
            b(ghdVar2);
        }
        parcel2.writeNoException();
        return true;
    }
}

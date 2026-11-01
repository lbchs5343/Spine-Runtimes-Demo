package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;

/* loaded from: classes3.dex */
public final class dyi extends zzayd implements gag {

    /* renamed from: a, reason: collision with root package name */
    public final dhb f15090a;

    public dyi(dhb dhbVar) {
        super("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
        this.f15090a = dhbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zze();
        parcel2.writeNoException();
        return true;
    }

    @Override // g.gag
    public final void zze() {
        dhb dhbVar = this.f15090a;
        if (dhbVar != null) {
            dhbVar.onAdMetadataChanged();
        }
    }
}

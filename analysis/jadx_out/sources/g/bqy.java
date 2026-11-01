package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;

/* loaded from: classes3.dex */
public final class bqy extends zzayd implements dyo {

    /* renamed from: a, reason: collision with root package name */
    public final evo f12053a;

    public bqy(evo evoVar) {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
        this.f12053a = evoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zzb();
        parcel2.writeNoException();
        return true;
    }

    @Override // g.dyo
    public final void zzb() {
        this.f12053a.onAdClicked();
    }
}

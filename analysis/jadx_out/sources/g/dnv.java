package g;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class dnv extends zzayd implements bzx {

    /* renamed from: a, reason: collision with root package name */
    public final fas f14498a;

    public dnv(fas fasVar) {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
        this.f14498a = fasVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            abz abzVar = (abz) zzaye.zza(parcel, abz.CREATOR);
            zzaye.zzc(parcel);
            zzd(abzVar);
        } else if (i == 2) {
            zzf();
        } else if (i == 3) {
            zzc();
        } else if (i != 4 && i != 5) {
            return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // g.bzx
    public final void zzb() {
    }

    @Override // g.bzx
    public final void zzc() {
        fas fasVar = this.f14498a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdClosed(frtVar.f17308a);
        }
    }

    @Override // g.bzx
    public final void zzd(abz abzVar) {
        if (this.f14498a != null) {
            abzVar.zza();
        }
    }

    @Override // g.bzx
    public final void zze() {
    }

    @Override // g.bzx
    public final void zzf() {
        fas fasVar = this.f14498a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdOpened(frtVar.f17308a);
        }
    }
}

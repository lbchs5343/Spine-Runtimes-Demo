package g;

import com.google.android.gms.internal.ads.zzgcy;

/* loaded from: classes3.dex */
public final class an implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final zzgcy f10504a;

    /* renamed from: b, reason: collision with root package name */
    public final dcy f10505b;

    public an(zzgcy zzgcyVar, dcy dcyVar) {
        this.f10504a = zzgcyVar;
        this.f10505b = dcyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10504a.w != this) {
            return;
        }
        dcy dcyVar = this.f10505b;
        if (zzgcy.u.bz(this.f10504a, this, zzgcy.z(dcyVar))) {
            zzgcy.y(this.f10504a, false);
        }
    }
}

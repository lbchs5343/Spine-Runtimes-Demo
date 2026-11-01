package g;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;

/* loaded from: classes3.dex */
public final class gpc extends zzayc implements ejp {
    public gpc(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAdListener", iBinder);
    }

    @Override // g.ejp
    public final void zzc() {
        s(r(), 6);
    }

    @Override // g.ejp
    public final void zzd() {
        s(r(), 1);
    }

    @Override // g.ejp
    public final void zze(int i) {
        Parcel r = r();
        r.writeInt(i);
        s(r, 2);
    }

    @Override // g.ejp
    public final void zzf(abz abzVar) {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 8);
    }

    @Override // g.ejp
    public final void zzg() {
        s(r(), 7);
    }

    @Override // g.ejp
    public final void zzh() {
        s(r(), 3);
    }

    @Override // g.ejp
    public final void zzi() {
        s(r(), 4);
    }

    @Override // g.ejp
    public final void zzj() {
        s(r(), 5);
    }

    @Override // g.ejp
    public final void zzk() {
        s(r(), 9);
    }
}

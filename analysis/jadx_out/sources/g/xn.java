package g;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class xn implements bnq {

    /* renamed from: a, reason: collision with root package name */
    public final String f20296a;

    /* renamed from: b, reason: collision with root package name */
    public final gga f20297b;

    public xn(gga ggaVar) {
        String str;
        this.f20297b = ggaVar;
        try {
            str = ggaVar.zze();
        } catch (RemoteException e2) {
            agd.f("", e2);
            str = null;
        }
        this.f20296a = str;
    }

    public final String toString() {
        return this.f20296a;
    }
}

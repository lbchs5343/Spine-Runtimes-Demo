package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class qv extends haf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ adw f19881a;

    /* renamed from: d, reason: collision with root package name */
    public final IBinder f19882d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qv(adw adwVar, int i, IBinder iBinder, Bundle bundle) {
        super(adwVar, i, bundle);
        this.f19881a = adwVar;
        this.f19882d = iBinder;
    }

    @Override // g.haf
    public final void b(nk nkVar) {
        adw adwVar = this.f19881a;
        lb lbVar = adwVar.k;
        if (lbVar != null) {
            lbVar.onConnectionFailed(nkVar);
        }
        adwVar.ak(nkVar);
    }

    @Override // g.haf
    public final boolean c() {
        IInterface c2;
        IBinder iBinder = this.f19882d;
        try {
            ckd.k(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            adw adwVar = this.f19881a;
            if (!adwVar.a().equals(interfaceDescriptor) || (c2 = adwVar.c(iBinder)) == null) {
                return false;
            }
            if (!adw.aj(adwVar, 2, 4, c2) && !adw.aj(adwVar, 3, 4, c2)) {
                return false;
            }
            adwVar.x = null;
            Bundle connectionHint = adwVar.getConnectionHint();
            bjb bjbVar = adwVar.r;
            if (bjbVar == null) {
                return true;
            }
            bjbVar.onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }
}

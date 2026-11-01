package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class ckl implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f13032a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ adw f13033b;

    public ckl(adw adwVar, int i) {
        this.f13033b = adwVar;
        this.f13032a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        adw adwVar = this.f13033b;
        if (iBinder == null) {
            adw.ai(adwVar);
            return;
        }
        synchronized (adwVar.ac) {
            try {
                adw adwVar2 = this.f13033b;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                adwVar2.l = (queryLocalInterface == null || !(queryLocalInterface instanceof ctd)) ? new ctd(iBinder) : (ctd) queryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        adw adwVar3 = this.f13033b;
        int i = this.f13032a;
        pt ptVar = new pt(adwVar3, 0);
        bmp bmpVar = adwVar3.p;
        bmpVar.sendMessage(bmpVar.obtainMessage(7, i, -1, ptVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        adw adwVar;
        synchronized (this.f13033b.ac) {
            adwVar = this.f13033b;
            adwVar.l = null;
        }
        int i = this.f13032a;
        bmp bmpVar = adwVar.p;
        bmpVar.sendMessage(bmpVar.obtainMessage(6, i, 1));
    }
}

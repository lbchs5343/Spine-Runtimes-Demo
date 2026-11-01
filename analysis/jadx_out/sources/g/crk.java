package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import g.crk;
import g.fwu;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class crk implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fwu f13389a;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        fwu fwuVar = this.f13389a;
        fwuVar.i.zzc("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        fwuVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvq
            @Override // java.lang.Runnable
            public final void run() {
                zzftu zzftuVar;
                zzftu zzb = zzftt.zzb(iBinder);
                crk crkVar = crk.this;
                fwu fwuVar2 = crkVar.f13389a;
                fwuVar2.h = zzb;
                fwuVar2.i.zzc("linkToDeath", new Object[0]);
                try {
                    zzftuVar = crkVar.f13389a.h;
                } catch (RemoteException e2) {
                    crkVar.f13389a.i.zzb(e2, "linkToDeath failed", new Object[0]);
                }
                if (zzftuVar == null) {
                    throw null;
                }
                zzftuVar.asBinder().linkToDeath(crkVar.f13389a.f17542a, 0);
                fwu fwuVar3 = crkVar.f13389a;
                fwuVar3.f17546e = false;
                synchronized (fwuVar3.f17544c) {
                    try {
                        Iterator it = crkVar.f13389a.f17544c.iterator();
                        while (it.hasNext()) {
                            ((Runnable) it.next()).run();
                        }
                        crkVar.f13389a.f17544c.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        fwu fwuVar = this.f13389a;
        fwuVar.i.zzc("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        fwuVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvr
            @Override // java.lang.Runnable
            public final void run() {
                crk crkVar = crk.this;
                crkVar.f13389a.i.zzc("unlinkToDeath", new Object[0]);
                fwu fwuVar2 = crkVar.f13389a;
                zzftu zzftuVar = fwuVar2.h;
                zzftuVar.getClass();
                zzftuVar.asBinder().unlinkToDeath(fwuVar2.f17542a, 0);
                fwuVar2.h = null;
                fwuVar2.f17546e = false;
            }
        });
    }
}

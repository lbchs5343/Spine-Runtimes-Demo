package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class gyy implements ServiceConnection, bjb, lb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dbb f19034a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f19035b;

    /* renamed from: c, reason: collision with root package name */
    public volatile cfu f19036c;

    public gyy(dbb dbbVar) {
        this.f19034a = dbbVar;
    }

    public final void d() {
        this.f19034a._e();
        Context context = ((cyg) this.f19034a.z).v;
        synchronized (this) {
            try {
                try {
                    if (this.f19035b) {
                        bgm bgmVar = ((cyg) this.f19034a.z).z;
                        cyg.ak(bgmVar);
                        bgmVar.f11519c.h("Connection attempt already in progress");
                    } else {
                        if (this.f19036c != null && (this.f19036c.isConnecting() || this.f19036c.isConnected())) {
                            bgm bgmVar2 = ((cyg) this.f19034a.z).z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11519c.h("Already awaiting connection attempt");
                            return;
                        }
                        this.f19036c = new cfu(context, Looper.getMainLooper(), this, this, 93);
                        bgm bgmVar3 = ((cyg) this.f19034a.z).z;
                        cyg.ak(bgmVar3);
                        bgmVar3.f11519c.h("Connecting to remote service");
                        this.f19035b = true;
                        ckd.k(this.f19036c);
                        this.f19036c.checkAvailabilityAndConnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    @Override // g.bjb
    public final void onConnected(Bundle bundle) {
        ckd.aj("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                ckd.k(this.f19036c);
                ake akeVar = (ake) this.f19036c.getService();
                fth fthVar = ((cyg) this.f19034a.z).j;
                cyg.ak(fthVar);
                fthVar.p(new bzl(this, akeVar, 1));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f19036c = null;
                this.f19035b = false;
            }
        }
    }

    @Override // g.lb
    public final void onConnectionFailed(nk nkVar) {
        ckd.aj("MeasurementServiceConnection.onConnectionFailed");
        bgm bgmVar = ((cyg) this.f19034a.z).z;
        if (bgmVar == null || !bgmVar.am) {
            bgmVar = null;
        }
        if (bgmVar != null) {
            bgmVar.f11520g.i(nkVar, "Service connection failed");
        }
        synchronized (this) {
            this.f19035b = false;
            this.f19036c = null;
        }
        fth fthVar = ((cyg) this.f19034a.z).j;
        cyg.ak(fthVar);
        fthVar.p(new agz(this, 1));
    }

    @Override // g.bjb
    public final void onConnectionSuspended(int i) {
        ckd.aj("MeasurementServiceConnection.onConnectionSuspended");
        cyg cygVar = (cyg) this.f19034a.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.o.h("Service connection suspended");
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar.p(new agz(this, 0));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ckd.aj("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f19035b = false;
                bgm bgmVar = ((cyg) this.f19034a.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.h("Service connected with null binder");
                return;
            }
            ake akeVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    akeVar = queryLocalInterface instanceof ake ? (ake) queryLocalInterface : new ckg(iBinder);
                    bgm bgmVar2 = ((cyg) this.f19034a.z).z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11519c.h("Bound to IMeasurementService interface");
                } else {
                    bgm bgmVar3 = ((cyg) this.f19034a.z).z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.i(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                bgm bgmVar4 = ((cyg) this.f19034a.z).z;
                cyg.ak(bgmVar4);
                bgmVar4.f11518b.h("Service connect failed to get IMeasurementService");
            }
            if (akeVar == null) {
                this.f19035b = false;
                try {
                    aoy m = aoy.m();
                    dbb dbbVar = this.f19034a;
                    m.s(((cyg) dbbVar.z).v, dbbVar.k);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                fth fthVar = ((cyg) this.f19034a.z).j;
                cyg.ak(fthVar);
                fthVar.p(new bzl(this, akeVar, 0));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ckd.aj("MeasurementServiceConnection.onServiceDisconnected");
        cyg cygVar = (cyg) this.f19034a.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.o.h("Service disconnected");
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar.p(new fuy(13, this, componentName, false));
    }
}

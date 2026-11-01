package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class emi implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final String f15793a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ yh f15794b;

    public emi(yh yhVar, String str) {
        this.f15794b = yhVar;
        this.f15793a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        yh yhVar = this.f15794b;
        if (iBinder == null) {
            bgm bgmVar = yhVar.f20338a.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.h("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i = aql.f10657a;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            gio amnVar = queryLocalInterface instanceof gio ? (gio) queryLocalInterface : new amn(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService", 3);
            if (amnVar == null) {
                bgm bgmVar2 = yhVar.f20338a.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11520g.h("Install Referrer Service implementation was not found");
            } else {
                bgm bgmVar3 = yhVar.f20338a.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11519c.h("Install Referrer Service connected");
                fth fthVar = yhVar.f20338a.j;
                cyg.ak(fthVar);
                fthVar.p(new fuy(this, amnVar, this));
            }
        } catch (RuntimeException e2) {
            bgm bgmVar4 = yhVar.f20338a.z;
            cyg.ak(bgmVar4);
            bgmVar4.f11520g.i(e2, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        bgm bgmVar = this.f15794b.f20338a.z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.h("Install Referrer Service disconnected");
    }
}

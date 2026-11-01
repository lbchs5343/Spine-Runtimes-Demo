package g;

import android.os.IBinder;

/* loaded from: classes.dex */
public final /* synthetic */ class btk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ark f12192a;

    public /* synthetic */ btk(ark arkVar) {
        this.f12192a = arkVar;
    }

    public final void b() {
        ark arkVar = this.f12192a;
        eby ebyVar = arkVar.k;
        IBinder iBinder = gwn.f18889f;
        long z = arkVar.z();
        synchronized (ebyVar) {
            if (iBinder != null) {
                try {
                    if (iBinder != ((IBinder) ebyVar.f15272b)) {
                        ebyVar.f15272b = iBinder;
                        ebyVar.f15273c = z;
                    }
                    ebyVar.f15274d = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        arkVar.m.post(new hdk(arkVar, 2));
    }
}

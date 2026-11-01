package g;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* loaded from: classes.dex */
public abstract class fus extends Service implements iz {

    /* renamed from: f, reason: collision with root package name */
    public final dzh f17454f = new dzh(this);

    @Override // g.iz
    public final euu getLifecycle() {
        return (ajs) this.f17454f.i;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        bff.p(intent, "intent");
        this.f17454f.v(dtn.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f17454f.v(dtn.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        dtn dtnVar = dtn.ON_STOP;
        dzh dzhVar = this.f17454f;
        dzhVar.v(dtnVar);
        dzhVar.v(dtn.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        this.f17454f.v(dtn.ON_START);
        super.onStart(intent, i);
    }
}

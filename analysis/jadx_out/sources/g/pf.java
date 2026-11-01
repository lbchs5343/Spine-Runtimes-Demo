package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class pf implements ServiceConnection {

    /* renamed from: f, reason: collision with root package name */
    public Context f19808f;

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, eab eabVar);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        byi byiVar;
        if (this.f19808f == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        int i = fxd.f17568b;
        if (iBinder == null) {
            byiVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface(byi.f12449a);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof byi)) {
                hds hdsVar = new hds();
                hdsVar.f19292b = iBinder;
                byiVar = hdsVar;
            } else {
                byiVar = (byi) queryLocalInterface;
            }
        }
        onCustomTabsServiceConnected(componentName, new in(byiVar, componentName));
    }
}

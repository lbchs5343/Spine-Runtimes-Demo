package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ewu extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f16294a = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final Context f16295b;

    public ewu(Context context) {
        this.f16295b = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        synchronized (rm.f19909c) {
            try {
                Iterator it = ((bow) rm.f19908b.values()).iterator();
                while (it.hasNext()) {
                    ((rm) it.next()).o();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f16295b.unregisterReceiver(this);
    }
}

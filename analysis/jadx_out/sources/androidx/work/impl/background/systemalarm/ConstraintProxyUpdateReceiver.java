package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import g.cyl;
import g.eax;
import g.fxb;
import g.gkr;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f337a = 0;

    static {
        cyl.g("ConstrntProxyUpdtRecvr");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(intent != null ? intent.getAction() : null)) {
            cyl.f().getClass();
        } else {
            ((gkr) fxb.be(context).bb).s(new eax(intent, context, goAsync(), 1, false));
        }
    }
}

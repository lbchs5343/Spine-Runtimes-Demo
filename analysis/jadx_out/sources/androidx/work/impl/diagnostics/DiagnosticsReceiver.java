package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import g.awt;
import g.crv;
import g.cyl;
import g.gmw;

/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f345a = cyl.g("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        cyl.f().getClass();
        try {
            awt.n(context).ar((gmw) new crv(DiagnosticsWorker.class).f());
        } catch (IllegalStateException e2) {
            cyl.f().j(f345a, "WorkManager is not initialized", e2);
        }
    }
}

package g;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class jf implements eiv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f19472a = cyl.g("SystemAlarmDispatcher");

    /* renamed from: b, reason: collision with root package name */
    public Intent f19473b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19474c;

    /* renamed from: d, reason: collision with root package name */
    public final flz f19475d;

    /* renamed from: e, reason: collision with root package name */
    public final adj f19476e;

    /* renamed from: f, reason: collision with root package name */
    public final egu f19477f;

    /* renamed from: g, reason: collision with root package name */
    public final fxb f19478g;
    public final Context i;
    public SystemAlarmService j;
    public final ccc k;
    public final cip l;

    public jf(SystemAlarmService systemAlarmService) {
        Context applicationContext = systemAlarmService.getApplicationContext();
        this.i = applicationContext;
        gtb gtbVar = new gtb(new frk(1));
        fxb be = fxb.be(systemAlarmService);
        this.f19478g = be;
        this.l = new cip(applicationContext, be.aw.f16981c, gtbVar);
        this.f19476e = new adj(be.aw.m);
        egu eguVar = be.ax;
        this.f19477f = eguVar;
        ccc cccVar = be.bb;
        this.k = cccVar;
        this.f19475d = new flz(eguVar, cccVar);
        eguVar.p(this);
        this.f19474c = new ArrayList();
        this.f19473b = null;
    }

    public static void m() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    @Override // g.eiv
    public final void h(gxm gxmVar, boolean z) {
        bxc bxcVar = (bxc) ((gkr) this.k).f18323c;
        String str = cip.f12941a;
        Intent intent = new Intent(this.i, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        cip.g(intent, gxmVar);
        bxcVar.execute(new hdo(this, intent, 0, 7));
    }

    public final void n() {
        m();
        PowerManager.WakeLock b2 = qj.b(this.i, "ProcessCommand");
        try {
            b2.acquire();
            ((gkr) this.f19478g.bb).s(new hdm(this, 0));
        } finally {
            b2.release();
        }
    }

    public final void o(int i, Intent intent) {
        cyl f2 = cyl.f();
        Objects.toString(intent);
        f2.getClass();
        m();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            cyl.f().getClass();
            return;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && p()) {
            return;
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.f19474c) {
            try {
                boolean isEmpty = this.f19474c.isEmpty();
                this.f19474c.add(intent);
                if (isEmpty) {
                    n();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean p() {
        m();
        synchronized (this.f19474c) {
            try {
                Iterator it = this.f19474c.iterator();
                while (it.hasNext()) {
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

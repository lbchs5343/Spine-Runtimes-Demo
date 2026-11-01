package g;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class ggk implements cdj, fme {

    /* renamed from: b, reason: collision with root package name */
    public final aqv f18094b;

    /* renamed from: c, reason: collision with root package name */
    public int f18095c;

    /* renamed from: d, reason: collision with root package name */
    public PowerManager.WakeLock f18096d;

    /* renamed from: e, reason: collision with root package name */
    public final gxm f18097e;

    /* renamed from: f, reason: collision with root package name */
    public final aci f18098f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18099g;
    public final jf h;
    public final vn i;
    public final Context j;
    public final bxc k;
    public final int l;
    public volatile fe m;
    public final cpk n;
    public final Object o;

    static {
        cyl.g("DelayMetCommandHandler");
    }

    public ggk(Context context, int i, jf jfVar, aci aciVar) {
        this.j = context;
        this.l = i;
        this.h = jfVar;
        this.f18097e = aciVar.f9969a;
        this.f18098f = aciVar;
        fzn fznVar = jfVar.f19478g.bd;
        gkr gkrVar = (gkr) jfVar.k;
        this.f18094b = (aqv) gkrVar.f18325e;
        this.k = (bxc) gkrVar.f18323c;
        this.n = (cpk) gkrVar.f18321a;
        this.i = new vn(fznVar);
        this.f18099g = false;
        this.f18095c = 0;
        this.o = new Object();
    }

    public static void p(ggk ggkVar) {
        int i = ggkVar.l;
        bxc bxcVar = ggkVar.k;
        Context context = ggkVar.j;
        jf jfVar = ggkVar.h;
        gxm gxmVar = ggkVar.f18097e;
        String str = gxmVar.f18956a;
        if (ggkVar.f18095c >= 2) {
            cyl.f().getClass();
            return;
        }
        ggkVar.f18095c = 2;
        cyl.f().getClass();
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        cip.g(intent, gxmVar);
        bxcVar.execute(new hdo(jfVar, intent, i, 7));
        if (!jfVar.f19477f.q(gxmVar.f18956a)) {
            cyl.f().getClass();
            return;
        }
        cyl.f().getClass();
        Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent2.setAction("ACTION_SCHEDULE_WORK");
        cip.g(intent2, gxmVar);
        bxcVar.execute(new hdo(jfVar, intent2, i, 7));
    }

    public static void q(ggk ggkVar) {
        if (ggkVar.f18095c != 0) {
            cyl f2 = cyl.f();
            Objects.toString(ggkVar.f18097e);
            f2.getClass();
            return;
        }
        ggkVar.f18095c = 1;
        cyl f3 = cyl.f();
        Objects.toString(ggkVar.f18097e);
        f3.getClass();
        if (!ggkVar.h.f19477f.r(ggkVar.f18098f, null)) {
            ggkVar.r();
            return;
        }
        adj adjVar = ggkVar.h.f19476e;
        gxm gxmVar = ggkVar.f18097e;
        synchronized (adjVar.f10043a) {
            cyl f4 = cyl.f();
            Objects.toString(gxmVar);
            f4.getClass();
            adjVar.e(gxmVar);
            dws dwsVar = new dws(adjVar, gxmVar);
            adjVar.f10045c.put(gxmVar, dwsVar);
            adjVar.f10046d.put(gxmVar, ggkVar);
            ((Handler) adjVar.f10044b.f17099f).postDelayed(dwsVar, 600000L);
        }
    }

    @Override // g.cdj
    public final void a(fkj fkjVar, bfx bfxVar) {
        boolean z = bfxVar instanceof gpr;
        aqv aqvVar = this.f18094b;
        if (z) {
            aqvVar.execute(new dki(this, 1));
        } else {
            aqvVar.execute(new dki(this, 0));
        }
    }

    public final void r() {
        synchronized (this.o) {
            try {
                if (this.m != null) {
                    this.m._bi(null);
                }
                this.h.f19476e.e(this.f18097e);
                PowerManager.WakeLock wakeLock = this.f18096d;
                if (wakeLock != null && wakeLock.isHeld()) {
                    cyl f2 = cyl.f();
                    Objects.toString(this.f18096d);
                    Objects.toString(this.f18097e);
                    f2.getClass();
                    this.f18096d.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void s() {
        String str = this.f18097e.f18956a;
        Context context = this.j;
        StringBuilder l = tn.l(str, " (");
        l.append(this.l);
        l.append(")");
        this.f18096d = qj.b(context, l.toString());
        cyl f2 = cyl.f();
        Objects.toString(this.f18096d);
        f2.getClass();
        this.f18096d.acquire();
        fkj p = this.h.f19478g.az.a().p(str);
        if (p == null) {
            this.f18094b.execute(new dki(this, 0));
            return;
        }
        boolean ab2 = p.ab();
        this.f18099g = ab2;
        if (ab2) {
            this.m = gx.b(this.i, p, this.n, this);
        } else {
            cyl.f().getClass();
            this.f18094b.execute(new dki(this, 1));
        }
    }

    public final void t(boolean z) {
        cyl f2 = cyl.f();
        gxm gxmVar = this.f18097e;
        Objects.toString(gxmVar);
        f2.getClass();
        r();
        int i = this.l;
        jf jfVar = this.h;
        bxc bxcVar = this.k;
        Context context = this.j;
        if (z) {
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_SCHEDULE_WORK");
            cip.g(intent, gxmVar);
            bxcVar.execute(new hdo(jfVar, intent, i, 7));
        }
        if (this.f18099g) {
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_CONSTRAINTS_CHANGED");
            bxcVar.execute(new hdo(jfVar, intent2, i, 7));
        }
    }
}

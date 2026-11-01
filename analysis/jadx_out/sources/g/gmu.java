package g;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class gmu implements cdj, eiv {

    /* renamed from: b, reason: collision with root package name */
    public static final String f18417b = cyl.g("SystemFgDispatcher");

    /* renamed from: c, reason: collision with root package name */
    public final vn f18418c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f18419d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f18420e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public gxm f18421f;

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f18422g;
    public final fxb i;
    public SystemForegroundService j;
    public final ccc k;
    public final HashMap l;

    public gmu(Context context) {
        fxb be = fxb.be(context);
        this.i = be;
        this.k = be.bb;
        this.f18421f = null;
        this.f18422g = new LinkedHashMap();
        this.f18419d = new HashMap();
        this.l = new HashMap();
        this.f18418c = new vn(be.bd);
        be.ax.p(this);
    }

    public static Intent m(Context context, gxm gxmVar, dju djuVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", gxmVar.f18956a);
        intent.putExtra("KEY_GENERATION", gxmVar.f18957b);
        intent.putExtra("KEY_NOTIFICATION_ID", djuVar.f14289a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", djuVar.f14290b);
        intent.putExtra("KEY_NOTIFICATION", djuVar.f14291c);
        return intent;
    }

    @Override // g.cdj
    public final void a(fkj fkjVar, bfx bfxVar) {
        if (bfxVar instanceof das) {
            String str = fkjVar.h;
            cyl.f().getClass();
            gxm j = awt.j(fkjVar);
            int i = ((das) bfxVar).f13870a;
            fxb fxbVar = this.i;
            ((gkr) fxbVar.bb).s(new gkp(fxbVar.ax, new aci(j), true, i));
        }
    }

    @Override // g.eiv
    public final void h(gxm gxmVar, boolean z) {
        Map.Entry entry;
        synchronized (this.f18420e) {
            try {
                dta dtaVar = ((fkj) this.l.remove(gxmVar)) != null ? (dta) this.f18419d.remove(gxmVar) : null;
                if (dtaVar != null) {
                    dtaVar._bi(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        dju djuVar = (dju) this.f18422g.remove(gxmVar);
        if (gxmVar.equals(this.f18421f)) {
            if (this.f18422g.size() > 0) {
                Iterator it = this.f18422g.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.f18421f = (gxm) entry.getKey();
                if (this.j != null) {
                    dju djuVar2 = (dju) entry.getValue();
                    SystemForegroundService systemForegroundService = this.j;
                    int i = djuVar2.f14289a;
                    int i2 = djuVar2.f14290b;
                    Notification notification = djuVar2.f14291c;
                    systemForegroundService.getClass();
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 31) {
                        agl.h(systemForegroundService, i, notification, i2);
                    } else if (i3 >= 29) {
                        agl.f(systemForegroundService, i, notification, i2);
                    } else {
                        systemForegroundService.startForeground(i, notification);
                    }
                    this.j.f348c.cancel(djuVar2.f14289a);
                }
            } else {
                this.f18421f = null;
            }
        }
        SystemForegroundService systemForegroundService2 = this.j;
        if (djuVar == null || systemForegroundService2 == null) {
            return;
        }
        cyl f2 = cyl.f();
        gxmVar.toString();
        f2.getClass();
        systemForegroundService2.f348c.cancel(djuVar.f14289a);
    }

    public final void n() {
        this.j = null;
        synchronized (this.f18420e) {
            try {
                Iterator it = this.f18419d.values().iterator();
                while (it.hasNext()) {
                    ((dta) it.next())._bi(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.i.ax.v(this);
    }

    public final void o(int i) {
        cyl.f().getClass();
        for (Map.Entry entry : this.f18422g.entrySet()) {
            if (((dju) entry.getValue()).f14290b == i) {
                gxm gxmVar = (gxm) entry.getKey();
                fxb fxbVar = this.i;
                ((gkr) fxbVar.bb).s(new gkp(fxbVar.ax, new aci(gxmVar), true, -128));
            }
        }
        SystemForegroundService systemForegroundService = this.j;
        if (systemForegroundService != null) {
            systemForegroundService.f349d = true;
            cyl.f().getClass();
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf();
        }
    }

    public final void p(Intent intent) {
        if (this.j == null) {
            throw new IllegalStateException("handleNotify was called on the destroyed dispatcher");
        }
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        gxm gxmVar = new gxm(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        cyl.f().getClass();
        if (notification == null) {
            throw new IllegalArgumentException("Notification passed in the intent was null.");
        }
        dju djuVar = new dju(intExtra, intExtra2, notification);
        LinkedHashMap linkedHashMap = this.f18422g;
        linkedHashMap.put(gxmVar, djuVar);
        dju djuVar2 = (dju) linkedHashMap.get(this.f18421f);
        if (djuVar2 == null) {
            this.f18421f = gxmVar;
        } else {
            this.j.f348c.notify(intExtra, notification);
            if (Build.VERSION.SDK_INT >= 29) {
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    i |= ((dju) ((Map.Entry) it.next()).getValue()).f14290b;
                }
                djuVar = new dju(djuVar2.f14289a, i, djuVar2.f14291c);
            } else {
                djuVar = djuVar2;
            }
        }
        SystemForegroundService systemForegroundService = this.j;
        int i2 = djuVar.f14289a;
        int i3 = djuVar.f14290b;
        Notification notification2 = djuVar.f14291c;
        systemForegroundService.getClass();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 31) {
            agl.h(systemForegroundService, i2, notification2, i3);
        } else if (i4 >= 29) {
            agl.f(systemForegroundService, i2, notification2, i3);
        } else {
            systemForegroundService.startForeground(i2, notification2);
        }
    }
}

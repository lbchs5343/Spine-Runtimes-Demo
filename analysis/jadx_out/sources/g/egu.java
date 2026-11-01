package g;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class egu {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15513a = cyl.g("Processor");

    /* renamed from: d, reason: collision with root package name */
    public final gkr f15516d;

    /* renamed from: e, reason: collision with root package name */
    public final WorkDatabase f15517e;
    public final Context i;
    public final flk k;
    public final HashMap l = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f15519g = new HashMap();
    public final HashSet h = new HashSet();
    public final ArrayList j = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public PowerManager.WakeLock f15518f = null;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15515c = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f15514b = new HashMap();

    public egu(Context context, flk flkVar, gkr gkrVar, WorkDatabase workDatabase) {
        this.i = context;
        this.k = flkVar;
        this.f15516d = gkrVar;
        this.f15517e = workDatabase;
    }

    public static boolean m(dly dlyVar, int i) {
        if (dlyVar == null) {
            cyl.f().getClass();
            return false;
        }
        dlyVar.f14404c.w(new gfr(i));
        cyl.f().getClass();
        return true;
    }

    public final void n(gxm gxmVar) {
        ((bxc) this.f15516d.f18323c).execute(new dsf(this, 8, gxmVar));
    }

    public final dly o(String str) {
        dly dlyVar = (dly) this.f15519g.get(str);
        return dlyVar == null ? (dly) this.l.get(str) : dlyVar;
    }

    public final void p(eiv eivVar) {
        synchronized (this.f15515c) {
            this.j.add(eivVar);
        }
    }

    public final boolean q(String str) {
        boolean z;
        synchronized (this.f15515c) {
            z = o(str) != null;
        }
        return z;
    }

    public final boolean r(aci aciVar, dsp dspVar) {
        Throwable th;
        eyx eyxVar;
        gxm gxmVar = aciVar.f9969a;
        final String str = gxmVar.f18956a;
        final ArrayList arrayList = new ArrayList();
        fkj fkjVar = (fkj) this.f15517e.ai(new Callable() { // from class: g.gsk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkDatabase workDatabase = egu.this.f15517e;
                dzh b2 = workDatabase.b();
                String str2 = str;
                arrayList.addAll(b2.p(str2));
                return workDatabase.a().p(str2);
            }
        });
        if (fkjVar == null) {
            cyl f2 = cyl.f();
            gxmVar.toString();
            f2.getClass();
            n(gxmVar);
            return false;
        }
        synchronized (this.f15515c) {
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    throw th;
                }
                try {
                    if (q(str)) {
                        Set set = (Set) this.f15514b.get(str);
                        if (((aci) set.iterator().next()).f9969a.f18957b == gxmVar.f18957b) {
                            set.add(aciVar);
                            cyl f3 = cyl.f();
                            gxmVar.toString();
                            f3.getClass();
                        } else {
                            n(gxmVar);
                        }
                        return false;
                    }
                    if (fkjVar.t != gxmVar.f18957b) {
                        n(gxmVar);
                        return false;
                    }
                    gxv gxvVar = new gxv(this.i, this.k, this.f15516d, this, this.f15517e, fkjVar, arrayList);
                    if (dspVar != null) {
                        gxvVar.f18982f = dspVar;
                    }
                    dly dlyVar = new dly(gxvVar);
                    boj bojVar = (cpk) dlyVar.f14407f.f18321a;
                    fhq fhqVar = new fhq();
                    bojVar.getClass();
                    if (fhqVar != cgq.f12850a) {
                        boj _w = bojVar._w(fhqVar.getKey());
                        cgq cgqVar = cgq.f12850a;
                        if (_w == cgqVar) {
                            bojVar = fhqVar;
                        } else {
                            bmr bmrVar = bmr.j;
                            dic dicVar = (dic) _w._x(bmrVar);
                            if (dicVar == null) {
                                eyxVar = new eyx(_w, fhqVar);
                            } else {
                                boj _w2 = _w._w(bmrVar);
                                if (_w2 == cgqVar) {
                                    bojVar = new eyx(fhqVar, dicVar);
                                } else {
                                    eyxVar = new eyx(new eyx(_w2, fhqVar), dicVar);
                                }
                            }
                            bojVar = eyxVar;
                        }
                    }
                    gbb w = cro.w(bojVar, new cob(dlyVar, null));
                    w.f17842b.addListener(new gtt(this, w, dlyVar, 6), (bxc) this.f15516d.f18323c);
                    this.l.put(str, dlyVar);
                    HashSet hashSet = new HashSet();
                    hashSet.add(aciVar);
                    this.f15514b.put(str, hashSet);
                    cyl f4 = cyl.f();
                    gxmVar.toString();
                    f4.getClass();
                    return true;
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    public final dly s(String str) {
        dly dlyVar = (dly) this.f15519g.remove(str);
        boolean z = dlyVar != null;
        if (!z) {
            dlyVar = (dly) this.l.remove(str);
        }
        this.f15514b.remove(str);
        if (z) {
            synchronized (this.f15515c) {
                try {
                    if (this.f15519g.isEmpty()) {
                        Context context = this.i;
                        String str2 = gmu.f18417b;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.i.startService(intent);
                        } catch (Throwable th) {
                            cyl.f().j(f15513a, "Unable to stop foreground service", th);
                        }
                        PowerManager.WakeLock wakeLock = this.f15518f;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.f15518f = null;
                        }
                    }
                } finally {
                }
            }
        }
        return dlyVar;
    }

    public final void t(aci aciVar, int i) {
        String str = aciVar.f9969a.f18956a;
        synchronized (this.f15515c) {
            try {
                if (this.f15519g.get(str) != null) {
                    cyl.f().getClass();
                    return;
                }
                Set set = (Set) this.f15514b.get(str);
                if (set != null && set.contains(aciVar)) {
                    m(s(str), i);
                }
            } finally {
            }
        }
    }

    public final fkj u(String str) {
        synchronized (this.f15515c) {
            try {
                dly o = o(str);
                if (o == null) {
                    return null;
                }
                return o.f14408g;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(eiv eivVar) {
        synchronized (this.f15515c) {
            this.j.remove(eivVar);
        }
    }
}

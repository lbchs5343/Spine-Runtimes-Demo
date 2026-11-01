package g;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class dio implements giw, cdj, eiv {

    /* renamed from: b, reason: collision with root package name */
    public final flz f14232b;

    /* renamed from: c, reason: collision with root package name */
    public final egu f14233c;

    /* renamed from: e, reason: collision with root package name */
    public final ehs f14235e;

    /* renamed from: f, reason: collision with root package name */
    public final vn f14236f;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f14237g;
    public boolean i;
    public final Context k;
    public final flk l;
    public final dkh n;
    public final ccc o;
    public final HashMap m = new HashMap();
    public final Object j = new Object();
    public final gtb p = new gtb(new frk(1));

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f14234d = new HashMap();

    static {
        cyl.g("GreedyScheduler");
    }

    public dio(Context context, flk flkVar, fzn fznVar, egu eguVar, flz flzVar, ccc cccVar) {
        this.k = context;
        fnq fnqVar = flkVar.m;
        this.f14235e = new ehs(this, fnqVar, flkVar.f16981c);
        this.n = new dkh(fnqVar, flzVar);
        this.o = cccVar;
        this.f14236f = new vn(fznVar);
        this.l = flkVar;
        this.f14233c = eguVar;
        this.f14232b = flzVar;
    }

    @Override // g.cdj
    public final void a(fkj fkjVar, bfx bfxVar) {
        gxm j = awt.j(fkjVar);
        boolean z = bfxVar instanceof gpr;
        flz flzVar = this.f14232b;
        dkh dkhVar = this.n;
        gtb gtbVar = this.p;
        if (z) {
            if (gtbVar.x(j)) {
                return;
            }
            cyl f2 = cyl.f();
            j.toString();
            f2.getClass();
            aci w = gtbVar.w(j);
            dkhVar.h(w);
            flzVar.c(w, null);
            return;
        }
        cyl f3 = cyl.f();
        j.toString();
        f3.getClass();
        aci p = gtbVar.p(j);
        if (p != null) {
            dkhVar.g(p);
            int i = ((das) bfxVar).f13870a;
            flzVar.getClass();
            flzVar.b(p, i);
        }
    }

    @Override // g.eiv
    public final void h(gxm gxmVar, boolean z) {
        aci p = this.p.p(gxmVar);
        if (p != null) {
            this.n.g(p);
        }
        s(gxmVar);
        if (z) {
            return;
        }
        synchronized (this.j) {
            this.f14234d.remove(gxmVar);
        }
    }

    @Override // g.giw
    public final void q(String str) {
        Runnable runnable;
        if (this.f14237g == null) {
            this.f14237g = Boolean.valueOf(bz.a(this.k, this.l));
        }
        if (!this.f14237g.booleanValue()) {
            cyl.f().getClass();
            return;
        }
        if (!this.i) {
            this.f14233c.p(this);
            this.i = true;
        }
        cyl.f().getClass();
        ehs ehsVar = this.f14235e;
        if (ehsVar != null && (runnable = (Runnable) ehsVar.f15558b.remove(str)) != null) {
            ((Handler) ehsVar.f15560d.f17099f).removeCallbacks(runnable);
        }
        for (aci aciVar : this.p.o(str)) {
            this.n.g(aciVar);
            flz flzVar = this.f14232b;
            flzVar.getClass();
            flzVar.b(aciVar, -512);
        }
    }

    @Override // g.giw
    public final void r(fkj... fkjVarArr) {
        if (this.f14237g == null) {
            this.f14237g = Boolean.valueOf(bz.a(this.k, this.l));
        }
        if (!this.f14237g.booleanValue()) {
            cyl.f().getClass();
            return;
        }
        if (!this.i) {
            this.f14233c.p(this);
            this.i = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (fkj fkjVar : fkjVarArr) {
            if (!this.p.x(awt.j(fkjVar))) {
                long max = Math.max(fkjVar.aa(), u(fkjVar));
                this.l.f16981c.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (fkjVar.q == gys.ENQUEUED) {
                    if (currentTimeMillis < max) {
                        ehs ehsVar = this.f14235e;
                        if (ehsVar != null) {
                            fnq fnqVar = ehsVar.f15560d;
                            HashMap hashMap = ehsVar.f15558b;
                            Runnable runnable = (Runnable) hashMap.remove(fkjVar.h);
                            if (runnable != null) {
                                ((Handler) fnqVar.f17099f).removeCallbacks(runnable);
                            }
                            gfh gfhVar = new gfh(15, ehsVar, fkjVar, false);
                            hashMap.put(fkjVar.h, gfhVar);
                            ehsVar.f15561e.getClass();
                            ((Handler) fnqVar.f17099f).postDelayed(gfhVar, max - System.currentTimeMillis());
                        }
                    } else if (fkjVar.ab()) {
                        bho bhoVar = fkjVar.r;
                        int i = Build.VERSION.SDK_INT;
                        if (i >= 23 && bhoVar.f11593c) {
                            cyl f2 = cyl.f();
                            fkjVar.toString();
                            f2.getClass();
                        } else if (i < 24 || !bhoVar.l()) {
                            hashSet.add(fkjVar);
                            hashSet2.add(fkjVar.h);
                        } else {
                            cyl f3 = cyl.f();
                            fkjVar.toString();
                            f3.getClass();
                        }
                    } else if (!this.p.x(awt.j(fkjVar))) {
                        cyl.f().getClass();
                        gtb gtbVar = this.p;
                        gtbVar.getClass();
                        aci w = gtbVar.w(awt.j(fkjVar));
                        this.n.h(w);
                        this.f14232b.c(w, null);
                    }
                }
            }
        }
        synchronized (this.j) {
            try {
                if (!hashSet.isEmpty()) {
                    TextUtils.join(",", hashSet2);
                    cyl.f().getClass();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        fkj fkjVar2 = (fkj) it.next();
                        gxm j = awt.j(fkjVar2);
                        if (!this.m.containsKey(j)) {
                            this.m.put(j, gx.b(this.f14236f, fkjVar2, (cpk) ((gkr) this.o).f18321a, this));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void s(gxm gxmVar) {
        dta dtaVar;
        synchronized (this.j) {
            dtaVar = (dta) this.m.remove(gxmVar);
        }
        if (dtaVar != null) {
            cyl f2 = cyl.f();
            Objects.toString(gxmVar);
            f2.getClass();
            dtaVar._bi(null);
        }
    }

    @Override // g.giw
    public final boolean t() {
        return false;
    }

    public final long u(fkj fkjVar) {
        long max;
        synchronized (this.j) {
            try {
                gxm j = awt.j(fkjVar);
                ged gedVar = (ged) this.f14234d.get(j);
                if (gedVar == null) {
                    int i = fkjVar.f16927b;
                    this.l.f16981c.getClass();
                    gedVar = new ged(i, System.currentTimeMillis());
                    this.f14234d.put(j, gedVar);
                }
                max = (Math.max((fkjVar.f16927b - gedVar.f17978a) - 5, 0) * 30000) + gedVar.f17979b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return max;
    }
}

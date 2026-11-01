package androidx.work.impl;

import g.aga;
import g.dbe;
import g.dsg;
import g.duw;
import g.dzh;
import g.erl;
import g.evf;
import g.fdy;
import g.ffr;
import g.fgd;
import g.gg;
import g.gkr;
import g.gtb;
import g.hda;
import g.hdp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public volatile dzh h;
    public volatile gtb i;
    public volatile fdy j;
    public volatile duw k;
    public volatile gg l;
    public volatile ffr m;
    public volatile gkr n;

    @Override // androidx.work.impl.WorkDatabase
    public final gg a() {
        gg ggVar;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            try {
                if (this.l == null) {
                    this.l = new gg(this);
                }
                ggVar = this.l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ggVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final dzh b() {
        dzh dzhVar;
        if (this.h != null) {
            return this.h;
        }
        synchronized (this) {
            try {
                if (this.h == null) {
                    this.h = new dzh(this);
                }
                dzhVar = this.h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dzhVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final ffr c() {
        ffr ffrVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            try {
                if (this.m == null) {
                    this.m = new ffr(this);
                }
                ffrVar = this.m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ffrVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final gtb d() {
        gtb gtbVar;
        if (this.i != null) {
            return this.i;
        }
        synchronized (this) {
            try {
                if (this.i == null) {
                    this.i = new gtb(this);
                }
                gtbVar = this.i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gtbVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final fdy e() {
        fdy fdyVar;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            try {
                if (this.j == null) {
                    this.j = new fdy(this);
                }
                fdyVar = this.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fdyVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final gkr f() {
        gkr gkrVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new gkr(this);
                }
                gkrVar = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gkrVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final duw g() {
        duw duwVar;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            try {
                if (this.k == null) {
                    this.k = new duw(this);
                }
                duwVar = this.k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return duwVar;
    }

    @Override // g.gac
    public final Set o() {
        return new HashSet();
    }

    @Override // g.gac
    public final dbe p() {
        return new dbe(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // g.gac
    public final fgd q(hda hdaVar) {
        return hdaVar.m.c(new aga(hdaVar.f19256g, hdaVar.k, new dsg(hdaVar, new evf(20, this)), false, false));
    }

    @Override // g.gac
    public final List r(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new hdp(13, 14, 10));
        arrayList.add(new hdp(11));
        int i = 17;
        arrayList.add(new hdp(16, i, 12));
        int i2 = 18;
        arrayList.add(new hdp(i, i2, 13));
        arrayList.add(new hdp(i2, 19, 14));
        arrayList.add(new hdp(15));
        arrayList.add(new hdp(20, 21, 16));
        arrayList.add(new hdp(22, 23, 17));
        return arrayList;
    }

    @Override // g.gac
    public final Map s() {
        HashMap hashMap = new HashMap();
        List list = Collections.EMPTY_LIST;
        hashMap.put(gg.class, list);
        hashMap.put(gtb.class, list);
        hashMap.put(dzh.class, list);
        hashMap.put(duw.class, list);
        hashMap.put(ffr.class, list);
        hashMap.put(gkr.class, list);
        hashMap.put(fdy.class, list);
        hashMap.put(erl.class, list);
        return hashMap;
    }
}

package g;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Trace;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class dly {

    /* renamed from: a, reason: collision with root package name */
    public final egu f14402a;

    /* renamed from: b, reason: collision with root package name */
    public final gtb f14403b;

    /* renamed from: c, reason: collision with root package name */
    public final fhq f14404c;

    /* renamed from: d, reason: collision with root package name */
    public final dsp f14405d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f14406e;

    /* renamed from: f, reason: collision with root package name */
    public final gkr f14407f;

    /* renamed from: g, reason: collision with root package name */
    public final fkj f14408g;
    public final flk h;
    public final String i;
    public final WorkDatabase j;
    public final Context k;
    public final gg l;
    public final String m;
    public final dwm n;

    public dly(gxv gxvVar) {
        fkj fkjVar = (fkj) gxvVar.f18981e;
        this.f14408g = fkjVar;
        this.k = (Context) gxvVar.f18977a;
        String str = fkjVar.h;
        this.m = str;
        this.f14405d = (dsp) gxvVar.f18982f;
        this.f14407f = (gkr) gxvVar.h;
        flk flkVar = (flk) gxvVar.f18983g;
        this.h = flkVar;
        this.n = flkVar.f16981c;
        this.f14402a = (egu) gxvVar.f18978b;
        WorkDatabase workDatabase = (WorkDatabase) gxvVar.f18979c;
        this.j = workDatabase;
        this.l = workDatabase.a();
        this.f14403b = workDatabase.d();
        ArrayList arrayList = (ArrayList) gxvVar.i;
        this.f14406e = arrayList;
        this.i = awf.ad(awf.p("Work [ id=", str, ", tags={ "), gsv.bh(arrayList, ",", null, 62), " } ]");
        this.f14404c = new fhq();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object o(dly dlyVar, w wVar) {
        gnw gnwVar;
        int i;
        cxr cxrVar;
        Boolean bool;
        OverwritingInputMerger overwritingInputMerger;
        dwa dwaVar;
        String str;
        final dly dlyVar2 = dlyVar;
        String str2 = dlyVar2.m;
        gkr gkrVar = dlyVar2.f14407f;
        WorkDatabase workDatabase = dlyVar2.j;
        flk flkVar = dlyVar2.h;
        ao aoVar = flkVar.h;
        fkj fkjVar = dlyVar2.f14408g;
        try {
            if (wVar instanceof gnw) {
                gnwVar = (gnw) wVar;
                int i2 = gnwVar.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    gnwVar.label = i2 - Integer.MIN_VALUE;
                    Object obj = gnwVar.result;
                    cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
                    i = gnwVar.label;
                    if (i != 0) {
                        eg.k(obj);
                        gjq gjqVar = flkVar.f16983e;
                        aoVar.getClass();
                        boolean am = baf.am();
                        String str3 = fkjVar.v;
                        String str4 = fkjVar.u;
                        String str5 = fkjVar.f16930e;
                        if (am && str3 != null) {
                            int hashCode = fkjVar.hashCode();
                            aoVar.getClass();
                            if (Build.VERSION.SDK_INT < 29) {
                                String y = baf.y(str3);
                                try {
                                    if (baf.k == null) {
                                        str = y;
                                        cxrVar = cxrVar2;
                                        try {
                                            baf.k = Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
                                        } catch (Exception e2) {
                                            e = e2;
                                            baf.be(e);
                                            final int i3 = 0;
                                            bool = (Boolean) workDatabase.ai(new Callable(dlyVar2) { // from class: g.gmx

                                                /* renamed from: b, reason: collision with root package name */
                                                public final /* synthetic */ dly f18426b;

                                                {
                                                    this.f18426b = dlyVar2;
                                                }

                                                @Override // java.util.concurrent.Callable
                                                public final Object call() {
                                                    boolean z;
                                                    int i4 = i3;
                                                    dly dlyVar3 = this.f18426b;
                                                    switch (i4) {
                                                        case 0:
                                                            fkj fkjVar2 = dlyVar3.f14408g;
                                                            gys gysVar = fkjVar2.q;
                                                            gys gysVar2 = gys.ENQUEUED;
                                                            if (gysVar != gysVar2) {
                                                                String str6 = bbv.f11244a;
                                                                cyl.f().getClass();
                                                                return Boolean.TRUE;
                                                            }
                                                            if (fkjVar2.z() || (fkjVar2.q == gysVar2 && fkjVar2.f16927b > 0)) {
                                                                dlyVar3.n.getClass();
                                                                if (System.currentTimeMillis() < fkjVar2.aa()) {
                                                                    cyl f2 = cyl.f();
                                                                    String str7 = bbv.f11244a;
                                                                    f2.getClass();
                                                                    return Boolean.TRUE;
                                                                }
                                                            }
                                                            return Boolean.FALSE;
                                                        default:
                                                            gg ggVar = dlyVar3.l;
                                                            String str8 = dlyVar3.m;
                                                            if (ggVar.ad(str8) == gys.ENQUEUED) {
                                                                ggVar.s(gys.RUNNING, str8);
                                                                WorkDatabase_Impl workDatabase_Impl = ggVar.h;
                                                                workDatabase_Impl.al();
                                                                bnh bnhVar = ggVar.m;
                                                                cap i5 = bnhVar.i();
                                                                z = true;
                                                                i5.e(1, str8);
                                                                try {
                                                                    workDatabase_Impl.an();
                                                                    try {
                                                                        i5.h();
                                                                        workDatabase_Impl.ah();
                                                                        bnhVar.h(i5);
                                                                        ggVar.r(-256, str8);
                                                                    } finally {
                                                                        workDatabase_Impl.am();
                                                                    }
                                                                } catch (Throwable th) {
                                                                    bnhVar.h(i5);
                                                                    throw th;
                                                                }
                                                            } else {
                                                                z = false;
                                                            }
                                                            return Boolean.valueOf(z);
                                                    }
                                                }
                                            });
                                            bff.e(bool, "shouldExit");
                                            if (bool.booleanValue()) {
                                            }
                                        }
                                    } else {
                                        str = y;
                                        cxrVar = cxrVar2;
                                    }
                                    baf.k.invoke(null, Long.valueOf(baf.t), str, Integer.valueOf(hashCode));
                                } catch (Exception e3) {
                                    e = e3;
                                    cxrVar = cxrVar2;
                                }
                                final int i32 = 0;
                                bool = (Boolean) workDatabase.ai(new Callable(dlyVar2) { // from class: g.gmx

                                    /* renamed from: b, reason: collision with root package name */
                                    public final /* synthetic */ dly f18426b;

                                    {
                                        this.f18426b = dlyVar2;
                                    }

                                    @Override // java.util.concurrent.Callable
                                    public final Object call() {
                                        boolean z;
                                        int i4 = i32;
                                        dly dlyVar3 = this.f18426b;
                                        switch (i4) {
                                            case 0:
                                                fkj fkjVar2 = dlyVar3.f14408g;
                                                gys gysVar = fkjVar2.q;
                                                gys gysVar2 = gys.ENQUEUED;
                                                if (gysVar != gysVar2) {
                                                    String str6 = bbv.f11244a;
                                                    cyl.f().getClass();
                                                    return Boolean.TRUE;
                                                }
                                                if (fkjVar2.z() || (fkjVar2.q == gysVar2 && fkjVar2.f16927b > 0)) {
                                                    dlyVar3.n.getClass();
                                                    if (System.currentTimeMillis() < fkjVar2.aa()) {
                                                        cyl f2 = cyl.f();
                                                        String str7 = bbv.f11244a;
                                                        f2.getClass();
                                                        return Boolean.TRUE;
                                                    }
                                                }
                                                return Boolean.FALSE;
                                            default:
                                                gg ggVar = dlyVar3.l;
                                                String str8 = dlyVar3.m;
                                                if (ggVar.ad(str8) == gys.ENQUEUED) {
                                                    ggVar.s(gys.RUNNING, str8);
                                                    WorkDatabase_Impl workDatabase_Impl = ggVar.h;
                                                    workDatabase_Impl.al();
                                                    bnh bnhVar = ggVar.m;
                                                    cap i5 = bnhVar.i();
                                                    z = true;
                                                    i5.e(1, str8);
                                                    try {
                                                        workDatabase_Impl.an();
                                                        try {
                                                            i5.h();
                                                            workDatabase_Impl.ah();
                                                            bnhVar.h(i5);
                                                            ggVar.r(-256, str8);
                                                        } finally {
                                                            workDatabase_Impl.am();
                                                        }
                                                    } catch (Throwable th) {
                                                        bnhVar.h(i5);
                                                        throw th;
                                                    }
                                                } else {
                                                    z = false;
                                                }
                                                return Boolean.valueOf(z);
                                        }
                                    }
                                });
                                bff.e(bool, "shouldExit");
                                if (bool.booleanValue()) {
                                    return new cmt();
                                }
                                if (fkjVar.z()) {
                                    dwaVar = fkjVar.f16932g;
                                } else {
                                    flkVar.f16985g.getClass();
                                    bff.p(str5, "className");
                                    String str6 = eqo.f16000a;
                                    try {
                                        Object newInstance = Class.forName(str5).getDeclaredConstructor(null).newInstance(null);
                                        bff.ag(newInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
                                        overwritingInputMerger = (OverwritingInputMerger) newInstance;
                                    } catch (Exception e4) {
                                        cyl.f().j(eqo.f16000a, "Trouble instantiating ".concat(str5), e4);
                                        overwritingInputMerger = null;
                                    }
                                    if (overwritingInputMerger == null) {
                                        cyl.f().i(bbv.f11244a, "Could not create Input Merger ".concat(str5));
                                        return new eme();
                                    }
                                    List r = cro.r(fkjVar.f16932g);
                                    gg ggVar = dlyVar2.l;
                                    ggVar.getClass();
                                    fcg o = fcg.o(1, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                                    o.e(1, str2);
                                    WorkDatabase_Impl workDatabase_Impl = ggVar.h;
                                    workDatabase_Impl.al();
                                    Cursor ag = workDatabase_Impl.ag(o);
                                    try {
                                        ArrayList arrayList = new ArrayList(ag.getCount());
                                        while (ag.moveToNext()) {
                                            arrayList.add(dwa.c(ag.getBlob(0)));
                                        }
                                        ag.close();
                                        o.p();
                                        ArrayList bl = gsv.bl(arrayList, r);
                                        evf evfVar = new evf(7);
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        Iterator it = bl.iterator();
                                        while (it.hasNext()) {
                                            Map unmodifiableMap = Collections.unmodifiableMap(((dwa) it.next()).f14916b);
                                            bff.e(unmodifiableMap, "unmodifiableMap(values)");
                                            linkedHashMap.putAll(unmodifiableMap);
                                        }
                                        evfVar.r(linkedHashMap);
                                        dwaVar = new dwa((LinkedHashMap) evfVar.f16224f);
                                        bff.k(dwaVar);
                                    } catch (Throwable th) {
                                        ag.close();
                                        o.p();
                                        throw th;
                                    }
                                }
                                UUID fromString = UUID.fromString(str2);
                                ArrayList arrayList2 = dlyVar2.f14406e;
                                dsp dspVar = dlyVar2.f14405d;
                                int i4 = fkjVar.f16927b;
                                ExecutorService executorService = flkVar.f16984f;
                                nt ntVar = flkVar.j;
                                gnw gnwVar2 = gnwVar;
                                cxy cxyVar = new cxy(workDatabase, gkrVar);
                                dcr dcrVar = new dcr(workDatabase, dlyVar2.f14402a, gkrVar);
                                WorkerParameters workerParameters = new WorkerParameters();
                                workerParameters.f334e = fromString;
                                workerParameters.h = dwaVar;
                                workerParameters.j = new HashSet(arrayList2);
                                workerParameters.f332c = dspVar;
                                workerParameters.f333d = i4;
                                workerParameters.f335f = executorService;
                                workerParameters.k = ntVar;
                                workerParameters.f330a = gkrVar;
                                workerParameters.f336g = gjqVar;
                                workerParameters.i = cxyVar;
                                workerParameters.f331b = dcrVar;
                                try {
                                    cg b2 = gjqVar.b(dlyVar2.k, str4, workerParameters);
                                    b2.setUsed();
                                    erz _x = gnwVar2.getContext()._x(dwm.o);
                                    bff.d(_x);
                                    fyw fywVar = (fyw) ((dta) _x);
                                    final int i5 = 1;
                                    fywVar.ag(false, true, new bht(new bdz(b2, am, str3, dlyVar2)));
                                    Object ai = workDatabase.ai(new Callable(dlyVar2) { // from class: g.gmx

                                        /* renamed from: b, reason: collision with root package name */
                                        public final /* synthetic */ dly f18426b;

                                        {
                                            this.f18426b = dlyVar2;
                                        }

                                        @Override // java.util.concurrent.Callable
                                        public final Object call() {
                                            boolean z;
                                            int i42 = i5;
                                            dly dlyVar3 = this.f18426b;
                                            switch (i42) {
                                                case 0:
                                                    fkj fkjVar2 = dlyVar3.f14408g;
                                                    gys gysVar = fkjVar2.q;
                                                    gys gysVar2 = gys.ENQUEUED;
                                                    if (gysVar != gysVar2) {
                                                        String str62 = bbv.f11244a;
                                                        cyl.f().getClass();
                                                        return Boolean.TRUE;
                                                    }
                                                    if (fkjVar2.z() || (fkjVar2.q == gysVar2 && fkjVar2.f16927b > 0)) {
                                                        dlyVar3.n.getClass();
                                                        if (System.currentTimeMillis() < fkjVar2.aa()) {
                                                            cyl f2 = cyl.f();
                                                            String str7 = bbv.f11244a;
                                                            f2.getClass();
                                                            return Boolean.TRUE;
                                                        }
                                                    }
                                                    return Boolean.FALSE;
                                                default:
                                                    gg ggVar2 = dlyVar3.l;
                                                    String str8 = dlyVar3.m;
                                                    if (ggVar2.ad(str8) == gys.ENQUEUED) {
                                                        ggVar2.s(gys.RUNNING, str8);
                                                        WorkDatabase_Impl workDatabase_Impl2 = ggVar2.h;
                                                        workDatabase_Impl2.al();
                                                        bnh bnhVar = ggVar2.m;
                                                        cap i52 = bnhVar.i();
                                                        z = true;
                                                        i52.e(1, str8);
                                                        try {
                                                            workDatabase_Impl2.an();
                                                            try {
                                                                i52.h();
                                                                workDatabase_Impl2.ah();
                                                                bnhVar.h(i52);
                                                                ggVar2.r(-256, str8);
                                                            } finally {
                                                                workDatabase_Impl2.am();
                                                            }
                                                        } catch (Throwable th2) {
                                                            bnhVar.h(i52);
                                                            throw th2;
                                                        }
                                                    } else {
                                                        z = false;
                                                    }
                                                    return Boolean.valueOf(z);
                                            }
                                        }
                                    });
                                    bff.e(ai, "workDatabase.runInTransa…e\n            }\n        )");
                                    if (((Boolean) ai).booleanValue() && !fywVar.ac()) {
                                        bxc bxcVar = (bxc) gkrVar.f18323c;
                                        bff.e(bxcVar, "workTaskExecutor.getMainThreadExecutor()");
                                        cpk cc = ffb.cc(bxcVar);
                                        dvo dvoVar = new dvo(dlyVar2, b2, dcrVar, null);
                                        gnwVar2.L$0 = dlyVar2;
                                        gnwVar2.L$1 = workerParameters;
                                        gnwVar2.label = 1;
                                        obj = baf.an(cc, dvoVar, gnwVar2);
                                        cxr cxrVar3 = cxrVar;
                                        if (obj == cxrVar3) {
                                            return cxrVar3;
                                        }
                                    }
                                    return new cmt();
                                } catch (Throwable unused) {
                                    String str7 = bbv.f11244a;
                                    cyl.f().i(str7, "Could not create Worker " + str4);
                                    return new eme();
                                }
                            }
                            frg.a(hashCode, baf.y(str3));
                        }
                        cxrVar = cxrVar2;
                        final int i322 = 0;
                        bool = (Boolean) workDatabase.ai(new Callable(dlyVar2) { // from class: g.gmx

                            /* renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ dly f18426b;

                            {
                                this.f18426b = dlyVar2;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                boolean z;
                                int i42 = i322;
                                dly dlyVar3 = this.f18426b;
                                switch (i42) {
                                    case 0:
                                        fkj fkjVar2 = dlyVar3.f14408g;
                                        gys gysVar = fkjVar2.q;
                                        gys gysVar2 = gys.ENQUEUED;
                                        if (gysVar != gysVar2) {
                                            String str62 = bbv.f11244a;
                                            cyl.f().getClass();
                                            return Boolean.TRUE;
                                        }
                                        if (fkjVar2.z() || (fkjVar2.q == gysVar2 && fkjVar2.f16927b > 0)) {
                                            dlyVar3.n.getClass();
                                            if (System.currentTimeMillis() < fkjVar2.aa()) {
                                                cyl f2 = cyl.f();
                                                String str72 = bbv.f11244a;
                                                f2.getClass();
                                                return Boolean.TRUE;
                                            }
                                        }
                                        return Boolean.FALSE;
                                    default:
                                        gg ggVar2 = dlyVar3.l;
                                        String str8 = dlyVar3.m;
                                        if (ggVar2.ad(str8) == gys.ENQUEUED) {
                                            ggVar2.s(gys.RUNNING, str8);
                                            WorkDatabase_Impl workDatabase_Impl2 = ggVar2.h;
                                            workDatabase_Impl2.al();
                                            bnh bnhVar = ggVar2.m;
                                            cap i52 = bnhVar.i();
                                            z = true;
                                            i52.e(1, str8);
                                            try {
                                                workDatabase_Impl2.an();
                                                try {
                                                    i52.h();
                                                    workDatabase_Impl2.ah();
                                                    bnhVar.h(i52);
                                                    ggVar2.r(-256, str8);
                                                } finally {
                                                    workDatabase_Impl2.am();
                                                }
                                            } catch (Throwable th2) {
                                                bnhVar.h(i52);
                                                throw th2;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        return Boolean.valueOf(z);
                                }
                            }
                        });
                        bff.e(bool, "shouldExit");
                        if (bool.booleanValue()) {
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        dlyVar2 = (dly) gnwVar.L$0;
                        eg.k(obj);
                    }
                    dea deaVar = (dea) obj;
                    bff.e(deaVar, ekq.EXTRA_PERMISSION_RESULT);
                    return new fcv(deaVar);
                }
            }
            if (i != 0) {
            }
            dea deaVar2 = (dea) obj;
            bff.e(deaVar2, ekq.EXTRA_PERMISSION_RESULT);
            return new fcv(deaVar2);
        } catch (CancellationException e5) {
            String str8 = bbv.f11244a;
            cyl f2 = cyl.f();
            String str9 = dlyVar2.i;
            f2.getClass();
            throw e5;
        } catch (Throwable th2) {
            cyl.f().j(bbv.f11244a, awf.ad(new StringBuilder(), dlyVar2.i, " failed because it threw an exception/error"), th2);
            return new eme();
        }
        gnwVar = new gnw(dlyVar2, wVar);
        Object obj2 = gnwVar.result;
        cxr cxrVar22 = cxr.COROUTINE_SUSPENDED;
        i = gnwVar.label;
    }

    public final void p(dea deaVar) {
        bff.p(deaVar, ekq.EXTRA_PERMISSION_RESULT);
        String str = this.m;
        ArrayList d2 = grj.d(str);
        while (true) {
            boolean isEmpty = d2.isEmpty();
            gg ggVar = this.l;
            if (isEmpty) {
                dwa dwaVar = ((bhr) deaVar).f11601a;
                bff.e(dwaVar, "failure.outputData");
                ggVar.q(this.f14408g.j, str);
                ggVar.y(str, dwaVar);
                return;
            }
            String str2 = (String) eko.b(d2);
            if (ggVar.ad(str2) != gys.CANCELLED) {
                ggVar.s(gys.FAILED, str2);
            }
            d2.addAll(this.f14403b.r(str2));
        }
    }

    public final void q(int i) {
        gys gysVar = gys.ENQUEUED;
        gg ggVar = this.l;
        String str = this.m;
        ggVar.s(gysVar, str);
        this.n.getClass();
        ggVar.u(System.currentTimeMillis(), str);
        ggVar.q(this.f14408g.j, str);
        ggVar.ab(-1L, str);
        ggVar.r(i, str);
    }

    public final void r() {
        this.n.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        gg ggVar = this.l;
        String str = this.m;
        ggVar.u(currentTimeMillis, str);
        ggVar.s(gys.ENQUEUED, str);
        WorkDatabase_Impl workDatabase_Impl = ggVar.h;
        workDatabase_Impl.al();
        bnh bnhVar = ggVar.f18068b;
        cap i = bnhVar.i();
        i.e(1, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
                bnhVar.h(i);
                ggVar.q(this.f14408g.j, str);
                workDatabase_Impl.al();
                bnh bnhVar2 = ggVar.o;
                cap i2 = bnhVar2.i();
                i2.e(1, str);
                try {
                    workDatabase_Impl.an();
                    try {
                        i2.h();
                        workDatabase_Impl.ah();
                        bnhVar2.h(i2);
                        ggVar.ab(-1L, str);
                    } finally {
                    }
                } catch (Throwable th) {
                    bnhVar2.h(i2);
                    throw th;
                }
            } finally {
            }
        } catch (Throwable th2) {
            bnhVar.h(i);
            throw th2;
        }
    }
}

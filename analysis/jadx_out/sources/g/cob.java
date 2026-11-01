package g;

import android.database.Cursor;
import androidx.work.impl.WorkDatabase_Impl;
import j$.util.Objects;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class cob extends avu implements bto {
    int label;
    final /* synthetic */ dly this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cob(dly dlyVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = dlyVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        final adb emeVar;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                eg.k(obj);
                dly dlyVar = this.this$0;
                fhq fhqVar = dlyVar.f14404c;
                cyq cyqVar = new cyq(dlyVar, null);
                this.label = 1;
                obj = baf.an(fhqVar, cyqVar, this);
                if (obj == cxrVar) {
                    return cxrVar;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eg.k(obj);
            }
            emeVar = (adb) obj;
        } catch (gfr e2) {
            emeVar = new cmt(e2.a());
        } catch (CancellationException unused) {
            emeVar = new eme();
        } catch (Throwable th) {
            cyl.f().j(bbv.f11244a, "Unexpected error in WorkerWrapper", th);
            emeVar = new eme();
        }
        final dly dlyVar2 = this.this$0;
        Object ai = dlyVar2.j.ai(new Callable() { // from class: g.gwd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                adb adbVar = adb.this;
                boolean z = adbVar instanceof fcv;
                dly dlyVar3 = dlyVar2;
                boolean z2 = true;
                boolean z3 = false;
                if (!z) {
                    if (adbVar instanceof eme) {
                        dlyVar3.p(((eme) adbVar).f15792a);
                        return Boolean.valueOf(z3);
                    }
                    if (!(adbVar instanceof cmt)) {
                        throw new dwb();
                    }
                    int i2 = ((cmt) adbVar).f13140a;
                    gg ggVar = dlyVar3.l;
                    String str = dlyVar3.m;
                    gys ad = ggVar.ad(str);
                    if (ad == null || ad.b()) {
                        String str2 = bbv.f11244a;
                        cyl f2 = cyl.f();
                        Objects.toString(ad);
                        f2.getClass();
                        z2 = false;
                        z3 = z2;
                        return Boolean.valueOf(z3);
                    }
                    String str3 = bbv.f11244a;
                    cyl f3 = cyl.f();
                    ad.toString();
                    f3.getClass();
                    ggVar.s(gys.ENQUEUED, str);
                    ggVar.r(i2, str);
                    ggVar.ab(-1L, str);
                    z3 = z2;
                    return Boolean.valueOf(z3);
                }
                dea deaVar = ((fcv) adbVar).f16579a;
                gg ggVar2 = dlyVar3.l;
                String str4 = dlyVar3.m;
                gys ad2 = ggVar2.ad(str4);
                dlyVar3.j.f().aa(str4);
                if (ad2 != null) {
                    if (ad2 == gys.RUNNING) {
                        fkj fkjVar = dlyVar3.f14408g;
                        if (deaVar instanceof aif) {
                            String str5 = bbv.f11244a;
                            cyl.f().getClass();
                            if (fkjVar.z()) {
                                dlyVar3.r();
                            } else {
                                ggVar2.s(gys.SUCCEEDED, str4);
                                dwa dwaVar = ((aif) deaVar).f10258a;
                                bff.e(dwaVar, "success.outputData");
                                ggVar2.y(str4, dwaVar);
                                dlyVar3.n.getClass();
                                long currentTimeMillis = System.currentTimeMillis();
                                gtb gtbVar = dlyVar3.f14403b;
                                Iterator it = gtbVar.r(str4).iterator();
                                while (it.hasNext()) {
                                    String str6 = (String) it.next();
                                    if (ggVar2.ad(str6) == gys.BLOCKED) {
                                        fcg o = fcg.o(1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                                        o.e(1, str6);
                                        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) gtbVar.f18714d;
                                        workDatabase_Impl.al();
                                        Cursor ag = workDatabase_Impl.ag(o);
                                        try {
                                            if (ag.moveToFirst() && ag.getInt(0) != 0) {
                                                String str7 = bbv.f11244a;
                                                cyl.f().getClass();
                                                ggVar2.s(gys.ENQUEUED, str6);
                                                ggVar2.u(currentTimeMillis, str6);
                                            }
                                        } finally {
                                            ag.close();
                                            o.p();
                                        }
                                    }
                                }
                            }
                        } else {
                            if (deaVar instanceof evc) {
                                String str8 = bbv.f11244a;
                                cyl.f().getClass();
                                dlyVar3.q(-256);
                                z3 = z2;
                                return Boolean.valueOf(z3);
                            }
                            String str9 = bbv.f11244a;
                            cyl.f().getClass();
                            if (fkjVar.z()) {
                                dlyVar3.r();
                            } else {
                                dlyVar3.p(deaVar);
                            }
                        }
                    } else if (!ad2.b()) {
                        dlyVar3.q(-512);
                        z3 = z2;
                        return Boolean.valueOf(z3);
                    }
                }
                z2 = false;
                z3 = z2;
                return Boolean.valueOf(z3);
            }
        });
        bff.e(ai, "workDatabase.runInTransa…          }\n            )");
        return ai;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((cob) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new cob(this.this$0, bdpVar);
    }
}

package g;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class zu extends axr implements cvw {
    final /* synthetic */ String $name = "opu";
    final /* synthetic */ fxb $this_enqueueUniquelyNamedPeriodic;
    final /* synthetic */ dze $workRequest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zu(fxb fxbVar, dqj dqjVar) {
        super(0);
        this.$this_enqueueUniquelyNamedPeriodic = fxbVar;
        this.$workRequest = dqjVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        dze dzeVar = this.$workRequest;
        fxb fxbVar = this.$this_enqueueUniquelyNamedPeriodic;
        fxa fxaVar = new fxa(dzeVar, fxbVar, this.$name);
        gg a2 = fxbVar.az.a();
        ArrayList z = a2.z(this.$name);
        if (z.size() > 1) {
            throw new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.");
        }
        apn apnVar = (apn) (z.isEmpty() ? null : z.get(0));
        if (apnVar == null) {
            fxaVar.invoke();
        } else {
            String str = apnVar.f10631a;
            fkj p = a2.p(str);
            if (p == null) {
                throw new IllegalStateException(awf.ad(awf.p("WorkSpec with ", str, ", that matches a name \""), this.$name, "\", wasn't found"));
            }
            if (!p.z()) {
                throw new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
            }
            if (apnVar.f10632b == gys.CANCELLED) {
                a2.w(str);
                fxaVar.invoke();
            } else {
                final fkj y = fkj.y(this.$workRequest.f15118b, apnVar.f10631a, null, null, null, 0, 0L, 0, 0, 0L, 0, 16777214);
                egu eguVar = this.$this_enqueueUniquelyNamedPeriodic.ax;
                bff.e(eguVar, "processor");
                final WorkDatabase workDatabase = this.$this_enqueueUniquelyNamedPeriodic.az;
                bff.e(workDatabase, "workDatabase");
                flk flkVar = this.$this_enqueueUniquelyNamedPeriodic.aw;
                bff.e(flkVar, "configuration");
                final List list = this.$this_enqueueUniquelyNamedPeriodic.ay;
                bff.e(list, "schedulers");
                final Set set = this.$workRequest.f15119c;
                final String str2 = y.h;
                final fkj p2 = workDatabase.a().p(str2);
                if (p2 == null) {
                    throw new IllegalArgumentException(tn.ad("Worker with ", str2, " doesn't exist"));
                }
                if (!p2.q.b()) {
                    if (p2.z() ^ y.z()) {
                        StringBuilder sb = new StringBuilder("Can't update ");
                        sb.append(p2.z() ? "Periodic" : "OneTime");
                        sb.append(" Worker to ");
                        throw new UnsupportedOperationException(awf.ad(sb, y.z() ? "Periodic" : "OneTime", " Worker. Update operation must preserve worker's type."));
                    }
                    final boolean q = eguVar.q(str2);
                    if (!q) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ((giw) it.next()).q(str2);
                        }
                    }
                    workDatabase.ak(new Runnable() { // from class: g.hal
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkDatabase workDatabase2 = WorkDatabase.this;
                            gg a3 = workDatabase2.a();
                            dzh b2 = workDatabase2.b();
                            fkj fkjVar = p2;
                            gys gysVar = fkjVar.q;
                            int i = fkjVar.f16927b;
                            long j = fkjVar.f16929d;
                            int i2 = fkjVar.t + 1;
                            int i3 = fkjVar.m;
                            long j2 = fkjVar.i;
                            int i4 = fkjVar.j;
                            fkj fkjVar2 = y;
                            fkj y2 = fkj.y(fkjVar2, null, gysVar, null, null, i, j, i3, i2, j2, i4, 12835837);
                            if (fkjVar2.j == 1) {
                                y2.i = fkjVar2.i;
                                y2.j++;
                            }
                            fkj am = cro.am(list, y2);
                            WorkDatabase_Impl workDatabase_Impl = a3.h;
                            workDatabase_Impl.al();
                            workDatabase_Impl.an();
                            try {
                                bnh bnhVar = a3.n;
                                cap i5 = bnhVar.i();
                                try {
                                    bnhVar.b(i5, am);
                                    i5.h();
                                    bnhVar.h(i5);
                                    workDatabase_Impl.ah();
                                    workDatabase_Impl.am();
                                    WorkDatabase_Impl workDatabase_Impl2 = (WorkDatabase_Impl) b2.i;
                                    workDatabase_Impl2.al();
                                    bnh bnhVar2 = (bnh) b2.f15122g;
                                    cap i6 = bnhVar2.i();
                                    String str3 = str2;
                                    i6.e(1, str3);
                                    try {
                                        workDatabase_Impl2.an();
                                        try {
                                            i6.h();
                                            workDatabase_Impl2.ah();
                                            bnhVar2.h(i6);
                                            b2.ah(str3, set);
                                            if (q) {
                                                return;
                                            }
                                            a3.ab(-1L, str3);
                                            workDatabase2.f().aa(str3);
                                        } finally {
                                            workDatabase_Impl2.am();
                                        }
                                    } catch (Throwable th) {
                                        bnhVar2.h(i6);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    bnhVar.h(i5);
                                    throw th2;
                                }
                            } catch (Throwable th3) {
                                workDatabase_Impl.am();
                                throw th3;
                            }
                        }
                    });
                    if (!q) {
                        fje.c(flkVar, workDatabase, list);
                    }
                }
            }
        }
        return dgi.f14134a;
    }
}

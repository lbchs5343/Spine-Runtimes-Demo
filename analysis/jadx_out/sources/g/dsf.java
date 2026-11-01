package g;

import android.app.job.JobParameters;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final /* synthetic */ class dsf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f14701a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14702b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14703c;

    public /* synthetic */ dsf(Object obj, int i, Object obj2) {
        this.f14702b = i;
        this.f14703c = obj;
        this.f14701a = obj2;
    }

    public /* synthetic */ dsf(Runnable runnable, aqv aqvVar) {
        this.f14702b = 16;
        this.f14701a = runnable;
        this.f14703c = aqvVar;
    }

    private final void d() {
        fjb fjbVar = (fjb) this.f14703c;
        boa boaVar = (boa) this.f14701a;
        synchronized (fjbVar) {
            try {
                if (fjbVar.f16880b == null) {
                    fjbVar.f16879a.add(boaVar);
                } else {
                    fjbVar.f16880b.add(boaVar.get());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void e() {
        egu eguVar = (egu) this.f14703c;
        gxm gxmVar = (gxm) this.f14701a;
        synchronized (eguVar.f15515c) {
            try {
                Iterator it = eguVar.j.iterator();
                while (it.hasNext()) {
                    ((eiv) it.next()).h(gxmVar, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        kf kfVar;
        anf anfVar = null;
        int i = 1;
        switch (this.f14702b) {
            case 0:
                aqv aqvVar = (aqv) this.f14703c;
                Runnable runnable = (Runnable) this.f14701a;
                aqvVar.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                }
            case 1:
                fxb fxbVar = (fxb) this.f14703c;
                String uuid = ((UUID) this.f14701a).toString();
                bff.e(uuid, "id.toString()");
                eyt.be(fxbVar, uuid);
                return;
            case 2:
                brw brwVar = (brw) this.f14703c;
                boa boaVar = (boa) this.f14701a;
                if (brwVar.f12098d != brw.f12095a) {
                    throw new IllegalStateException("provide() can be called only once.");
                }
                synchronized (brwVar) {
                    kfVar = brwVar.f12097c;
                    brwVar.f12097c = null;
                    brwVar.f12098d = boaVar;
                }
                kfVar.getClass();
                return;
            case 3:
                d();
                return;
            case 4:
                dxg.e((chf) this.f14703c, (hed) this.f14701a);
                return;
            case 5:
                List list = (List) this.f14703c;
                cmh cmhVar = (cmh) this.f14701a;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((edv) it.next()).c(cmhVar.f13118g);
                }
                return;
            case 6:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f14703c;
                JobParameters jobParameters = (JobParameters) this.f14701a;
                int i2 = JobInfoSchedulerService.f3918a;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 7:
                cro.s((fpl) this.f14703c, (View) this.f14701a);
                return;
            case 8:
                e();
                return;
            case 9:
                ((dzm) this.f14703c).d((Typeface) this.f14701a);
                return;
            case 10:
                ark arkVar = (ark) this.f14703c;
                deg degVar = (deg) this.f14701a;
                ArrayList arrayList = arkVar.f10713b;
                if (!arkVar.w()) {
                    degVar.d("permission_required", null);
                    return;
                }
                if (arkVar.ab()) {
                    degVar.onSuccess(Boolean.TRUE);
                    return;
                }
                arrayList.add(degVar);
                if (arrayList.size() > 1) {
                    return;
                }
                arkVar.m.post(new euq(arkVar, new gnl(new bco(2), new csg(i, arkVar)), i));
                return;
            case 11:
                ark arkVar2 = (ark) this.f14703c;
                hbl hblVar = (hbl) this.f14701a;
                ArrayList arrayList2 = arkVar2.h;
                if (!arkVar2.r()) {
                    hblVar.b(false);
                    return;
                }
                if (arkVar2.w()) {
                    hblVar.b(true);
                    return;
                }
                arrayList2.add(hblVar);
                if (arrayList2.size() > 1) {
                    return;
                }
                arkVar2.s();
                try {
                    if (gwn.s()) {
                        arkVar2.t(false);
                        return;
                    }
                    try {
                        ((bvh) gwn.w()).b();
                        return;
                    } catch (RemoteException e2) {
                        throw new RuntimeException(e2);
                    }
                } catch (RuntimeException unused) {
                    arkVar2.t(false);
                    return;
                }
            case 12:
                aco acoVar = (aco) this.f14703c;
                IBinder iBinder = (IBinder) this.f14701a;
                if (((ark) acoVar.f9979b).f10714c && ((ark) acoVar.f9979b).w()) {
                    ark arkVar3 = (ark) acoVar.f9979b;
                    arkVar3.m.removeCallbacks(arkVar3.f10716e);
                    ((ark) acoVar.f9979b).f10714c = false;
                    ark arkVar4 = (ark) acoVar.f9979b;
                    int i3 = ejv.o;
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("b.e.f");
                        if (queryLocalInterface == null || !(queryLocalInterface instanceof anf)) {
                            sj sjVar = new sj();
                            sjVar.f19976a = iBinder;
                            anfVar = sjVar;
                        } else {
                            anfVar = (anf) queryLocalInterface;
                        }
                    }
                    arkVar4.n = anfVar;
                    ArrayList arrayList3 = new ArrayList(((ark) acoVar.f9979b).j);
                    ((ark) acoVar.f9979b).j.clear();
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        gnl gnlVar = (gnl) it2.next();
                        ark arkVar5 = (ark) acoVar.f9979b;
                        arkVar5.v(gnlVar, arkVar5.n);
                    }
                    ((ark) acoVar.f9979b).s();
                    return;
                }
                return;
            case 13:
                fsr fsrVar = (fsr) this.f14703c;
                IBinder iBinder2 = (IBinder) this.f14701a;
                Iterator it3 = fsrVar.f17348e.iterator();
                while (it3.hasNext()) {
                    ((ServiceConnection) it3.next()).onServiceConnected(fsrVar.f17346b, iBinder2);
                }
                return;
            case 14:
                ((fuo) this.f14703c).j((Runnable) this.f14701a);
                return;
            case 15:
                dkh dkhVar = (dkh) this.f14703c;
                ((flz) dkhVar.f14307e).b((aci) this.f14701a, 3);
                return;
            default:
                Runnable runnable2 = (Runnable) this.f14701a;
                aqv aqvVar2 = (aqv) this.f14703c;
                bff.p(runnable2, "$command");
                bff.p(aqvVar2, "this$0");
                try {
                    runnable2.run();
                    return;
                } finally {
                }
        }
    }
}

package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import g.aus;
import g.azc;
import g.baf;
import g.bff;
import g.bhr;
import g.bsc;
import g.bxc;
import g.cbp;
import g.cg;
import g.cpk;
import g.cxr;
import g.cyl;
import g.dea;
import g.dzm;
import g.eg;
import g.enj;
import g.evc;
import g.ffb;
import g.fkj;
import g.fxb;
import g.fzn;
import g.gg;
import g.goy;
import g.gsd;
import g.haa;
import g.vn;
import g.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {

    /* renamed from: d, reason: collision with root package name */
    public final WorkerParameters f350d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        bff.p(context, "appContext");
        bff.p(workerParameters, "workerParameters");
        this.f350d = workerParameters;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object e(ConstraintTrackingWorker constraintTrackingWorker, cg cgVar, vn vnVar, fkj fkjVar, w wVar) {
        a aVar;
        int i;
        constraintTrackingWorker.getClass();
        if (wVar instanceof a) {
            aVar = (a) wVar;
            int i2 = aVar.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aVar.label = i2 - Integer.MIN_VALUE;
                Object obj = aVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = aVar.label;
                if (i != 0) {
                    eg.k(obj);
                    aus ausVar = new aus(cgVar, vnVar, fkjVar, null);
                    aVar.label = 1;
                    azc azcVar = new azc(aVar, aVar.getContext());
                    obj = dzm.ad(azcVar, azcVar, ausVar);
                    if (obj == cxrVar) {
                        return cxrVar;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj);
                }
                bff.e(obj, "delegate: ListenableWork….cancel()\n        }\n    }");
                return obj;
            }
        }
        aVar = new a(constraintTrackingWorker, wVar);
        Object obj2 = aVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = aVar.label;
        if (i != 0) {
        }
        bff.e(obj2, "delegate: ListenableWork….cancel()\n        }\n    }");
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object f(ConstraintTrackingWorker constraintTrackingWorker, w wVar) {
        b bVar;
        int i;
        cg b2;
        cpk cc;
        CancellationException cancellationException;
        int a2;
        WorkerParameters workerParameters = constraintTrackingWorker.f350d;
        try {
            if (wVar instanceof b) {
                bVar = (b) wVar;
                int i2 = bVar.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    bVar.label = i2 - Integer.MIN_VALUE;
                    Object obj = bVar.result;
                    cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                    i = bVar.label;
                    if (i != 0) {
                        eg.k(obj);
                        String d2 = constraintTrackingWorker.getInputData().d("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                        if (d2 == null || d2.length() == 0) {
                            cyl.f().i(goy.f18524a, "No worker to delegate to.");
                            return new bhr();
                        }
                        fxb be = fxb.be(constraintTrackingWorker.getApplicationContext());
                        bff.e(be, "getInstance(applicationContext)");
                        gg a3 = be.az.a();
                        String uuid = constraintTrackingWorker.getId().toString();
                        bff.e(uuid, "id.toString()");
                        fkj p = a3.p(uuid);
                        if (p == null) {
                            return new bhr();
                        }
                        fzn fznVar = be.bd;
                        bff.e(fznVar, "workManagerImpl.trackers");
                        vn vnVar = new vn(fznVar);
                        if (!vnVar.b(p)) {
                            String str = goy.f18524a;
                            cyl.f().getClass();
                            return new evc();
                        }
                        String str2 = goy.f18524a;
                        cyl.f().getClass();
                        try {
                            gsd workerFactory = constraintTrackingWorker.getWorkerFactory();
                            Context applicationContext = constraintTrackingWorker.getApplicationContext();
                            bff.e(applicationContext, "applicationContext");
                            b2 = workerFactory.b(applicationContext, d2, workerParameters);
                            bxc bxcVar = (bxc) workerParameters.f330a.f18323c;
                            bff.e(bxcVar, "workerParameters.taskExecutor.mainThreadExecutor");
                            try {
                                cc = ffb.cc(bxcVar);
                            } catch (CancellationException e2) {
                                e = e2;
                                cancellationException = e;
                                if (!constraintTrackingWorker.isStopped() || (cancellationException instanceof bsc)) {
                                    if (Build.VERSION.SDK_INT >= 31) {
                                        a2 = -512;
                                    } else if (constraintTrackingWorker.isStopped()) {
                                        a2 = constraintTrackingWorker.getStopReason();
                                    } else {
                                        if (!(cancellationException instanceof bsc)) {
                                            throw new IllegalStateException("Unreachable");
                                        }
                                        a2 = ((bsc) cancellationException).a();
                                    }
                                    b2.stop(a2);
                                }
                                if (cancellationException instanceof bsc) {
                                    throw cancellationException;
                                }
                                return new evc();
                            }
                            try {
                                cbp cbpVar = new cbp(constraintTrackingWorker, b2, vnVar, p, null);
                                bVar.L$0 = constraintTrackingWorker;
                                bVar.L$1 = b2;
                                bVar.label = 1;
                                obj = baf.an(cc, cbpVar, bVar);
                                if (obj == cxrVar) {
                                    return cxrVar;
                                }
                                constraintTrackingWorker = constraintTrackingWorker;
                            } catch (CancellationException e3) {
                                cancellationException = e3;
                                constraintTrackingWorker = constraintTrackingWorker;
                                if (!constraintTrackingWorker.isStopped()) {
                                }
                                if (Build.VERSION.SDK_INT >= 31) {
                                }
                                b2.stop(a2);
                                if (cancellationException instanceof bsc) {
                                }
                            }
                        } catch (Throwable unused) {
                            String str3 = goy.f18524a;
                            cyl.f().getClass();
                            be.aw.getClass();
                            return new bhr();
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        cg cgVar = (cg) bVar.L$1;
                        ConstraintTrackingWorker constraintTrackingWorker2 = (ConstraintTrackingWorker) bVar.L$0;
                        try {
                            eg.k(obj);
                            b2 = cgVar;
                            constraintTrackingWorker = constraintTrackingWorker2;
                        } catch (CancellationException e4) {
                            cancellationException = e4;
                            b2 = cgVar;
                            constraintTrackingWorker = constraintTrackingWorker2;
                            if (!constraintTrackingWorker.isStopped()) {
                            }
                            if (Build.VERSION.SDK_INT >= 31) {
                            }
                            b2.stop(a2);
                            if (cancellationException instanceof bsc) {
                            }
                        }
                    }
                    return (dea) obj;
                }
            }
            return (dea) obj;
        } catch (CancellationException e5) {
            e = e5;
            cancellationException = e;
            if (!constraintTrackingWorker.isStopped()) {
            }
            if (Build.VERSION.SDK_INT >= 31) {
            }
            b2.stop(a2);
            if (cancellationException instanceof bsc) {
            }
        }
        bVar = new b(constraintTrackingWorker, wVar);
        Object obj2 = bVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = bVar.label;
        if (i != 0) {
        }
    }

    @Override // androidx.work.CoroutineWorker
    public final Object c(enj enjVar) {
        Executor backgroundExecutor = getBackgroundExecutor();
        bff.e(backgroundExecutor, "backgroundExecutor");
        return baf.an(ffb.cc(backgroundExecutor), new haa(this, null), enjVar);
    }
}

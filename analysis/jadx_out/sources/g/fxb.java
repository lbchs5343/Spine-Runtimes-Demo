package g;

import android.content.Context;
import android.os.Build;
import android.os.Trace;
import androidx.work.impl.WorkDatabase;
import cn.trinea.developertools.MyApplication;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class fxb extends awt {
    public static fxb at;
    public static final Object au;
    public static fxb av;
    public final flk aw;
    public final egu ax;
    public final List ay;
    public final WorkDatabase az;
    public final evf ba;
    public final ccc bb;
    public final Context bc;
    public final fzn bd;

    static {
        cyl.g("WorkManagerImpl");
        av = null;
        at = null;
        au = new Object();
    }

    public fxb(Context context, final flk flkVar, ccc cccVar, final WorkDatabase workDatabase, final List list, egu eguVar, fzn fznVar) {
        boolean isDeviceProtectedStorage;
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 24) {
            isDeviceProtectedStorage = applicationContext.isDeviceProtectedStorage();
            if (isDeviceProtectedStorage) {
                throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
            }
        }
        cyl cylVar = new cyl(flkVar.f16979a);
        synchronized (cyl.f13764d) {
            try {
                if (cyl.f13763c == null) {
                    cyl.f13763c = cylVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.bc = applicationContext;
        this.bb = cccVar;
        this.az = workDatabase;
        this.ax = eguVar;
        this.bd = fznVar;
        this.aw = flkVar;
        this.ay = list;
        gkr gkrVar = (gkr) cccVar;
        cpk cpkVar = (cpk) gkrVar.f18321a;
        bff.e(cpkVar, "taskExecutor.taskCoroutineDispatcher");
        dlg q = aky.q(cpkVar);
        this.ba = new evf(15, workDatabase);
        final aqv aqvVar = (aqv) gkrVar.f18325e;
        int i = fje.f16884a;
        eguVar.p(new eiv() { // from class: g.fkv
            @Override // g.eiv
            public final void h(gxm gxmVar, boolean z) {
                aqvVar.execute(new akt(list, gxmVar, flkVar, workDatabase, 0));
            }
        });
        gkrVar.s(new ejk(applicationContext, this));
        String str = ciu.f12950a;
        if (bz.a(applicationContext, flkVar)) {
            gg a2 = workDatabase.a();
            a2.getClass();
            baf.al(q, null, null, new gwq(new fdf(gs.aq(new dvl(new fqc(new edl(new fmr(false, a2.h, new String[]{"workspec"}, new fal(a2, 0, fcg.o(0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1")), null)), new gdh(4, null)), cgq.f12850a, 0, bqt.DROP_OLDEST)), new zr(applicationContext, null)), null), 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static fxb be(Context context) {
        fxb bf;
        synchronized (au) {
            try {
                bf = bf();
                if (bf == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof dfn)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    ((MyApplication) ((dfn) applicationContext)).getClass();
                    bg(applicationContext, new flk(new bmr(27)));
                    bf = be(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bf;
    }

    public static fxb bf() {
        synchronized (au) {
            try {
                fxb fxbVar = av;
                if (fxbVar != null) {
                    return fxbVar;
                }
                return at;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        r3 = r3.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        if (g.fxb.at != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        g.fxb.at = g.afo.ba(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        g.fxb.av = g.fxb.at;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void bg(Context context, flk flkVar) {
        synchronized (au) {
            try {
                fxb fxbVar = av;
                if (fxbVar != null && at != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
            } finally {
            }
        }
    }

    public final gev bh(bbt bbtVar, dqj dqjVar) {
        if (bbtVar != bbt.UPDATE) {
            return new pc(this, "opu", bbtVar == bbt.KEEP ? dne.KEEP : dne.REPLACE, Collections.singletonList(dqjVar), 0).j();
        }
        bff.p(dqjVar, "workRequest");
        ao aoVar = this.aw.h;
        String concat = "enqueueUniquePeriodic_".concat("opu");
        aqv aqvVar = (aqv) ((gkr) this.bb).f18325e;
        bff.e(aqvVar, "workTaskExecutor.serialTaskExecutor");
        return afo.ag(aoVar, concat, aqvVar, new zu(this, dqjVar));
    }

    public final void bi() {
        ao aoVar = this.aw.h;
        hv hvVar = new hv(2, this);
        bff.p(aoVar, "<this>");
        boolean am = baf.am();
        if (am) {
            try {
                Trace.beginSection(baf.y("ReschedulingWork"));
            } finally {
                if (am) {
                    Trace.endSection();
                }
            }
        }
        hvVar.invoke();
    }

    public final gev bj(String str) {
        ao aoVar = this.aw.h;
        String concat = "CancelWorkByTag_".concat(str);
        aqv aqvVar = (aqv) ((gkr) this.bb).f18325e;
        bff.e(aqvVar, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        return afo.ag(aoVar, concat, aqvVar, new ftt(this, str));
    }

    public final void bk() {
        synchronized (au) {
        }
    }
}

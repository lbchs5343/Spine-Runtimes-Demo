package g;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class hv implements cvw {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19391a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19392b;

    public /* synthetic */ hv(int i, Object obj) {
        this.f19391a = i;
        this.f19392b = obj;
    }

    @Override // g.cvw
    public final Object invoke() {
        int i = this.f19391a;
        dgi dgiVar = dgi.f14134a;
        Object obj = this.f19392b;
        switch (i) {
            case 0:
                ((ComponentActivity) obj).reportFullyDrawn();
                return null;
            case 1:
                pc pcVar = (pc) obj;
                pcVar.getClass();
                dna.b(pcVar);
                return dgiVar;
            default:
                fxb fxbVar = (fxb) obj;
                WorkDatabase workDatabase = fxbVar.az;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 23) {
                    Context context = fxbVar.bc;
                    String str = eyp.f16378a;
                    if (i2 >= 34) {
                        dlm.c(context).cancelAll();
                    }
                    JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                    ArrayList h = eyp.h(context, jobScheduler);
                    if (h != null && !h.isEmpty()) {
                        Iterator it = h.iterator();
                        while (it.hasNext()) {
                            eyp.i(jobScheduler, ((JobInfo) it.next()).getId());
                        }
                    }
                }
                gg a2 = workDatabase.a();
                WorkDatabase_Impl workDatabase_Impl = a2.h;
                workDatabase_Impl.al();
                bnh bnhVar = a2.f18070d;
                cap i3 = bnhVar.i();
                try {
                    workDatabase_Impl.an();
                    try {
                        i3.h();
                        workDatabase_Impl.ah();
                        bnhVar.h(i3);
                        fje.c(fxbVar.aw, workDatabase, fxbVar.ay);
                        return dgiVar;
                    } finally {
                        workDatabase_Impl.am();
                    }
                } catch (Throwable th) {
                    bnhVar.h(i3);
                    throw th;
                }
        }
    }
}

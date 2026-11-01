package androidx.work.impl.workers;

import android.content.Context;
import android.database.Cursor;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ahc;
import g.aif;
import g.ay;
import g.bfc;
import g.bff;
import g.bho;
import g.cyl;
import g.dea;
import g.dnx;
import g.duw;
import g.dwa;
import g.dzh;
import g.eg;
import g.eww;
import g.fcg;
import g.ffr;
import g.fkj;
import g.fxb;
import g.gg;
import g.gys;
import g.im;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        bff.p(context, "context");
        bff.p(workerParameters, "parameters");
    }

    @Override // androidx.work.Worker
    public final dea doWork() {
        fcg fcgVar;
        int l;
        int l2;
        int l3;
        int l4;
        int l5;
        int l6;
        int l7;
        int l8;
        int l9;
        int l10;
        int l11;
        duw duwVar;
        ffr ffrVar;
        dzh dzhVar;
        fxb be = fxb.be(getApplicationContext());
        bff.e(be, "getInstance(applicationContext)");
        WorkDatabase workDatabase = be.az;
        bff.e(workDatabase, "workManager.workDatabase");
        gg a2 = workDatabase.a();
        ffr c2 = workDatabase.c();
        dzh b2 = workDatabase.b();
        duw g2 = workDatabase.g();
        be.aw.f16981c.getClass();
        long currentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L);
        a2.getClass();
        fcg o = fcg.o(1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
        o.f(1, currentTimeMillis);
        WorkDatabase_Impl workDatabase_Impl = a2.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            l = eg.l(ag, TTDownloadField.TT_ID);
            l2 = eg.l(ag, "state");
            l3 = eg.l(ag, "worker_class_name");
            l4 = eg.l(ag, "input_merger_class_name");
            l5 = eg.l(ag, "input");
            l6 = eg.l(ag, "output");
            l7 = eg.l(ag, "initial_delay");
            l8 = eg.l(ag, "interval_duration");
            l9 = eg.l(ag, "flex_duration");
            l10 = eg.l(ag, "run_attempt_count");
            l11 = eg.l(ag, "backoff_policy");
            fcgVar = o;
        } catch (Throwable th) {
            th = th;
            fcgVar = o;
        }
        try {
            int l12 = eg.l(ag, "backoff_delay_duration");
            int l13 = eg.l(ag, "last_enqueue_time");
            int l14 = eg.l(ag, "minimum_retention_duration");
            int l15 = eg.l(ag, "schedule_requested_at");
            int l16 = eg.l(ag, "run_in_foreground");
            int l17 = eg.l(ag, "out_of_quota_policy");
            int l18 = eg.l(ag, "period_count");
            int l19 = eg.l(ag, "generation");
            int l20 = eg.l(ag, "next_schedule_time_override");
            int l21 = eg.l(ag, "next_schedule_time_override_generation");
            int l22 = eg.l(ag, "stop_reason");
            int l23 = eg.l(ag, "trace_tag");
            int l24 = eg.l(ag, "required_network_type");
            int l25 = eg.l(ag, "required_network_request");
            int l26 = eg.l(ag, "requires_charging");
            int l27 = eg.l(ag, "requires_device_idle");
            int l28 = eg.l(ag, "requires_battery_not_low");
            int l29 = eg.l(ag, "requires_storage_not_low");
            int l30 = eg.l(ag, "trigger_content_update_delay");
            int l31 = eg.l(ag, "trigger_max_content_delay");
            int l32 = eg.l(ag, "content_uri_triggers");
            int i = l14;
            ArrayList arrayList = new ArrayList(ag.getCount());
            while (ag.moveToNext()) {
                String string = ag.getString(l);
                gys x = bfc.x(ag.getInt(l2));
                String string2 = ag.getString(l3);
                String string3 = ag.getString(l4);
                dwa c3 = dwa.c(ag.getBlob(l5));
                dwa c4 = dwa.c(ag.getBlob(l6));
                long j = ag.getLong(l7);
                long j2 = ag.getLong(l8);
                long j3 = ag.getLong(l9);
                int i2 = ag.getInt(l10);
                ay y = bfc.y(ag.getInt(l11));
                long j4 = ag.getLong(l12);
                long j5 = ag.getLong(l13);
                int i3 = i;
                long j6 = ag.getLong(i3);
                int i4 = l10;
                int i5 = l15;
                long j7 = ag.getLong(i5);
                l15 = i5;
                int i6 = l16;
                boolean z = ag.getInt(i6) != 0;
                l16 = i6;
                int i7 = l17;
                ahc h = bfc.h(ag.getInt(i7));
                l17 = i7;
                int i8 = l18;
                int i9 = ag.getInt(i8);
                l18 = i8;
                int i10 = l19;
                int i11 = ag.getInt(i10);
                l19 = i10;
                int i12 = l20;
                long j8 = ag.getLong(i12);
                l20 = i12;
                int i13 = l21;
                int i14 = ag.getInt(i13);
                l21 = i13;
                int i15 = l22;
                int i16 = ag.getInt(i15);
                l22 = i15;
                int i17 = l23;
                String string4 = ag.isNull(i17) ? null : ag.getString(i17);
                l23 = i17;
                int i18 = l24;
                dnx k = bfc.k(ag.getInt(i18));
                l24 = i18;
                int i19 = l25;
                im ai = bfc.ai(ag.getBlob(i19));
                l25 = i19;
                int i20 = l26;
                boolean z2 = ag.getInt(i20) != 0;
                l26 = i20;
                int i21 = l27;
                boolean z3 = ag.getInt(i21) != 0;
                l27 = i21;
                int i22 = l28;
                boolean z4 = ag.getInt(i22) != 0;
                l28 = i22;
                int i23 = l29;
                boolean z5 = ag.getInt(i23) != 0;
                l29 = i23;
                int i24 = l30;
                long j9 = ag.getLong(i24);
                l30 = i24;
                int i25 = l31;
                long j10 = ag.getLong(i25);
                l31 = i25;
                int i26 = l32;
                l32 = i26;
                arrayList.add(new fkj(string, x, string2, string3, c3, c4, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i26))), i2, y, j4, j5, j6, j7, z, h, i9, i11, j8, i14, i16, string4));
                l10 = i4;
                i = i3;
            }
            ag.close();
            fcgVar.p();
            ArrayList v = a2.v();
            ArrayList aa = a2.aa();
            if (arrayList.isEmpty()) {
                duwVar = g2;
                ffrVar = c2;
                dzhVar = b2;
            } else {
                cyl f2 = cyl.f();
                int i27 = eww.f16298a;
                f2.getClass();
                cyl f3 = cyl.f();
                duwVar = g2;
                ffrVar = c2;
                dzhVar = b2;
                eww.b(ffrVar, dzhVar, duwVar, arrayList);
                f3.getClass();
            }
            if (!v.isEmpty()) {
                cyl f4 = cyl.f();
                int i28 = eww.f16298a;
                f4.getClass();
                cyl f5 = cyl.f();
                eww.b(ffrVar, dzhVar, duwVar, v);
                f5.getClass();
            }
            if (!aa.isEmpty()) {
                cyl f6 = cyl.f();
                int i29 = eww.f16298a;
                f6.getClass();
                cyl f7 = cyl.f();
                eww.b(ffrVar, dzhVar, duwVar, aa);
                f7.getClass();
            }
            return new aif();
        } catch (Throwable th2) {
            th = th2;
            ag.close();
            fcgVar.p();
            throw th;
        }
    }
}

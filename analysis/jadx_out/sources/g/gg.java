package g;

import android.database.Cursor;
import androidx.work.impl.WorkDatabase_Impl;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class gg {

    /* renamed from: a, reason: collision with root package name */
    public final bnh f18067a;

    /* renamed from: b, reason: collision with root package name */
    public final bnh f18068b;

    /* renamed from: c, reason: collision with root package name */
    public final bnh f18069c;

    /* renamed from: d, reason: collision with root package name */
    public final bnh f18070d;

    /* renamed from: e, reason: collision with root package name */
    public final bnh f18071e;

    /* renamed from: f, reason: collision with root package name */
    public final bnh f18072f;

    /* renamed from: g, reason: collision with root package name */
    public final bnh f18073g;
    public final WorkDatabase_Impl h;
    public final bnh i;
    public final bnh j;
    public final bnh k;
    public final sw l;
    public final bnh m;
    public final bnh n;
    public final bnh o;

    public gg(WorkDatabase_Impl workDatabase_Impl) {
        this.h = workDatabase_Impl;
        this.l = new sw(workDatabase_Impl, 5);
        this.n = new bnh(workDatabase_Impl, 12);
        this.f18071e = new bnh(workDatabase_Impl, 13);
        this.f18073g = new bnh(workDatabase_Impl, 14);
        this.i = new bnh(workDatabase_Impl, 15);
        this.o = new bnh(workDatabase_Impl, 16);
        this.f18067a = new bnh(workDatabase_Impl, 17);
        this.k = new bnh(workDatabase_Impl, 18);
        this.m = new bnh(workDatabase_Impl, 19);
        this.f18068b = new bnh(workDatabase_Impl, 4);
        new bnh(workDatabase_Impl, 5);
        this.f18072f = new bnh(workDatabase_Impl, 6);
        this.j = new bnh(workDatabase_Impl, 7);
        this.f18070d = new bnh(workDatabase_Impl, 8);
        new bnh(workDatabase_Impl, 9);
        new bnh(workDatabase_Impl, 10);
        this.f18069c = new bnh(workDatabase_Impl, 11);
    }

    public final ArrayList aa() {
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
        int l12;
        int l13;
        fcg o = fcg.o(1, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        o.f(1, 200);
        WorkDatabase_Impl workDatabase_Impl = this.h;
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
            l12 = eg.l(ag, "backoff_delay_duration");
            l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
        } catch (Throwable th) {
            th = th;
            fcgVar = o;
        }
        try {
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
                dwa c2 = dwa.c(ag.getBlob(l5));
                dwa c3 = dwa.c(ag.getBlob(l6));
                long j = ag.getLong(l7);
                long j2 = ag.getLong(l8);
                long j3 = ag.getLong(l9);
                int i2 = ag.getInt(l10);
                ay y = bfc.y(ag.getInt(l11));
                long j4 = ag.getLong(l12);
                long j5 = ag.getLong(l13);
                int i3 = i;
                long j6 = ag.getLong(i3);
                int i4 = l13;
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
                arrayList.add(new fkj(string, x, string2, string3, c2, c3, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i26))), i2, y, j4, j5, j6, j7, z, h, i9, i11, j8, i14, i16, string4));
                l13 = i4;
                i = i3;
            }
            ag.close();
            fcgVar.p();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            ag.close();
            fcgVar.p();
            throw th;
        }
    }

    public final void ab(long j, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.j;
        cap i = bnhVar.i();
        i.f(1, j);
        i.e(2, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public final ArrayList ac(int i) {
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
        int l12;
        int l13;
        fcg o = fcg.o(1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
        o.f(1, i);
        WorkDatabase_Impl workDatabase_Impl = this.h;
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
            l12 = eg.l(ag, "backoff_delay_duration");
            l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
        } catch (Throwable th) {
            th = th;
            fcgVar = o;
        }
        try {
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
            int i2 = l14;
            ArrayList arrayList = new ArrayList(ag.getCount());
            while (ag.moveToNext()) {
                String string = ag.getString(l);
                gys x = bfc.x(ag.getInt(l2));
                String string2 = ag.getString(l3);
                String string3 = ag.getString(l4);
                dwa c2 = dwa.c(ag.getBlob(l5));
                dwa c3 = dwa.c(ag.getBlob(l6));
                long j = ag.getLong(l7);
                long j2 = ag.getLong(l8);
                long j3 = ag.getLong(l9);
                int i3 = ag.getInt(l10);
                ay y = bfc.y(ag.getInt(l11));
                long j4 = ag.getLong(l12);
                long j5 = ag.getLong(l13);
                int i4 = i2;
                long j6 = ag.getLong(i4);
                int i5 = l13;
                int i6 = l15;
                long j7 = ag.getLong(i6);
                l15 = i6;
                int i7 = l16;
                boolean z = ag.getInt(i7) != 0;
                l16 = i7;
                int i8 = l17;
                ahc h = bfc.h(ag.getInt(i8));
                l17 = i8;
                int i9 = l18;
                int i10 = ag.getInt(i9);
                l18 = i9;
                int i11 = l19;
                int i12 = ag.getInt(i11);
                l19 = i11;
                int i13 = l20;
                long j8 = ag.getLong(i13);
                l20 = i13;
                int i14 = l21;
                int i15 = ag.getInt(i14);
                l21 = i14;
                int i16 = l22;
                int i17 = ag.getInt(i16);
                l22 = i16;
                int i18 = l23;
                String string4 = ag.isNull(i18) ? null : ag.getString(i18);
                l23 = i18;
                int i19 = l24;
                dnx k = bfc.k(ag.getInt(i19));
                l24 = i19;
                int i20 = l25;
                im ai = bfc.ai(ag.getBlob(i20));
                l25 = i20;
                int i21 = l26;
                boolean z2 = ag.getInt(i21) != 0;
                l26 = i21;
                int i22 = l27;
                boolean z3 = ag.getInt(i22) != 0;
                l27 = i22;
                int i23 = l28;
                boolean z4 = ag.getInt(i23) != 0;
                l28 = i23;
                int i24 = l29;
                boolean z5 = ag.getInt(i24) != 0;
                l29 = i24;
                int i25 = l30;
                long j9 = ag.getLong(i25);
                l30 = i25;
                int i26 = l31;
                long j10 = ag.getLong(i26);
                l31 = i26;
                int i27 = l32;
                l32 = i27;
                arrayList.add(new fkj(string, x, string2, string3, c2, c3, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i27))), i3, y, j4, j5, j6, j7, z, h, i10, i12, j8, i15, i17, string4));
                l13 = i5;
                i2 = i4;
            }
            ag.close();
            fcgVar.p();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            ag.close();
            fcgVar.p();
            throw th;
        }
    }

    public final gys ad(String str) {
        fcg o = fcg.o(1, "SELECT state FROM workspec WHERE id=?");
        o.e(1, str);
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            gys gysVar = null;
            if (ag.moveToFirst()) {
                Integer valueOf = ag.isNull(0) ? null : Integer.valueOf(ag.getInt(0));
                if (valueOf != null) {
                    gysVar = bfc.x(valueOf.intValue());
                }
            }
            return gysVar;
        } finally {
            ag.close();
            o.p();
        }
    }

    public final fkj p(String str) {
        fcg fcgVar;
        fcg o = fcg.o(1, "SELECT * FROM workspec WHERE id=?");
        o.e(1, str);
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            int l = eg.l(ag, TTDownloadField.TT_ID);
            int l2 = eg.l(ag, "state");
            int l3 = eg.l(ag, "worker_class_name");
            int l4 = eg.l(ag, "input_merger_class_name");
            int l5 = eg.l(ag, "input");
            int l6 = eg.l(ag, "output");
            int l7 = eg.l(ag, "initial_delay");
            int l8 = eg.l(ag, "interval_duration");
            int l9 = eg.l(ag, "flex_duration");
            int l10 = eg.l(ag, "run_attempt_count");
            int l11 = eg.l(ag, "backoff_policy");
            int l12 = eg.l(ag, "backoff_delay_duration");
            int l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
            try {
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
                fkj fkjVar = null;
                if (ag.moveToFirst()) {
                    fkjVar = new fkj(ag.getString(l), bfc.x(ag.getInt(l2)), ag.getString(l3), ag.getString(l4), dwa.c(ag.getBlob(l5)), dwa.c(ag.getBlob(l6)), ag.getLong(l7), ag.getLong(l8), ag.getLong(l9), new bho(bfc.ai(ag.getBlob(l25)), bfc.k(ag.getInt(l24)), ag.getInt(l26) != 0, ag.getInt(l27) != 0, ag.getInt(l28) != 0, ag.getInt(l29) != 0, ag.getLong(l30), ag.getLong(l31), bfc.l(ag.getBlob(l32))), ag.getInt(l10), bfc.y(ag.getInt(l11)), ag.getLong(l12), ag.getLong(l13), ag.getLong(l14), ag.getLong(l15), ag.getInt(l16) != 0, bfc.h(ag.getInt(l17)), ag.getInt(l18), ag.getInt(l19), ag.getLong(l20), ag.getInt(l21), ag.getInt(l22), ag.isNull(l23) ? null : ag.getString(l23));
                }
                ag.close();
                fcgVar.p();
                return fkjVar;
            } catch (Throwable th) {
                th = th;
                ag.close();
                fcgVar.p();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fcgVar = o;
        }
    }

    public final void q(int i, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.f18072f;
        cap i2 = bnhVar.i();
        i2.e(1, str);
        i2.f(2, i);
        try {
            workDatabase_Impl.an();
            try {
                i2.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i2);
        }
    }

    public final void r(int i, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.f18069c;
        cap i2 = bnhVar.i();
        i2.f(1, i);
        i2.e(2, str);
        try {
            workDatabase_Impl.an();
            try {
                i2.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i2);
        }
    }

    public final void s(gys gysVar, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.f18073g;
        cap i = bnhVar.i();
        i.f(1, bfc.r(gysVar));
        i.e(2, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public final ArrayList t() {
        fcg fcgVar;
        fcg o = fcg.o(0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            int l = eg.l(ag, TTDownloadField.TT_ID);
            int l2 = eg.l(ag, "state");
            int l3 = eg.l(ag, "worker_class_name");
            int l4 = eg.l(ag, "input_merger_class_name");
            int l5 = eg.l(ag, "input");
            int l6 = eg.l(ag, "output");
            int l7 = eg.l(ag, "initial_delay");
            int l8 = eg.l(ag, "interval_duration");
            int l9 = eg.l(ag, "flex_duration");
            int l10 = eg.l(ag, "run_attempt_count");
            int l11 = eg.l(ag, "backoff_policy");
            int l12 = eg.l(ag, "backoff_delay_duration");
            int l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
            try {
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
                    dwa c2 = dwa.c(ag.getBlob(l5));
                    dwa c3 = dwa.c(ag.getBlob(l6));
                    long j = ag.getLong(l7);
                    long j2 = ag.getLong(l8);
                    long j3 = ag.getLong(l9);
                    int i2 = ag.getInt(l10);
                    ay y = bfc.y(ag.getInt(l11));
                    long j4 = ag.getLong(l12);
                    long j5 = ag.getLong(l13);
                    int i3 = i;
                    long j6 = ag.getLong(i3);
                    int i4 = l13;
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
                    arrayList.add(new fkj(string, x, string2, string3, c2, c3, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i26))), i2, y, j4, j5, j6, j7, z, h, i9, i11, j8, i14, i16, string4));
                    l13 = i4;
                    i = i3;
                }
                ag.close();
                fcgVar.p();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                ag.close();
                fcgVar.p();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fcgVar = o;
        }
    }

    public final void u(long j, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.k;
        cap i = bnhVar.i();
        i.f(1, j);
        i.e(2, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public final ArrayList v() {
        fcg fcgVar;
        fcg o = fcg.o(0, "SELECT * FROM workspec WHERE state=1");
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            int l = eg.l(ag, TTDownloadField.TT_ID);
            int l2 = eg.l(ag, "state");
            int l3 = eg.l(ag, "worker_class_name");
            int l4 = eg.l(ag, "input_merger_class_name");
            int l5 = eg.l(ag, "input");
            int l6 = eg.l(ag, "output");
            int l7 = eg.l(ag, "initial_delay");
            int l8 = eg.l(ag, "interval_duration");
            int l9 = eg.l(ag, "flex_duration");
            int l10 = eg.l(ag, "run_attempt_count");
            int l11 = eg.l(ag, "backoff_policy");
            int l12 = eg.l(ag, "backoff_delay_duration");
            int l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
            try {
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
                    dwa c2 = dwa.c(ag.getBlob(l5));
                    dwa c3 = dwa.c(ag.getBlob(l6));
                    long j = ag.getLong(l7);
                    long j2 = ag.getLong(l8);
                    long j3 = ag.getLong(l9);
                    int i2 = ag.getInt(l10);
                    ay y = bfc.y(ag.getInt(l11));
                    long j4 = ag.getLong(l12);
                    long j5 = ag.getLong(l13);
                    int i3 = i;
                    long j6 = ag.getLong(i3);
                    int i4 = l13;
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
                    arrayList.add(new fkj(string, x, string2, string3, c2, c3, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i26))), i2, y, j4, j5, j6, j7, z, h, i9, i11, j8, i14, i16, string4));
                    l13 = i4;
                    i = i3;
                }
                ag.close();
                fcgVar.p();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                ag.close();
                fcgVar.p();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fcgVar = o;
        }
    }

    public final void w(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.f18071e;
        cap i = bnhVar.i();
        i.e(1, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public final ArrayList x() {
        fcg fcgVar;
        fcg o = fcg.o(0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            int l = eg.l(ag, TTDownloadField.TT_ID);
            int l2 = eg.l(ag, "state");
            int l3 = eg.l(ag, "worker_class_name");
            int l4 = eg.l(ag, "input_merger_class_name");
            int l5 = eg.l(ag, "input");
            int l6 = eg.l(ag, "output");
            int l7 = eg.l(ag, "initial_delay");
            int l8 = eg.l(ag, "interval_duration");
            int l9 = eg.l(ag, "flex_duration");
            int l10 = eg.l(ag, "run_attempt_count");
            int l11 = eg.l(ag, "backoff_policy");
            int l12 = eg.l(ag, "backoff_delay_duration");
            int l13 = eg.l(ag, "last_enqueue_time");
            fcgVar = o;
            try {
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
                    dwa c2 = dwa.c(ag.getBlob(l5));
                    dwa c3 = dwa.c(ag.getBlob(l6));
                    long j = ag.getLong(l7);
                    long j2 = ag.getLong(l8);
                    long j3 = ag.getLong(l9);
                    int i2 = ag.getInt(l10);
                    ay y = bfc.y(ag.getInt(l11));
                    long j4 = ag.getLong(l12);
                    long j5 = ag.getLong(l13);
                    int i3 = i;
                    long j6 = ag.getLong(i3);
                    int i4 = l13;
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
                    arrayList.add(new fkj(string, x, string2, string3, c2, c3, j, j2, j3, new bho(ai, k, z2, z3, z4, z5, j9, j10, bfc.l(ag.getBlob(i26))), i2, y, j4, j5, j6, j7, z, h, i9, i11, j8, i14, i16, string4));
                    l13 = i4;
                    i = i3;
                }
                ag.close();
                fcgVar.p();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                ag.close();
                fcgVar.p();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fcgVar = o;
        }
    }

    public final void y(String str, dwa dwaVar) {
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        bnh bnhVar = this.f18067a;
        cap i = bnhVar.i();
        dwa dwaVar2 = dwa.f14915a;
        i.c(1, bff.k(dwaVar));
        i.e(2, str);
        try {
            workDatabase_Impl.an();
            try {
                i.h();
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        } finally {
            bnhVar.h(i);
        }
    }

    public final ArrayList z(String str) {
        fcg o = fcg.o(1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        o.e(1, str);
        WorkDatabase_Impl workDatabase_Impl = this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            ArrayList arrayList = new ArrayList(ag.getCount());
            while (ag.moveToNext()) {
                String string = ag.getString(0);
                gys x = bfc.x(ag.getInt(1));
                bff.p(string, TTDownloadField.TT_ID);
                bff.p(x, "state");
                apn apnVar = new apn();
                apnVar.f10631a = string;
                apnVar.f10632b = x;
                arrayList.add(apnVar);
            }
            return arrayList;
        } finally {
            ag.close();
            o.p();
        }
    }
}

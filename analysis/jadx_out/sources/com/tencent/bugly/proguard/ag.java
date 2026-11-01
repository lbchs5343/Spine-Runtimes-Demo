package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import g.ada;
import g.awf;
import g.dyn;
import g.tn;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ag {

    /* renamed from: a, reason: collision with root package name */
    private final SimpleDateFormat f9555a;

    /* renamed from: b, reason: collision with root package name */
    private final ad f9556b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final ag f9557a = new ag(0);
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        String f9558a;

        /* renamed from: b, reason: collision with root package name */
        public long f9559b;

        /* renamed from: c, reason: collision with root package name */
        public String f9560c;

        public final String toString() {
            StringBuilder sb = new StringBuilder("SLAData{uuid='");
            sb.append(this.f9558a);
            sb.append("', time=");
            sb.append(this.f9559b);
            sb.append(", data='");
            return awf.ad(sb, this.f9560c, "'}");
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        String f9561a;

        /* renamed from: b, reason: collision with root package name */
        String f9562b;

        /* renamed from: c, reason: collision with root package name */
        long f9563c;

        /* renamed from: d, reason: collision with root package name */
        boolean f9564d;

        /* renamed from: e, reason: collision with root package name */
        long f9565e;

        /* renamed from: f, reason: collision with root package name */
        String f9566f;

        /* renamed from: g, reason: collision with root package name */
        String f9567g;

        public c() {
        }

        public c(String str, String str2, long j, boolean z, long j2, String str3, String str4) {
            this.f9561a = str;
            this.f9562b = str2;
            this.f9563c = j;
            this.f9564d = z;
            this.f9565e = j2;
            this.f9566f = str3;
            this.f9567g = str4;
        }
    }

    private ag() {
        this.f9555a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.f9556b = new ad();
    }

    public /* synthetic */ ag(byte b2) {
        this();
    }

    private static String a(String str, Iterable<b> iterable) {
        Iterator<b> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder("'");
        sb.append(it.next().f9558a);
        sb.append("'");
        while (it.hasNext()) {
            sb.append(str);
            sb.append("'");
            sb.append(it.next().f9558a);
            sb.append("'");
        }
        return sb.toString();
    }

    public static List<b> a() {
        Cursor a2 = w.a().a("t_sla", new String[]{ada.COLUMN_ID, "_tm", "_dt"}, (String) null, "_tm", "30");
        if (a2 == null) {
            return null;
        }
        if (a2.getCount() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (a2.moveToNext()) {
            try {
                b bVar = new b();
                bVar.f9558a = a2.getString(a2.getColumnIndex(ada.COLUMN_ID));
                bVar.f9559b = a2.getLong(a2.getColumnIndex("_tm"));
                bVar.f9560c = a2.getString(a2.getColumnIndex("_dt"));
                al.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } catch (Throwable th) {
                try {
                    al.b(th);
                    return arrayList;
                } finally {
                    a2.close();
                }
            }
        }
        return arrayList;
    }

    private b b(c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.f9562b)) {
            al.d("sla convert event is null", new Object[0]);
            return null;
        }
        aa b2 = aa.b();
        if (b2 == null) {
            al.d("sla convert failed because ComInfoManager is null", new Object[0]);
            return null;
        }
        StringBuilder sb = new StringBuilder("&app_version=");
        sb.append(b2.o);
        sb.append("&app_name=");
        sb.append(b2.q);
        sb.append("&app_bundle_id=");
        sb.append(b2.f9536c);
        sb.append("&client_type=android&user_id=");
        sb.append(b2.f());
        sb.append("&sdk_version=");
        sb.append(b2.h);
        sb.append("&event_code=");
        sb.append(cVar.f9562b);
        sb.append("&event_result=");
        sb.append(cVar.f9564d ? 1 : 0);
        sb.append("&event_time=");
        sb.append(this.f9555a.format(new Date(cVar.f9563c)));
        sb.append("&event_cost=");
        sb.append(cVar.f9565e);
        sb.append("&device_id=");
        sb.append(b2.g());
        sb.append("&debug=");
        sb.append(b2.D ? 1 : 0);
        sb.append("&param_0=");
        sb.append(cVar.f9566f);
        sb.append("&param_1=");
        sb.append(cVar.f9561a);
        sb.append("&param_2=");
        sb.append(b2.M ? "rqd" : "ext");
        sb.append("&param_4=");
        sb.append(b2.e());
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(cVar.f9567g)) {
            StringBuilder l = tn.l(sb2, "&param_3=");
            l.append(cVar.f9567g);
            sb2 = l.toString();
        }
        al.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.f9561a, cVar.f9562b, Long.valueOf(cVar.f9563c), Boolean.valueOf(cVar.f9564d), Long.valueOf(cVar.f9565e), cVar.f9566f, cVar.f9567g);
        String str = cVar.f9561a + "-" + cVar.f9562b;
        b bVar = new b();
        bVar.f9558a = str;
        bVar.f9559b = cVar.f9563c;
        bVar.f9560c = sb2;
        return bVar;
    }

    public static void c(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch report data is empty", new Object[0]);
            return;
        }
        al.c("sla batch report list size:%s", Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f9560c);
        }
        Pair<Integer, String> a2 = ad.a(arrayList);
        al.c("sla batch report result, rspCode:%s rspMsg:%s", a2.first, a2.second);
        if (((Integer) a2.first).intValue() == 200) {
            d(list);
        }
    }

    public static void d(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch delete list is null", new Object[0]);
            return;
        }
        al.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
        try {
            String str = "_id in (" + a(",", list) + ")";
            al.c("sla batch delete where:%s", str);
            w.a().a("t_sla", str);
        } catch (Throwable th) {
            al.b(th);
        }
    }

    private static void e(List<b> list) {
        for (b bVar : list) {
            al.c("sla save id:%s time:%s msg:%s", bVar.f9558a, Long.valueOf(bVar.f9559b), bVar.f9560c);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(ada.COLUMN_ID, bVar.f9558a);
                contentValues.put("_tm", Long.valueOf(bVar.f9559b));
                contentValues.put("_dt", bVar.f9560c);
                w.a().a("t_sla", contentValues, (v) null);
            } catch (Throwable th) {
                al.b(th);
            }
        }
    }

    public final void a(c cVar) {
        if (TextUtils.isEmpty(cVar.f9562b)) {
            al.d("sla report event is null", new Object[0]);
        } else {
            al.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
        }
    }

    public final void a(List<c> list) {
        if (list == null || list.isEmpty()) {
            al.d("sla batch report event is null", new Object[0]);
            return;
        }
        al.c("sla batch report event size:%s", Integer.valueOf(list.size()));
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            b b2 = b(it.next());
            if (b2 != null) {
                arrayList.add(b2);
            }
        }
        e(arrayList);
        b(arrayList);
    }

    public final void b(List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ak.a().a(new dyn(8, list));
        } else {
            c(list);
        }
    }
}

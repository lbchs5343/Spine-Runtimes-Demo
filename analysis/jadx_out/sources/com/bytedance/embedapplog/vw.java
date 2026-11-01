package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import g.awf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class vw {
    private static final ds[] iw;
    static final d[] ox;
    private String mn;
    private final le p;
    private final dq s;
    public static final int[] dq = {1};

    /* renamed from: d, reason: collision with root package name */
    static final HashMap<String, ds> f749d = new HashMap<>();

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        int f750d;
        String dq;
        int ox;

        /* JADX INFO: Access modifiers changed from: private */
        public static void d() {
            for (d dVar : vw.ox) {
                dVar.dq = "";
                dVar.f750d = 0;
                dVar.ox = 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(ds dsVar) {
            String kk = dsVar.kk();
            if (kk == null || kk.length() <= this.f750d) {
                return;
            }
            this.dq = dsVar.ia();
            this.f750d = kk.length();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(this.ox);
            sb.append("-");
            sb.append(this.dq);
            sb.append("-");
            sb.append(this.f750d);
            return sb.toString();
        }
    }

    public static class dq extends SQLiteOpenHelper {
        public dq(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
            super(new com.bytedance.sdk.openadsdk.api.plugin.dq(context), str, cursorFactory, i);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<ds> it = vw.f749d.values().iterator();
                while (it.hasNext()) {
                    String ox = it.next().ox();
                    if (ox != null) {
                        sQLiteDatabase.execSQL(ox);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Throwable th) {
                try {
                    jo.d(th);
                } finally {
                    yo.dq(sQLiteDatabase);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            onUpgrade(sQLiteDatabase, i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            jo.p("onUpgrade, " + i + ", " + i2, null);
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<ds> it = vw.f749d.values().iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next().p());
                }
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                try {
                    onCreate(sQLiteDatabase);
                } finally {
                }
            }
            onCreate(sQLiteDatabase);
        }
    }

    static {
        dq(new bu());
        dq(new jw(true));
        dq(new ws());
        dq(new fd());
        ds[] dsVarArr = {new ha(), new dc(null, false, null), new cv("", new JSONObject())};
        iw = dsVarArr;
        for (int i = 0; i < 3; i++) {
            dq(dsVarArr[i]);
        }
        ox = new d[]{new d(), new d(), new d()};
    }

    public vw(le leVar) {
        this.s = new dq(leVar.d(), "bd_embed_tea_agent.db", null, 30);
        this.p = leVar;
    }

    private String d(String str, boolean z) {
        return awf.f(z ? "='" : "!='", str, "'", new StringBuilder("DELETE FROM page WHERE session_id"));
    }

    private int dq(int i, SQLiteDatabase sQLiteDatabase, String str, boolean z, int i2, JSONArray[] jSONArrayArr, long[] jArr) {
        d.d();
        int i3 = 0;
        while (i3 < i) {
            jSONArrayArr[i3] = null;
            jArr[i3] = 0;
            i3++;
        }
        int i4 = i3;
        int i5 = 200;
        while (i5 > 0 && i4 < iw.length) {
            dq(sQLiteDatabase, str, i5, i4, z, jSONArrayArr, jArr, i2);
            int length = jSONArrayArr[i4].length();
            i5 -= length;
            ox[i4].ox = length;
            if (i5 > 0) {
                i4++;
            }
        }
        for (int i6 = i4 + 1; i6 < jSONArrayArr.length; i6++) {
            jSONArrayArr[i6] = null;
            jArr[i6] = 0;
        }
        return i4;
    }

    private String dq(long j, int i) {
        return "UPDATE pack SET _fail=" + i + " WHERE _id=" + j;
    }

    private String dq(ds dsVar, String str, boolean z, int i, int i2) {
        StringBuilder sb = new StringBuilder("SELECT * FROM ");
        sb.append(dsVar.p());
        sb.append(" WHERE session_id");
        sb.append(z ? "='" : "!='");
        sb.append(str);
        sb.append("' AND event_type='");
        sb.append(i2);
        sb.append("' ORDER BY _id LIMIT ");
        sb.append(i);
        return sb.toString();
    }

    private String dq(String str, int i, String str2, boolean z, long j) {
        StringBuilder p = awf.p("DELETE FROM ", str, " WHERE session_id");
        p.append(z ? "='" : "!='");
        p.append(str2);
        p.append("' AND event_type='");
        p.append(i);
        p.append("' AND _id<=");
        p.append(j);
        return p.toString();
    }

    private String dq(String str, boolean z) {
        StringBuilder sb = new StringBuilder("SELECT * FROM page WHERE session_id");
        awf.a(z ? "='" : "!='", str, "' ORDER BY ", sb);
        return awf.ad(sb, z ? "session_id," : "", "duration DESC LIMIT 500");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d8, code lost:
    
        if (r12 != null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private JSONArray dq(jw jwVar, boolean z, ws wsVar, bu buVar, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        String str;
        String str2;
        long j;
        JSONArray jSONArray = new JSONArray();
        try {
            cursor = sQLiteDatabase.rawQuery(dq(jwVar.p, z), null);
        } catch (Throwable th) {
            th = th;
            cursor = null;
            str = null;
        }
        try {
            HashMap hashMap = new HashMap(8);
            boolean z2 = false;
            str = null;
            str2 = null;
            j = 0;
            while (cursor.moveToNext()) {
                try {
                    buVar.dq(cursor);
                    if (jo.f730d) {
                        jo.dq("queryPage, ".concat(String.valueOf(buVar)), null);
                    }
                    Integer num = (Integer) hashMap.get(buVar.q);
                    z2 = true;
                    if (!buVar.o()) {
                        hashMap.put(buVar.q, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                        long j2 = buVar.ig;
                        j = j2 >= 1000 ? j + j2 : j + 1000;
                        jSONArray.put(buVar.iw());
                        if (TextUtils.isEmpty(buVar.r)) {
                            continue;
                        } else {
                            String str3 = buVar.r;
                            try {
                                str = str3;
                                str2 = buVar.iw;
                            } catch (Throwable th2) {
                                th = th2;
                                str = str3;
                                try {
                                    jo.d(th);
                                } catch (Throwable th3) {
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th3;
                                }
                            }
                        }
                    } else if (num != null) {
                        int intValue = num.intValue() - 1;
                        Integer valueOf = Integer.valueOf(intValue);
                        if (intValue > 0) {
                            hashMap.put(buVar.q, valueOf);
                        } else {
                            hashMap.remove(buVar.q);
                        }
                    } else {
                        buVar.ig = 1000L;
                        j += 1000;
                        jSONArray.put(buVar.iw());
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            if (z2) {
                sQLiteDatabase.execSQL(d(jwVar.p, z));
            }
        } catch (Throwable th5) {
            th = th5;
            str = null;
            str2 = str;
            j = 0;
            jo.d(th);
        }
        cursor.close();
        String str4 = str;
        String str5 = str2;
        if (jSONArray.length() > 0) {
            long j3 = j > 1000 ? j : 1000L;
            wsVar.ig = j3;
            if (z) {
                wsVar.p = jwVar.p;
                wsVar.dq(jwVar.f713d + j3);
            } else {
                wsVar.p = UUID.randomUUID().toString();
                wsVar.dq(0L);
            }
            wsVar.s = jwVar.s;
            wsVar.iw = jwVar.iw;
            wsVar.mn = jwVar.mn;
            wsVar.ia = jwVar.ia;
            wsVar.mp = wsVar.f713d;
            wsVar.ox = e.p();
            wsVar.q = null;
            if (!TextUtils.isEmpty(jwVar.jy)) {
                wsVar.q = jwVar.jy;
            } else if (!TextUtils.isEmpty(str4)) {
                wsVar.q = str4;
                wsVar.iw = str5;
            }
        }
        return jSONArray;
    }

    private JSONObject dq(jw jwVar, JSONObject jSONObject) {
        if (!TextUtils.equals(jwVar.mp, this.p.s().ox()) || jwVar.ig != this.p.s().d()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                yo.d(jSONObject2, jSONObject);
                jSONObject2.put("app_version", jwVar.mp);
                jSONObject2.put("version_code", jwVar.ig);
                return jSONObject2;
            } catch (JSONException e2) {
                jo.d(e2);
            }
        }
        return jSONObject;
    }

    private void dq(SQLiteDatabase sQLiteDatabase, String str, int i, int i2, boolean z, JSONArray[] jSONArrayArr, long[] jArr, int i3) {
        Throwable th;
        ds dsVar = iw[i2];
        JSONArray jSONArray = new JSONArray();
        Cursor cursor = null;
        long j = 0;
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery(dq(dsVar, str, z, i, i3), null);
            for (int i4 = 0; rawQuery.moveToNext() && i4 <= 200; i4++) {
                try {
                    dsVar.dq(rawQuery);
                    ox[i2].dq(dsVar);
                    if (jo.f730d) {
                        jo.dq("queryEvent, ".concat(String.valueOf(dsVar)), null);
                    }
                    jSONArray.put(dsVar.iw());
                    long j2 = dsVar.dq;
                    if (j2 > j) {
                        j = j2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = rawQuery;
                    try {
                        jo.d(th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        jSONArrayArr[i2] = jSONArray;
                        jArr[i2] = j;
                    } finally {
                    }
                }
            }
            rawQuery.close();
        } catch (Throwable th3) {
            th = th3;
        }
        jSONArrayArr[i2] = jSONArray;
        jArr[i2] = j;
    }

    private static void dq(ds dsVar) {
        f749d.put(dsVar.p(), dsVar);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008f -> B:6:0x0055). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(org.json.JSONObject r12, com.bytedance.embedapplog.jw r13, com.bytedance.embedapplog.fd r14, android.database.sqlite.SQLiteDatabase r15, org.json.JSONArray[] r16, long[] r17, java.util.ArrayList<com.bytedance.embedapplog.fd> r18) {
        /*
            r11 = this;
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "packCurrentData, "
            r1.<init>(r2)
            java.lang.String r2 = r13.p
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.bytedance.embedapplog.jo.dq(r1)
            java.lang.String r1 = r13.p
            boolean r8 = r11.dq(r1)
            java.lang.String r3 = r13.p
            r4 = 1
            r5 = 0
            r1 = 0
            r0 = r11
            r2 = r15
            r6 = r16
            r7 = r17
            int r9 = r0.dq(r1, r2, r3, r4, r5, r6, r7)
            r6 = r7
            r10 = 0
            if (r8 != 0) goto L32
            boolean r0 = r11.dq(r6)
            if (r0 == 0) goto L54
        L32:
            if (r8 == 0) goto L36
            r2 = r13
            goto L37
        L36:
            r2 = r10
        L37:
            r4 = 0
            r7 = 0
            r3 = 0
            r1 = r12
            r0 = r14
            r5 = r16
            r0.dq(r1, r2, r3, r4, r5, r6, r7)
            com.bytedance.embedapplog.ds[] r0 = com.bytedance.embedapplog.vw.iw
            int r0 = r0.length
            if (r9 < r0) goto L58
            com.bytedance.embedapplog.ds r0 = r14.clone()
            com.bytedance.embedapplog.fd r0 = (com.bytedance.embedapplog.fd) r0
            r0.o()
            r1 = r18
            r1.add(r0)
        L54:
            r8 = r14
        L55:
            r2 = r15
        L56:
            r1 = r9
            goto L60
        L58:
            r0 = r14
        L59:
            r1 = 1
            r2 = r15
            r11.dq(r0, r1, r15, r1)
            r8 = r0
            goto L56
        L60:
            com.bytedance.embedapplog.ds[] r0 = com.bytedance.embedapplog.vw.iw
            int r0 = r0.length
            if (r1 >= r0) goto L91
            java.lang.String r3 = r13.p
            r4 = 1
            r5 = 0
            r0 = r11
            r6 = r16
            r7 = r17
            int r9 = r0.dq(r1, r2, r3, r4, r5, r6, r7)
            r6 = r7
            boolean r0 = r11.dq(r6)
            if (r0 == 0) goto L8f
            java.lang.String r0 = r13.p
            boolean r0 = r11.dq(r0)
            if (r0 == 0) goto L83
            r2 = r13
            goto L84
        L83:
            r2 = r10
        L84:
            r4 = 0
            r7 = 0
            r3 = 0
            r1 = r12
            r5 = r16
            r0 = r8
            r0.dq(r1, r2, r3, r4, r5, r6, r7)
            goto L59
        L8f:
            r0 = r8
            goto L55
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.embedapplog.vw.dq(org.json.JSONObject, com.bytedance.embedapplog.jw, com.bytedance.embedapplog.fd, android.database.sqlite.SQLiteDatabase, org.json.JSONArray[], long[], java.util.ArrayList):void");
    }

    private void dq(JSONObject jSONObject, jw jwVar, fd fdVar, bu buVar, ws wsVar, SQLiteDatabase sQLiteDatabase, JSONArray[] jSONArrayArr, long[] jArr) {
        jo.dq("packHistoryData, " + jwVar.p);
        JSONArray dq2 = dq(jwVar, true, wsVar, buVar, sQLiteDatabase);
        jwVar.q = dq2.length() == 0;
        int dq3 = dq(0, sQLiteDatabase, jwVar.p, true, 0, jSONArrayArr, jArr);
        if (jwVar.q) {
            fdVar.dq(jSONObject, dq(jwVar.p) ? jwVar : null, null, null, jSONArrayArr, jArr, 0);
        } else {
            fdVar.dq(jSONObject, null, wsVar, dq2, jSONArrayArr, jArr, 0);
        }
        while (true) {
            fd fdVar2 = fdVar;
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            dq(fdVar2, true, sQLiteDatabase2, true);
            while (dq3 < iw.length) {
                dq3 = dq(dq3, sQLiteDatabase2, jwVar.p, true, 0, jSONArrayArr, jArr);
                if (dq(jArr)) {
                    break;
                }
                fdVar2 = fdVar;
                sQLiteDatabase2 = sQLiteDatabase;
            }
            return;
            fdVar2.dq(jSONObject, null, null, null, jSONArrayArr, jArr, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0088 -> B:8:0x004d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0061 -> B:9:0x0072). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(JSONObject jSONObject, jw jwVar, ws wsVar, bu buVar, fd fdVar, SQLiteDatabase sQLiteDatabase, String str, JSONArray[] jSONArrayArr, long[] jArr) {
        JSONArray jSONArray;
        SQLiteDatabase sQLiteDatabase2;
        jo.dq("packLostData, ".concat(String.valueOf(str)));
        jwVar.p = str;
        jwVar.r = false;
        fd fdVar2 = fdVar;
        fdVar2.p = str;
        JSONArray dq2 = dq(jwVar, false, wsVar, buVar, sQLiteDatabase);
        int dq3 = dq(0, sQLiteDatabase, str, false, 0, jSONArrayArr, jArr);
        jwVar.q = dq2.length() == 0;
        if (dq(jArr) || !jwVar.q) {
            boolean z = jwVar.q;
            ws wsVar2 = !z ? wsVar : null;
            if (!z) {
                jSONArray = dq2;
                fd fdVar3 = fdVar2;
                int i = dq3;
                fdVar3.dq(jSONObject, null, wsVar2, jSONArray, jSONArrayArr, jArr, 0);
                sQLiteDatabase2 = sQLiteDatabase;
                dq(fdVar3, false, sQLiteDatabase2, true);
                dq3 = i;
                fdVar2 = fdVar3;
                if (dq3 >= iw.length) {
                    return;
                }
                dq3 = dq(dq3, sQLiteDatabase2, str, false, 0, jSONArrayArr, jArr);
                if (dq(jArr)) {
                    wsVar2 = null;
                }
            }
            jSONArray = null;
            fd fdVar32 = fdVar2;
            int i2 = dq3;
            fdVar32.dq(jSONObject, null, wsVar2, jSONArray, jSONArrayArr, jArr, 0);
            sQLiteDatabase2 = sQLiteDatabase;
            dq(fdVar32, false, sQLiteDatabase2, true);
            dq3 = i2;
            fdVar2 = fdVar32;
            if (dq3 >= iw.length) {
            }
        }
        sQLiteDatabase2 = sQLiteDatabase;
        if (dq3 >= iw.length) {
        }
    }

    private void dq(JSONObject jSONObject, boolean z, fd fdVar, SQLiteDatabase sQLiteDatabase) {
        fd fdVar2 = fdVar;
        for (int i : dq) {
            JSONArray[] jSONArrayArr = new JSONArray[3];
            long[] jArr = new long[3];
            int dq2 = dq(0, sQLiteDatabase, fdVar2.p, z, i, jSONArrayArr, jArr);
            if (dq(jArr)) {
                while (true) {
                    long[] jArr2 = jArr;
                    int i2 = i;
                    JSONArray[] jSONArrayArr2 = jSONArrayArr;
                    fd fdVar3 = fdVar2;
                    fdVar3.dq(jSONObject, null, null, null, jSONArrayArr2, jArr2, i2);
                    jSONArrayArr = jSONArrayArr2;
                    i = i2;
                    jArr = jArr2;
                    fdVar2 = fdVar3;
                    boolean z2 = z;
                    SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
                    dq(fdVar2, z, sQLiteDatabase2, true);
                    dq2 = dq2;
                    while (dq2 < iw.length) {
                        dq2 = dq(dq2, sQLiteDatabase2, fdVar2.p, z2, i, jSONArrayArr, jArr);
                        if (dq(jArr)) {
                            break;
                        }
                        z2 = z;
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                }
            }
        }
    }

    private boolean dq(String str) {
        jo.dq("needLaunch, " + this.mn + ", " + str);
        if (TextUtils.equals(str, this.mn)) {
            return false;
        }
        this.mn = str;
        return true;
    }

    private boolean dq(long[] jArr) {
        return jArr[0] > 0 || jArr[1] > 0 || jArr[2] > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        if (r3 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArrayList<fd> dq() {
        Cursor cursor;
        ArrayList<fd> arrayList = new ArrayList<>();
        fd fdVar = (fd) f749d.get("pack");
        try {
            cursor = this.s.getWritableDatabase().rawQuery("SELECT * FROM pack ORDER BY _id DESC LIMIT 8", null);
            while (cursor.moveToNext()) {
                try {
                    fdVar = (fd) fdVar.clone();
                    fdVar.dq(cursor);
                    arrayList.add(fdVar);
                } catch (Throwable th) {
                    th = th;
                    try {
                        jo.d(th);
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        cursor.close();
        jo.dq("queryPack, ".concat(String.valueOf(arrayList)), null);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized ArrayList<fd> dq(JSONObject jSONObject) {
        ArrayList<fd> arrayList;
        SQLiteDatabase sQLiteDatabase;
        long[] jArr;
        JSONArray[] jSONArrayArr;
        bu buVar;
        fd fdVar;
        ws wsVar;
        vw vwVar = this;
        synchronized (this) {
            HashMap<String, ds> hashMap = f749d;
            jw jwVar = (jw) hashMap.get("launch");
            ws wsVar2 = (ws) hashMap.get("terminate");
            bu buVar2 = (bu) hashMap.get("page");
            fd fdVar2 = (fd) hashMap.get("pack");
            ArrayList<fd> arrayList2 = new ArrayList<>();
            Cursor cursor = null;
            try {
                JSONArray[] jSONArrayArr2 = new JSONArray[3];
                long[] jArr2 = new long[3];
                SQLiteDatabase writableDatabase = vwVar.s.getWritableDatabase();
                try {
                    writableDatabase.beginTransaction();
                    Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM launch ORDER BY _id LIMIT 5", null);
                    try {
                        e mn = vwVar.p.mn();
                        String dq2 = mn.dq();
                        boolean d2 = mn.d();
                        JSONObject jSONObject2 = jSONObject;
                        long j = Long.MAX_VALUE;
                        long j2 = Long.MIN_VALUE;
                        while (rawQuery.moveToNext()) {
                            jwVar.dq(rawQuery);
                            fdVar2.p = jwVar.p;
                            JSONObject dq3 = vwVar.dq(jwVar, jSONObject);
                            if (TextUtils.equals(jwVar.p, dq2)) {
                                try {
                                    jwVar.q = !d2;
                                    vwVar.dq(dq3, jwVar, fdVar2, writableDatabase, jSONArrayArr2, jArr2, arrayList2);
                                    arrayList = arrayList2;
                                    ws wsVar3 = wsVar2;
                                    jArr = jArr2;
                                    sQLiteDatabase = writableDatabase;
                                    jSONArrayArr = jSONArrayArr2;
                                    buVar = buVar2;
                                    fdVar = fdVar2;
                                    wsVar = wsVar3;
                                    jSONObject2 = dq3;
                                    vwVar = this;
                                } catch (Throwable th) {
                                    th = th;
                                    sQLiteDatabase = writableDatabase;
                                    arrayList = arrayList2;
                                    cursor = rawQuery;
                                    try {
                                        jo.d(th);
                                        if (cursor != null) {
                                        }
                                        yo.dq(sQLiteDatabase);
                                        return arrayList;
                                    } finally {
                                    }
                                }
                            } else {
                                arrayList = arrayList2;
                                ws wsVar4 = wsVar2;
                                jArr = jArr2;
                                sQLiteDatabase = writableDatabase;
                                try {
                                    long j3 = jwVar.dq;
                                    if (j3 < j) {
                                        j = j3;
                                    }
                                    if (j3 > j2) {
                                        j2 = j3;
                                    }
                                    jSONArrayArr = jSONArrayArr2;
                                    buVar = buVar2;
                                    jSONObject2 = dq3;
                                    vwVar = this;
                                    vwVar.dq(jSONObject2, jwVar, fdVar2, buVar, wsVar4, sQLiteDatabase, jSONArrayArr, jArr);
                                    fdVar = fdVar2;
                                    wsVar = wsVar4;
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = rawQuery;
                                    jo.d(th);
                                    if (cursor != null) {
                                        try {
                                            cursor.close();
                                        } catch (Throwable th3) {
                                            jo.d(th3);
                                        }
                                    }
                                    yo.dq(sQLiteDatabase);
                                    return arrayList;
                                }
                            }
                            try {
                                vwVar.dq(jSONObject2, true, fdVar, sQLiteDatabase);
                                buVar2 = buVar;
                                writableDatabase = sQLiteDatabase;
                                jArr2 = jArr;
                                wsVar2 = wsVar;
                                fdVar2 = fdVar;
                                jSONArrayArr2 = jSONArrayArr;
                                arrayList2 = arrayList;
                            } catch (Throwable th4) {
                                th = th4;
                                cursor = rawQuery;
                                jo.d(th);
                                if (cursor != null) {
                                }
                                yo.dq(sQLiteDatabase);
                                return arrayList;
                            }
                        }
                        arrayList = arrayList2;
                        JSONArray[] jSONArrayArr3 = jSONArrayArr2;
                        fd fdVar3 = fdVar2;
                        ws wsVar5 = wsVar2;
                        long[] jArr3 = jArr2;
                        sQLiteDatabase = writableDatabase;
                        bu buVar3 = buVar2;
                        if (j != Long.MAX_VALUE && j2 != Long.MIN_VALUE) {
                            sQLiteDatabase.execSQL("DELETE FROM launch WHERE _id>=? AND _id<=?", new String[]{String.valueOf(j), String.valueOf(j2)});
                        }
                        if (rawQuery.getCount() < 5 && !TextUtils.isEmpty(dq2)) {
                            vwVar.dq(jSONObject2, jwVar, wsVar5, buVar3, fdVar3, sQLiteDatabase, dq2, jSONArrayArr3, jArr3);
                            vwVar.dq(jSONObject2, false, fdVar3, sQLiteDatabase);
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                        try {
                            rawQuery.close();
                        } catch (Throwable th5) {
                            jo.d(th5);
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        sQLiteDatabase = writableDatabase;
                        arrayList = arrayList2;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    sQLiteDatabase = writableDatabase;
                    arrayList = arrayList2;
                }
            } catch (Throwable th8) {
                th = th8;
                arrayList = arrayList2;
                sQLiteDatabase = null;
            }
            yo.dq(sQLiteDatabase);
        }
        return arrayList;
    }

    public void dq(fd fdVar, boolean z, SQLiteDatabase sQLiteDatabase, boolean z2) {
        boolean z3;
        boolean z4;
        if (sQLiteDatabase == null) {
            sQLiteDatabase = this.s.getWritableDatabase();
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            try {
                sQLiteDatabase.beginTransaction();
            } catch (Throwable th) {
                try {
                    jo.d(th);
                    if (z3) {
                        yo.dq(sQLiteDatabase);
                        return;
                    }
                    return;
                } finally {
                }
            }
        }
        if (z2 && sQLiteDatabase.insert("pack", null, fdVar.d((ContentValues) null)) < 0) {
            if (fdVar.gh != null) {
                dq((String) null);
            }
            if (z3) {
                yo.dq(sQLiteDatabase);
                return;
            }
            return;
        }
        long j = fdVar.f715f;
        if (j > 0) {
            z4 = z;
            sQLiteDatabase.execSQL(dq("event", fdVar.o, fdVar.p, z4, j));
        } else {
            z4 = z;
        }
        long j2 = fdVar.cd;
        if (j2 > 0) {
            sQLiteDatabase.execSQL(dq("eventv3", fdVar.o, fdVar.p, z4, j2));
        }
        long j3 = fdVar.i;
        if (j3 > 0) {
            sQLiteDatabase.execSQL(dq("event_misc", fdVar.o, fdVar.p, z4, j3));
        }
        if (z3) {
            sQLiteDatabase.setTransactionSuccessful();
        }
        if (z3) {
            yo.dq(sQLiteDatabase);
        }
    }

    public void dq(ArrayList<ds> arrayList) {
        ArrayList arrayList2 = new ArrayList(4);
        ArrayList arrayList3 = new ArrayList(4);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = this.s.getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                Iterator<ds> it = arrayList.iterator();
                ContentValues contentValues = null;
                while (it.hasNext()) {
                    ds next = it.next();
                    String p = next.p();
                    contentValues = next.d(contentValues);
                    next.dq = writableDatabase.insert(p, null, contentValues);
                    if ("event".equals(next.p())) {
                        arrayList3.add(next);
                    } else if ("eventv3".equals(next.p())) {
                        arrayList3.add(next);
                    } else if (next instanceof jw) {
                        arrayList2.add((jw) next);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                yo.dq(writableDatabase);
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = writableDatabase;
                try {
                    jo.d(th);
                } finally {
                    yo.dq(sQLiteDatabase);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void dq(ArrayList<fd> arrayList, ArrayList<fd> arrayList2, ArrayList<fd> arrayList3) {
        SQLiteDatabase writableDatabase;
        SQLiteDatabase sQLiteDatabase = null;
        jo.dq("setResult, " + arrayList + ", " + arrayList2, null);
        Iterator<fd> it = arrayList2.iterator();
        while (it.hasNext()) {
            fd next = it.next();
            if (!arrayList3.contains(next) && Math.abs(System.currentTimeMillis() - next.f713d) > 864000000) {
                arrayList.add(next);
                it.remove();
            }
        }
        try {
            writableDatabase = this.s.getWritableDatabase();
        } catch (Throwable th) {
            th = th;
        }
        try {
            writableDatabase.beginTransaction();
            try {
                Iterator<fd> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    fd next2 = it2.next();
                    if (arrayList3.contains(next2)) {
                        dq(next2, true, writableDatabase, false);
                    } else {
                        writableDatabase.execSQL("DELETE FROM pack WHERE _id=?", new String[]{String.valueOf(next2.dq)});
                    }
                }
            } catch (Throwable th2) {
                jo.d(th2);
            }
            Iterator<fd> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                fd next3 = it3.next();
                if (next3.gh != null) {
                    dq((String) null);
                }
                if (!arrayList3.contains(next3)) {
                    long j = next3.dq;
                    int i = next3.mp + 1;
                    next3.mp = i;
                    writableDatabase.execSQL(dq(j, i));
                }
            }
            writableDatabase.setTransactionSuccessful();
            yo.dq(writableDatabase);
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = writableDatabase;
            try {
                jo.d(th);
            } finally {
                yo.dq(sQLiteDatabase);
            }
        }
    }
}

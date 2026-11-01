package g;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final /* synthetic */ class gkn implements bqq, dbd, fbg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f18312a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18313b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18314c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f18315d;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ gkn(boj bojVar, dwt dwtVar, bto btoVar) {
        this.f18314c = 1;
        this.f18315d = bojVar;
        this.f18312a = dwtVar;
        this.f18313b = (avu) btoVar;
    }

    public /* synthetic */ gkn(cga cgaVar, Object obj, ku kuVar, int i) {
        this.f18314c = i;
        this.f18315d = cgaVar;
        this.f18313b = obj;
        this.f18312a = kuVar;
    }

    public /* synthetic */ gkn(Object obj, Object obj2, Object obj3, int i) {
        this.f18314c = i;
        this.f18315d = obj;
        this.f18312a = obj2;
        this.f18313b = obj3;
    }

    /* JADX WARN: Finally extract failed */
    @Override // g.fbg
    public Object apply(Object obj) {
        long insert;
        cga cgaVar;
        int i = this.f18314c;
        int i2 = 2;
        Object obj2 = this.f18313b;
        Object obj3 = this.f18312a;
        Object obj4 = this.f18315d;
        int i3 = 0;
        int i4 = 1;
        switch (i) {
            case 3:
                cga cgaVar2 = (cga) obj4;
                gfj gfjVar = (gfj) obj2;
                csl cslVar = gfjVar.f18031f;
                String str = gfjVar.f18028c;
                ku kuVar = (ku) obj3;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                long simpleQueryForLong = cgaVar2.m().compileStatement("PRAGMA page_size").simpleQueryForLong() * cgaVar2.m().compileStatement("PRAGMA page_count").simpleQueryForLong();
                gnn gnnVar = cgaVar2.f12810c;
                if (simpleQueryForLong >= gnnVar.f18461d) {
                    cgaVar2.l(1L, gwo.CACHE_FULL, str);
                    return -1L;
                }
                Long i5 = cga.i(sQLiteDatabase, kuVar);
                if (i5 != null) {
                    insert = i5.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", kuVar.f19566a);
                    contentValues.put("priority", Integer.valueOf(eow.c(kuVar.f19568c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = kuVar.f19567b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    insert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int i6 = gnnVar.f18460c;
                byte[] bArr2 = cslVar.f13436b;
                boolean z = bArr2.length <= i6;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(insert));
                contentValues2.put("transport_name", str);
                contentValues2.put("timestamp_ms", Long.valueOf(gfjVar.f18026a));
                contentValues2.put("uptime_ms", Long.valueOf(gfjVar.f18027b));
                contentValues2.put("payload_encoding", cslVar.f13435a.f12749a);
                contentValues2.put(PluginConstants.KEY_ERROR_CODE, gfjVar.f18030e);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put("payload", z ? bArr2 : new byte[0]);
                long insert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int ceil = (int) Math.ceil(bArr2.length / i6);
                    for (int i7 = 1; i7 <= ceil; i7++) {
                        byte[] copyOfRange = Arrays.copyOfRange(bArr2, (i7 - 1) * i6, Math.min(i7 * i6, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(insert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i7));
                        contentValues3.put("bytes", copyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(gfjVar.f18029d).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(insert2));
                    contentValues4.put(abn.EXTRA_UA_APP_NAME, (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(insert2);
            case 4:
                cga cgaVar3 = (cga) obj4;
                ArrayList arrayList = (ArrayList) obj2;
                ku kuVar2 = (ku) obj3;
                Cursor cursor = (Cursor) obj;
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(i3);
                    boolean z2 = cursor.getInt(7) != 0;
                    daw dawVar = new daw(i4);
                    dawVar.f13888g = new HashMap();
                    String string = cursor.getString(i4);
                    if (string == null) {
                        throw new NullPointerException("Null transportName");
                    }
                    dawVar.f13886e = string;
                    dawVar.f13883b = Long.valueOf(cursor.getLong(i2));
                    dawVar.f13885d = Long.valueOf(cursor.getLong(3));
                    if (z2) {
                        String string2 = cursor.getString(4);
                        dawVar.f13882a = new csl(string2 == null ? cga.f12808a : new cep(string2), cursor.getBlob(5));
                        cgaVar = cgaVar3;
                    } else {
                        String string3 = cursor.getString(4);
                        cep cepVar = string3 == null ? cga.f12808a : new cep(string3);
                        Cursor query = cgaVar3.m().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int i8 = 0;
                            while (query.moveToNext()) {
                                byte[] blob = query.getBlob(i3);
                                arrayList2.add(blob);
                                i8 += blob.length;
                            }
                            byte[] bArr3 = new byte[i8];
                            int i9 = 0;
                            int i10 = 0;
                            while (i10 < arrayList2.size()) {
                                byte[] bArr4 = (byte[]) arrayList2.get(i10);
                                ArrayList arrayList3 = arrayList2;
                                cga cgaVar4 = cgaVar3;
                                System.arraycopy(bArr4, 0, bArr3, i9, bArr4.length);
                                i9 += bArr4.length;
                                i10++;
                                arrayList2 = arrayList3;
                                cgaVar3 = cgaVar4;
                            }
                            cgaVar = cgaVar3;
                            query.close();
                            dawVar.f13882a = new csl(cepVar, bArr3);
                        } catch (Throwable th) {
                            query.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        dawVar.f13887f = Integer.valueOf(cursor.getInt(6));
                    }
                    arrayList.add(new ess(j, kuVar2, dawVar.y()));
                    cgaVar3 = cgaVar;
                    i2 = 2;
                    i3 = 0;
                    i4 = 1;
                }
                return null;
            default:
                cga cgaVar5 = (cga) obj4;
                HashMap hashMap = (HashMap) obj3;
                duw duwVar = (duw) obj2;
                Cursor cursor2 = (Cursor) obj;
                cgaVar5.getClass();
                while (cursor2.moveToNext()) {
                    String string4 = cursor2.getString(0);
                    int i11 = cursor2.getInt(1);
                    gwo gwoVar = gwo.REASON_UNKNOWN;
                    if (i11 != gwoVar.b()) {
                        gwo gwoVar2 = gwo.MESSAGE_TOO_OLD;
                        if (i11 != gwoVar2.b()) {
                            gwoVar2 = gwo.CACHE_FULL;
                            if (i11 != gwoVar2.b()) {
                                gwoVar2 = gwo.PAYLOAD_TOO_BIG;
                                if (i11 != gwoVar2.b()) {
                                    gwoVar2 = gwo.MAX_RETRIES_REACHED;
                                    if (i11 != gwoVar2.b()) {
                                        gwoVar2 = gwo.INVALID_PAYLOD;
                                        if (i11 != gwoVar2.b()) {
                                            gwoVar2 = gwo.SERVER_ERROR;
                                            if (i11 != gwoVar2.b()) {
                                                baf.ax("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i11));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        gwoVar = gwoVar2;
                    }
                    long j2 = cursor2.getLong(2);
                    if (!hashMap.containsKey(string4)) {
                        hashMap.put(string4, new ArrayList());
                    }
                    ((List) hashMap.get(string4)).add(new gvb(j2, gwoVar));
                }
                for (Map.Entry entry2 : hashMap.entrySet()) {
                    int i12 = azl.f11116a;
                    new ArrayList();
                    ((ArrayList) duwVar.f14864d).add(new azl((String) entry2.getKey(), Collections.unmodifiableList((List) entry2.getValue())));
                }
                long l = cgaVar5.f12813f.l();
                SQLiteDatabase m = cgaVar5.m();
                m.beginTransaction();
                try {
                    Cursor rawQuery = m.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                    try {
                        rawQuery.moveToNext();
                        byy byyVar = new byy(rawQuery.getLong(0), l);
                        rawQuery.close();
                        m.setTransactionSuccessful();
                        m.endTransaction();
                        duwVar.h = byyVar;
                        duwVar.f14865e = new fnn(new edr(cgaVar5.m().compileStatement("PRAGMA page_size").simpleQueryForLong() * cgaVar5.m().compileStatement("PRAGMA page_count").simpleQueryForLong(), gnn.f18458a.f18461d));
                        duwVar.f14866f = (String) cgaVar5.f12811d.get();
                        return new dwq((byy) duwVar.h, Collections.unmodifiableList((ArrayList) duwVar.f14864d), (fnn) duwVar.f14865e, (String) duwVar.f14866f);
                    } catch (Throwable th2) {
                        rawQuery.close();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    m.endTransaction();
                    throw th3;
                }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [g.avu, g.bto] */
    @Override // g.dbd
    public Object g(eje ejeVar) {
        switch (this.f18314c) {
            case 1:
                boj bojVar = (boj) this.f18315d;
                dwt dwtVar = (dwt) this.f18312a;
                ?? r2 = (avu) this.f18313b;
                fvi fviVar = new fvi(15, (dta) bojVar._x(dwm.o));
                fj fjVar = fj.INSTANCE;
                frr frrVar = ejeVar.f15642d;
                if (frrVar != null) {
                    frrVar.addListener(fviVar, fjVar);
                }
                return baf.al(aky.q(bojVar), null, dwtVar, new hdz(r2, ejeVar, null), 1);
            default:
                Executor executor = (Executor) this.f18315d;
                String str = (String) this.f18312a;
                cvw cvwVar = (cvw) this.f18313b;
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                td tdVar = new td(0, atomicBoolean);
                fj fjVar2 = fj.INSTANCE;
                frr frrVar2 = ejeVar.f15642d;
                if (frrVar2 != null) {
                    frrVar2.addListener(tdVar, fjVar2);
                }
                executor.execute(new gtt(atomicBoolean, ejeVar, cvwVar, 5));
                return str;
        }
    }

    @Override // g.bqq
    public Object i() {
        fyn fynVar = (fyn) this.f18315d;
        ku kuVar = (ku) this.f18312a;
        gfj gfjVar = (gfj) this.f18313b;
        cga cgaVar = (cga) fynVar.f17644b;
        cgaVar.getClass();
        cq cqVar = kuVar.f19568c;
        if (Log.isLoggable(baf.as("SQLiteEventStore"), 3)) {
            new StringBuilder("Storing event with priority=").append(cqVar);
        }
        ((Long) cgaVar.j(new gkn(cgaVar, (Object) gfjVar, kuVar, 3))).getClass();
        fynVar.f17646d.d(kuVar, 1, false);
        return null;
    }
}

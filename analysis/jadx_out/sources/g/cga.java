package g;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class cga implements ahy, ddc, gv {

    /* renamed from: a, reason: collision with root package name */
    public static final cep f12808a = new cep("proto");

    /* renamed from: b, reason: collision with root package name */
    public final cqi f12809b;

    /* renamed from: c, reason: collision with root package name */
    public final gnn f12810c;

    /* renamed from: d, reason: collision with root package name */
    public final fcc f12811d;

    /* renamed from: e, reason: collision with root package name */
    public final hdu f12812e;

    /* renamed from: f, reason: collision with root package name */
    public final cqi f12813f;

    public cga(cqi cqiVar, cqi cqiVar2, gnn gnnVar, hdu hduVar, fcc fccVar) {
        this.f12812e = hduVar;
        this.f12813f = cqiVar;
        this.f12809b = cqiVar2;
        this.f12810c = gnnVar;
        this.f12811d = fccVar;
    }

    public static String g(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((ess) it.next()).f16097a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object h(Cursor cursor, fbg fbgVar) {
        try {
            return fbgVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public static Long i(SQLiteDatabase sQLiteDatabase, ku kuVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(kuVar.f19566a, String.valueOf(eow.c(kuVar.f19568c))));
        byte[] bArr = kuVar.f19567b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{ada.COLUMN_ID}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !query.moveToNext() ? null : Long.valueOf(query.getLong(0));
        } finally {
            query.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12812e.close();
    }

    public final Object j(fbg fbgVar) {
        SQLiteDatabase m = m();
        m.beginTransaction();
        try {
            Object apply = fbgVar.apply(m);
            m.setTransactionSuccessful();
            return apply;
        } finally {
            m.endTransaction();
        }
    }

    public final ArrayList k(SQLiteDatabase sQLiteDatabase, ku kuVar, int i) {
        ArrayList arrayList = new ArrayList();
        Long i2 = i(sQLiteDatabase, kuVar);
        if (i2 == null) {
            return arrayList;
        }
        h(sQLiteDatabase.query("events", new String[]{ada.COLUMN_ID, "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", PluginConstants.KEY_ERROR_CODE, "inline"}, "context_id = ?", new String[]{i2.toString()}, null, null, null, String.valueOf(i)), new gkn(this, (Object) arrayList, kuVar, 4));
        return arrayList;
    }

    public final void l(long j, gwo gwoVar, String str) {
        j(new erk(j, str, gwoVar));
    }

    public final SQLiteDatabase m() {
        hdu hduVar = this.f12812e;
        Objects.requireNonNull(hduVar);
        cqi cqiVar = this.f12809b;
        long l = cqiVar.l();
        while (true) {
            try {
                return hduVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e2) {
                if (cqiVar.l() >= this.f12810c.f18463f + l) {
                    throw new fqw("Timed out while trying to open db.", e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final Object n(bqq bqqVar) {
        SQLiteDatabase m = m();
        cqi cqiVar = this.f12809b;
        long l = cqiVar.l();
        while (true) {
            try {
                m.beginTransaction();
                try {
                    Object i = bqqVar.i();
                    m.setTransactionSuccessful();
                    return i;
                } finally {
                    m.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e2) {
                if (cqiVar.l() >= this.f12810c.f18463f + l) {
                    throw new fqw("Timed out while trying to acquire the lock.", e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}

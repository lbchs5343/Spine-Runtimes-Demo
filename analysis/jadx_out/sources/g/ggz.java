package g;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class ggz extends aiq {
    public final ayx q;
    public final fmk r;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f18137c = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18136b = {LiveConfigKey.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    public static final String[] k = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", dgk.UNIT_DAY, "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f18138g = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    public static final String[] j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    public static final String[] h = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] p = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] o = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    public ggz(bsz bszVar) {
        super(bszVar);
        this.r = new fmk(((cyg) this.z).f13743ab);
        ((cyg) this.z).getClass();
        this.q = new ayx(this, ((cyg) this.z).v);
    }

    public static final void s(ContentValues contentValues, Object obj) {
        ckd.bf("value");
        ckd.k(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ffu al(String str, String str2) {
        Throwable th;
        String str3;
        String str4;
        SQLiteException sQLiteException;
        Cursor cursor;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        n();
        Cursor cursor2 = null;
        try {
            cursor = bg().query("user_attributes", new String[]{"set_timestamp", "value", LiveConfigKey.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j2 = cursor.getLong(0);
                    Object be = be(cursor, 1);
                    if (be == null) {
                        cursor.close();
                        return null;
                    }
                    str3 = str;
                    str4 = str2;
                    try {
                        ffu ffuVar = new ffu(str3, cursor.getString(2), str4, j2, be);
                        if (cursor.moveToNext()) {
                            bgm bgmVar = cygVar.z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.i(bgm.t(str3), "Got multiple records for user property, expected one. appId");
                        }
                        cursor.close();
                        return ffuVar;
                    } catch (SQLiteException e2) {
                        e = e2;
                        sQLiteException = e;
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.f("Error querying user property. appId", bgm.t(str3), cygVar.af.i(str4), sQLiteException);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (SQLiteException e3) {
                    e = e3;
                    str3 = str;
                    str4 = str2;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    throw th;
                }
                cursor2.close();
                throw th;
            }
        } catch (SQLiteException e4) {
            str3 = str;
            str4 = str2;
            sQLiteException = e4;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
        }
    }

    public final long am(String str) {
        long bd;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf("first_open_count");
        _e();
        n();
        SQLiteDatabase bg = bg();
        bg.beginTransaction();
        long j2 = 0;
        try {
            try {
                bd = bd("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
                if (bd == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(PluginConstants.KEY_APP_ID, str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (bg.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.e(bgm.t(str), "Failed to insert column (got -1). appId", "first_open_count");
                        return -1L;
                    }
                    bd = 0;
                }
            } catch (SQLiteException e2) {
                e = e2;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put(PluginConstants.KEY_APP_ID, str);
                contentValues2.put("first_open_count", Long.valueOf(1 + bd));
                if (bg.update("app2", contentValues2, "app_id = ?", new String[]{str}) != 0) {
                    bg.setTransactionSuccessful();
                    return bd;
                }
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.e(bgm.t(str), "Failed to update column (got 0). appId", "first_open_count");
                return -1L;
            } catch (SQLiteException e3) {
                e = e3;
                j2 = bd;
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11518b.f("Error inserting column. appId", bgm.t(str), "first_open_count", e);
                return j2;
            }
        } finally {
            bg.endTransaction();
        }
    }

    public final void an() {
        n();
        bg().endTransaction();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ee  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ao(long j2, long j3, dkh dkhVar) {
        String string;
        String str;
        String[] strArr;
        cyg cygVar = (cyg) this.z;
        ?? r4 = "select app_id, metadata_fingerprint from raw_events where ";
        _e();
        n();
        ?? r5 = 0;
        String str2 = null;
        try {
            try {
                SQLiteDatabase bg = bg();
                try {
                    if (TextUtils.isEmpty(null)) {
                        Cursor rawQuery = bg.rawQuery("select app_id, metadata_fingerprint from raw_events where " + (j3 != -1 ? "rowid <= ? and " : "") + "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", j3 != -1 ? new String[]{String.valueOf(j3), String.valueOf(j2)} : new String[]{String.valueOf(j2)});
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        } else {
                            str2 = rawQuery.getString(0);
                            string = rawQuery.getString(1);
                            rawQuery.close();
                        }
                    } else {
                        Cursor rawQuery2 = bg.rawQuery("select metadata_fingerprint from raw_events where app_id = ?" + (j3 != -1 ? " and rowid <= ?" : "") + " order by rowid limit 1;", j3 != -1 ? new String[]{null, String.valueOf(j3)} : new String[]{null});
                        if (!rawQuery2.moveToFirst()) {
                            rawQuery2.close();
                            return;
                        } else {
                            string = rawQuery2.getString(0);
                            rawQuery2.close();
                        }
                    }
                    Cursor query = bg.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str2, string}, null, null, "rowid", "2");
                    if (!query.moveToFirst()) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(bgm.t(str2), "Raw event metadata record is missing. appId");
                        query.close();
                        return;
                    }
                    try {
                        fzb fzbVar = (fzb) ((epg) fit.j(fzb.bh(), query.getBlob(0))).o();
                        if (query.moveToNext()) {
                            bgm bgmVar2 = cygVar.z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11520g.i(bgm.t(str2), "Get multiple raw event metadata records, expected one. appId");
                        }
                        query.close();
                        dkhVar.f14306d = fzbVar;
                        if (j3 != -1) {
                            str = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                            strArr = new String[]{str2, string, String.valueOf(j3)};
                        } else {
                            str = "app_id = ? and metadata_fingerprint = ?";
                            strArr = new String[]{str2, string};
                        }
                        Cursor query2 = bg.query("raw_events", new String[]{"rowid", abn.EXTRA_UA_APP_NAME, "timestamp", "data"}, str, strArr, null, null, "rowid", null);
                        if (!query2.moveToFirst()) {
                            bgm bgmVar3 = cygVar.z;
                            cyg.ak(bgmVar3);
                            bgmVar3.f11520g.i(bgm.t(str2), "Raw event data disappeared while in transaction. appId");
                            query2.close();
                            return;
                        }
                        do {
                            long j4 = query2.getLong(0);
                            try {
                                btw btwVar = (btw) fit.j(kk.g(), query2.getBlob(3));
                                btwVar.a(query2.getString(1));
                                long j5 = query2.getLong(2);
                                if (btwVar.i) {
                                    btwVar.p();
                                    btwVar.i = false;
                                }
                                kk.b(j5, (kk) btwVar.k);
                                if (!dkhVar.i(j4, (kk) btwVar.o())) {
                                    query2.close();
                                    return;
                                }
                            } catch (IOException e2) {
                                bgm bgmVar4 = cygVar.z;
                                cyg.ak(bgmVar4);
                                bgmVar4.f11518b.e(bgm.t(str2), "Data loss. Failed to merge raw event. appId", e2);
                            }
                        } while (query2.moveToNext());
                        query2.close();
                    } catch (IOException e3) {
                        bgm bgmVar5 = cygVar.z;
                        cyg.ak(bgmVar5);
                        bgmVar5.f11518b.e(bgm.t(str2), "Data loss. Failed to merge raw event metadata. appId", e3);
                        query.close();
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                    bgm bgmVar6 = cygVar.z;
                    cyg.ak(bgmVar6);
                    bgmVar6.f11518b.e(bgm.t(null), "Data loss. Error selecting raw event. appId", e);
                    if (r4 != 0) {
                        r4.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                r5 = "select app_id, metadata_fingerprint from raw_events where ";
                if (r5 != 0) {
                    r5.close();
                }
                throw th;
            }
        } catch (SQLiteException e5) {
            e = e5;
            r4 = 0;
        } catch (Throwable th2) {
            th = th2;
            if (r5 != 0) {
            }
            throw th;
        }
    }

    public final void ap() {
        n();
        bg().beginTransaction();
    }

    public final void aq(String str, String str2) {
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        n();
        try {
            bg().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.f("Error deleting user property. appId", bgm.t(str), cygVar.af.i(str2), e2);
        }
    }

    public final long ar(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = bg().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = rawQuery.getLong(0);
                rawQuery.close();
                return j2;
            } catch (SQLiteException e2) {
                bgm bgmVar = ((cyg) this.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.e(str, "Database error", e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final bwz as(String str, String str2) {
        Cursor cursor;
        Boolean bool;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        n();
        Cursor cursor2 = null;
        try {
            cursor = bg().query("events", (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j2 = cursor.getLong(0);
                    long j3 = cursor.getLong(1);
                    long j4 = cursor.getLong(2);
                    long j5 = cursor.isNull(3) ? 0L : cursor.getLong(3);
                    Long valueOf = cursor.isNull(4) ? null : Long.valueOf(cursor.getLong(4));
                    Long valueOf2 = cursor.isNull(5) ? null : Long.valueOf(cursor.getLong(5));
                    Long valueOf3 = cursor.isNull(6) ? null : Long.valueOf(cursor.getLong(6));
                    if (cursor.isNull(7)) {
                        bool = null;
                    } else {
                        bool = Boolean.valueOf(cursor.getLong(7) == 1);
                    }
                    bwz bwzVar = new bwz(str, str2, j2, j3, cursor.isNull(8) ? 0L : cursor.getLong(8), j4, j5, valueOf, valueOf2, valueOf3, bool);
                    if (cursor.moveToNext()) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(bgm.t(str), "Got multiple records for event aggregates, expected one. appId");
                    }
                    cursor.close();
                    return bwzVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.f("Error querying events. appId", bgm.t(str), cygVar.af.f(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final void at() {
        cyg cygVar = (cyg) this.z;
        _e();
        n();
        if (cygVar.v.getDatabasePath("google_app_measurement.db").exists()) {
            bsz bszVar = this.f10133a;
            long f2 = bszVar.y.h.f();
            cygVar.f13743ab.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(elapsedRealtime - f2) > ((Long) gad.l.h(null)).longValue()) {
                bszVar.y.h.g(elapsedRealtime);
                _e();
                n();
                if (cygVar.v.getDatabasePath("google_app_measurement.db").exists()) {
                    SQLiteDatabase bg = bg();
                    cygVar.f13743ab.getClass();
                    int delete = bg.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(((Long) gad.f17776ab.h(null)).longValue())});
                    if (delete > 0) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11519c.i(Integer.valueOf(delete), "Deleted stale rows. rowsDeleted");
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final bou au(String str, String str2) {
        String str3;
        Cursor cursor;
        bsz bszVar = this.f10133a;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        n();
        Cursor cursor2 = null;
        try {
            cursor = bg().query("conditional_properties", new String[]{LiveConfigKey.ORIGIN, "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    String str4 = string;
                    Object be = be(cursor, 1);
                    boolean z = cursor.getInt(2) != 0;
                    String string2 = cursor.getString(3);
                    long j2 = cursor.getLong(4);
                    fit fitVar = bszVar.f12159e;
                    fit fitVar2 = bszVar.f12159e;
                    bsz.ag(fitVar);
                    byte[] blob = cursor.getBlob(5);
                    Parcelable.Creator<ctf> creator = ctf.CREATOR;
                    ctf ctfVar = (ctf) fitVar.ap(blob, creator);
                    long j3 = cursor.getLong(6);
                    bsz.ag(fitVar2);
                    ctf ctfVar2 = (ctf) fitVar2.ap(cursor.getBlob(7), creator);
                    long j4 = cursor.getLong(8);
                    long j5 = cursor.getLong(9);
                    bsz.ag(fitVar2);
                    str3 = str2;
                    try {
                        bou bouVar = new bou(str, str4, new cmd(str3, j4, be, str4), j3, z, string2, ctfVar, j2, ctfVar2, j5, (ctf) fitVar2.ap(cursor.getBlob(10), creator));
                        if (cursor.moveToNext()) {
                            bgm bgmVar = cygVar.z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.e(bgm.t(str), "Got multiple records for conditional property, expected one", cygVar.af.i(str3));
                        }
                        cursor.close();
                        return bouVar;
                    } catch (SQLiteException e2) {
                        e = e2;
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.f("Error querying conditional property", bgm.t(str), cygVar.af.i(str3), e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (SQLiteException e3) {
                    e = e3;
                    str3 = str2;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            str3 = str2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final void av() {
        n();
        bg().setTransactionSuccessful();
    }

    public final void aw(ArrayList arrayList) {
        cyg cygVar = (cyg) this.z;
        _e();
        n();
        ckd.k(arrayList);
        if (arrayList.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        if (cygVar.v.getDatabasePath("google_app_measurement.db").exists()) {
            String ad = tn.ad("(", TextUtils.join(",", arrayList), ")");
            if (ar("SELECT COUNT(1) FROM queue WHERE rowid IN " + ad + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.h("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                bg().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + ad + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e2) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.i(e2, "Error incrementing retry count. error");
            }
        }
    }

    public final void ax(cyo cyoVar) {
        cyg cygVar = (cyg) this.z;
        _e();
        n();
        String bi = cyoVar.bi();
        ckd.k(bi);
        ContentValues contentValues = new ContentValues();
        contentValues.put(PluginConstants.KEY_APP_ID, bi);
        contentValues.put("app_instance_id", cyoVar.al());
        contentValues.put("gmp_app_id", cyoVar.ay());
        cyg cygVar2 = cyoVar.k;
        fth fthVar = cygVar2.j;
        cyg.ak(fthVar);
        fthVar._e();
        contentValues.put("resettable_device_id_hash", cyoVar.j);
        fth fthVar2 = cygVar2.j;
        cyg.ak(fthVar2);
        fthVar2._e();
        contentValues.put("last_bundle_index", Long.valueOf(cyoVar.ad));
        fth fthVar3 = cygVar2.j;
        cyg.ak(fthVar3);
        fthVar3._e();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(cyoVar.f13769b));
        fth fthVar4 = cygVar2.j;
        cyg.ak(fthVar4);
        fthVar4._e();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(cyoVar.u));
        contentValues.put("app_version", cyoVar.ai());
        fth fthVar5 = cygVar2.j;
        cyg.ak(fthVar5);
        fthVar5._e();
        contentValues.put("app_store", cyoVar.i);
        fth fthVar6 = cygVar2.j;
        cyg.ak(fthVar6);
        fthVar6._e();
        contentValues.put("gmp_version", Long.valueOf(cyoVar.t));
        fth fthVar7 = cygVar2.j;
        cyg.ak(fthVar7);
        fthVar7._e();
        contentValues.put("dev_cert_hash", Long.valueOf(cyoVar.f13773f));
        fth fthVar8 = cygVar2.j;
        cyg.ak(fthVar8);
        fthVar8._e();
        contentValues.put("measurement_enabled", Boolean.valueOf(cyoVar.f13771d));
        fth fthVar9 = cygVar2.j;
        cyg.ak(fthVar9);
        fthVar9._e();
        contentValues.put(dgk.UNIT_DAY, Long.valueOf(cyoVar.o));
        fth fthVar10 = cygVar2.j;
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("daily_public_events_count", Long.valueOf(cyoVar.p));
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("daily_events_count", Long.valueOf(cyoVar.ac));
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("daily_conversions_count", Long.valueOf(cyoVar.f13772e));
        fth fthVar11 = cygVar2.j;
        cyg.ak(fthVar11);
        fthVar11._e();
        contentValues.put("config_fetched_time", Long.valueOf(cyoVar.m));
        fth fthVar12 = cygVar2.j;
        cyg.ak(fthVar12);
        fthVar12._e();
        contentValues.put("failed_config_fetch_time", Long.valueOf(cyoVar.f13768ab));
        contentValues.put("app_version_int", Long.valueOf(cyoVar.ao()));
        contentValues.put("firebase_instance_id", cyoVar.bk());
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("daily_error_events_count", Long.valueOf(cyoVar.f13767a));
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("daily_realtime_events_count", Long.valueOf(cyoVar.y));
        cyg.ak(fthVar10);
        fthVar10._e();
        contentValues.put("health_monitor_sample", cyoVar.h);
        fth fthVar13 = cygVar2.j;
        cyg.ak(fthVar13);
        fthVar13._e();
        contentValues.put("android_id", (Long) 0L);
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(cyoVar.bg()));
        contentValues.put("admob_app_id", cyoVar.at());
        contentValues.put("dynamite_version", Long.valueOf(cyoVar.au()));
        fth fthVar14 = cygVar2.j;
        cyg.ak(fthVar14);
        fthVar14._e();
        contentValues.put("session_stitching_token", cyoVar.l);
        fth fthVar15 = cygVar2.j;
        cyg.ak(fthVar15);
        fthVar15._e();
        ArrayList arrayList = cyoVar.z;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.i(bi, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        ((hdr) eaj.f15185a.f15186b.zza()).getClass();
        dsd dsdVar = cygVar.f13747e;
        bgm bgmVar2 = cygVar.z;
        if (dsdVar.g(null, gad.bl) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        try {
            SQLiteDatabase bg = bg();
            if (bg.update("apps", contentValues, "app_id = ?", new String[]{bi}) == 0 && bg.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.i(bgm.t(bi), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e2) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(bi), "Error storing app. appId", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0221  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final cyo ay(String str) {
        String str2;
        Cursor cursor;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        _e();
        n();
        Cursor cursor2 = null;
        try {
            cursor = bg().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", dgk.UNIT_DAY, "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    str2 = str;
                    try {
                        cyo cyoVar = new cyo(this.f10133a.m, str2);
                        cyg cygVar2 = cyoVar.k;
                        cyoVar.bj(cursor.getString(0));
                        cyoVar.bo(cursor.getString(1));
                        cyoVar.ak(cursor.getString(2));
                        cyoVar.av(cursor.getLong(3));
                        cyoVar.aw(cursor.getLong(4));
                        cyoVar.as(cursor.getLong(5));
                        cyoVar.aq(cursor.getString(6));
                        cyoVar.an(cursor.getString(7));
                        cyoVar.az(cursor.getLong(8));
                        cyoVar.am(cursor.getLong(9));
                        cyoVar.bm(cursor.isNull(10) || cursor.getInt(10) != 0);
                        cyoVar.bb(cursor.getLong(11));
                        cyoVar.ah(cursor.getLong(12));
                        cyoVar.be(cursor.getLong(13));
                        cyoVar.ag(cursor.getLong(14));
                        cyoVar.bn(cursor.getLong(15));
                        cyoVar.ba(cursor.getLong(16));
                        cyoVar.ax(cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                        cyoVar.bf(cursor.getString(18));
                        cyoVar.bc(cursor.getLong(19));
                        cyoVar.ap(cursor.getLong(20));
                        cyoVar.bh(cursor.getString(21));
                        boolean z = cursor.isNull(23) || cursor.getInt(23) != 0;
                        fth fthVar = cygVar2.j;
                        cyg.ak(fthVar);
                        fthVar._e();
                        cyoVar.n |= cyoVar.s != z;
                        cyoVar.s = z;
                        cyoVar.bd(cursor.getString(24));
                        cyoVar.aj(cursor.isNull(25) ? 0L : cursor.getLong(25));
                        if (!cursor.isNull(26)) {
                            cyoVar.af(Arrays.asList(cursor.getString(26).split(",", -1)));
                        }
                        eur.c();
                        if (cygVar.f13747e.g(null, gad.o)) {
                            String string = cursor.getString(28);
                            fth fthVar2 = cygVar2.j;
                            cyg.ak(fthVar2);
                            fthVar2._e();
                            cyoVar.n = (true ^ kj.s(cyoVar.l, string)) | cyoVar.n;
                            cyoVar.l = string;
                        }
                        fth fthVar3 = cygVar2.j;
                        cyg.ak(fthVar3);
                        fthVar3._e();
                        cyoVar.n = false;
                        if (cursor.moveToNext()) {
                            bgm bgmVar = cygVar.z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.i(bgm.t(str2), "Got multiple records for app, expected one. appId");
                        }
                        cursor.close();
                        return cyoVar;
                    } catch (SQLiteException e2) {
                        e = e2;
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.e(bgm.t(str2), "Error querying app. appId", e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e3) {
                e = e3;
                str2 = str;
            }
        } catch (SQLiteException e4) {
            e = e4;
            str2 = str;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
    
        r0 = r2.z;
        g.cyg.ak(r0);
        r0.f11518b.i(1000, "Read more than the max allowed conditional properties, ignoring extra");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List az(String str, String[] strArr) {
        bsz bszVar = this.f10133a;
        cyg cygVar = (cyg) this.z;
        _e();
        n();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase bg = bg();
                String[] strArr2 = {PluginConstants.KEY_APP_ID, LiveConfigKey.ORIGIN, abn.EXTRA_UA_APP_NAME, "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"};
                cygVar.getClass();
                cursor = bg.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", "1001");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                while (true) {
                    if (arrayList.size() >= 1000) {
                        break;
                    }
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    String string3 = cursor.getString(2);
                    Object be = be(cursor, 3);
                    boolean z = cursor.getInt(4) != 0;
                    String string4 = cursor.getString(5);
                    long j2 = cursor.getLong(6);
                    fit fitVar = bszVar.f12159e;
                    fit fitVar2 = bszVar.f12159e;
                    bsz.ag(fitVar);
                    byte[] blob = cursor.getBlob(7);
                    Parcelable.Creator<ctf> creator = ctf.CREATOR;
                    ctf ctfVar = (ctf) fitVar.ap(blob, creator);
                    long j3 = cursor.getLong(8);
                    bsz.ag(fitVar2);
                    ctf ctfVar2 = (ctf) fitVar2.ap(cursor.getBlob(9), creator);
                    long j4 = cursor.getLong(10);
                    long j5 = cursor.getLong(11);
                    bsz.ag(fitVar2);
                    arrayList.add(new bou(string, string2, new cmd(string3, j4, be, string2), j3, z, string4, ctfVar, j2, ctfVar2, j5, (ctf) fitVar2.ap(cursor.getBlob(12), creator)));
                    if (!cursor.moveToNext()) {
                        break;
                    }
                }
                cursor.close();
                return arrayList;
            } catch (SQLiteException e2) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.i(e2, "Error querying conditional user property value");
                List list = Collections.EMPTY_LIST;
                if (cursor != null) {
                    cursor.close();
                }
                return list;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String ba() {
        SQLiteException e2;
        Cursor cursor;
        SQLiteDatabase bg = bg();
        ?? r1 = 0;
        try {
            try {
                cursor = bg.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(0);
                    cursor.close();
                    return string;
                } catch (SQLiteException e3) {
                    e2 = e3;
                    bgm bgmVar = ((cyg) this.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.i(e2, "Database error getting next bundle app id");
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                r1 = bg;
                th = th;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e2 = e4;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a8, code lost:
    
        g.cyg.ak(r13);
        r13.f11518b.i(1000, "Read more than the max allowed user properties, ignoring excess");
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List bb(String str, String str2, String str3) {
        Cursor cursor;
        String str4;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        _e();
        n();
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList(3);
            String str5 = str;
            arrayList2.add(str5);
            StringBuilder sb = new StringBuilder("app_id=?");
            if (!TextUtils.isEmpty(str2)) {
                arrayList2.add(str2);
                sb.append(" and origin=?");
            }
            if (!TextUtils.isEmpty(str3)) {
                arrayList2.add(str3 + "*");
                sb.append(" and name glob ?");
            }
            String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            SQLiteDatabase bg = bg();
            String[] strArr2 = {abn.EXTRA_UA_APP_NAME, "set_timestamp", "value", LiveConfigKey.ORIGIN};
            String sb2 = sb.toString();
            cygVar.getClass();
            bgm bgmVar = cygVar.z;
            Cursor query = bg.query("user_attributes", strArr2, sb2, strArr, null, null, "rowid", "1001");
            try {
                try {
                    if (!query.moveToFirst()) {
                        query.close();
                        return arrayList;
                    }
                    str4 = str2;
                    while (true) {
                        try {
                            if (arrayList.size() < 1000) {
                                String string = query.getString(0);
                                long j2 = query.getLong(1);
                                Object be = be(query, 2);
                                String string2 = query.getString(3);
                                if (be == null) {
                                    try {
                                        cyg.ak(bgmVar);
                                        bgmVar.f11518b.f("(2)Read invalid user property value, ignoring it", bgm.t(str5), string2, str3);
                                    } catch (SQLiteException e2) {
                                        e = e2;
                                        cursor = query;
                                        str4 = string2;
                                        try {
                                            bgm bgmVar2 = cygVar.z;
                                            cyg.ak(bgmVar2);
                                            bgmVar2.f11518b.f("(2)Error querying user properties", bgm.t(str), str4, e);
                                            List list = Collections.EMPTY_LIST;
                                            if (cursor != null) {
                                            }
                                            return list;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } else {
                                    arrayList.add(new ffu(str5, string2, string, j2, be));
                                }
                                if (!query.moveToNext()) {
                                    break;
                                }
                                str5 = str;
                                str4 = string2;
                            } else {
                                break;
                            }
                        } catch (SQLiteException e3) {
                            e = e3;
                            cursor = query;
                            bgm bgmVar22 = cygVar.z;
                            cyg.ak(bgmVar22);
                            bgmVar22.f11518b.f("(2)Error querying user properties", bgm.t(str), str4, e);
                            List list2 = Collections.EMPTY_LIST;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return list2;
                        }
                    }
                    query.close();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                    }
                    throw th;
                }
            } catch (SQLiteException e4) {
                e = e4;
                str4 = str2;
            }
        } catch (SQLiteException e5) {
            e = e5;
            str4 = str2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public final boolean bc(ffu ffuVar) {
        cyg cygVar = (cyg) this.z;
        String str = ffuVar.f16727d;
        _e();
        n();
        String str2 = ffuVar.f16726c;
        String str3 = ffuVar.f16728e;
        if (al(str2, str3) == null) {
            if (dkq.t(str3)) {
                if (ar("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str2}) >= Math.max(Math.min(cygVar.f13747e.k(str2, gad.p), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str3)) {
                long ar = ar("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str2, str});
                cygVar.getClass();
                if (ar >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PluginConstants.KEY_APP_ID, str2);
        contentValues.put(LiveConfigKey.ORIGIN, str);
        contentValues.put(abn.EXTRA_UA_APP_NAME, str3);
        contentValues.put("set_timestamp", Long.valueOf(ffuVar.f16724a));
        s(contentValues, ffuVar.f16725b);
        try {
            if (bg().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(bgm.t(str2), "Failed to insert/update user property (got -1). appId");
            return true;
        } catch (SQLiteException e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(str2), "Error storing user property. appId", e2);
            return true;
        }
    }

    public final long bd(String str, String[] strArr, long j2) {
        Cursor cursor = null;
        try {
            try {
                cursor = bg().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j2;
                }
                long j3 = cursor.getLong(0);
                cursor.close();
                return j3;
            } catch (SQLiteException e2) {
                bgm bgmVar = ((cyg) this.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.e(str, "Database error", e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final Object be(Cursor cursor, int i) {
        cyg cygVar = (cyg) this.z;
        int type = cursor.getType(i);
        if (type == 0) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.i(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
            return null;
        }
        bgm bgmVar3 = cygVar.z;
        cyg.ak(bgmVar3);
        bgmVar3.f11518b.h("Loaded invalid blob type value, ignoring it");
        return null;
    }

    public final List bf(String str) {
        String str2;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        _e();
        n();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cygVar.getClass();
                cursor = bg().query("user_attributes", new String[]{abn.EXTRA_UA_APP_NAME, LiveConfigKey.ORIGIN, "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return arrayList;
                    }
                    while (true) {
                        String string = cursor.getString(0);
                        String string2 = cursor.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str3 = string2;
                        long j2 = cursor.getLong(2);
                        Object be = be(cursor, 3);
                        if (be == null) {
                            bgm bgmVar = cygVar.z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.i(bgm.t(str), "Read invalid user property value, ignoring it. appId");
                            str2 = str;
                        } else {
                            str2 = str;
                            try {
                                arrayList.add(new ffu(str2, str3, string, j2, be));
                            } catch (SQLiteException e2) {
                                e = e2;
                                bgm bgmVar2 = cygVar.z;
                                cyg.ak(bgmVar2);
                                bgmVar2.f11518b.e(bgm.t(str2), "Error querying user properties. appId", e);
                                List list = Collections.EMPTY_LIST;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return list;
                            }
                        }
                        if (!cursor.moveToNext()) {
                            cursor.close();
                            return arrayList;
                        }
                        str = str2;
                    }
                } catch (SQLiteException e3) {
                    e = e3;
                    str2 = str;
                }
            } finally {
            }
        } catch (SQLiteException e4) {
            e = e4;
            str2 = str;
        }
    }

    public final SQLiteDatabase bg() {
        _e();
        try {
            return this.q.getWritableDatabase();
        } catch (SQLiteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error opening database");
            throw e2;
        }
    }

    public final void bh(String str, String str2) {
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        n();
        try {
            bg().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.f("Error deleting conditional property", bgm.t(str), cygVar.af.i(str2), e2);
        }
    }

    public final void bi(bwz bwzVar) {
        cyg cygVar = (cyg) this.z;
        ckd.k(bwzVar);
        _e();
        n();
        ContentValues contentValues = new ContentValues();
        String str = bwzVar.f12353e;
        contentValues.put(PluginConstants.KEY_APP_ID, str);
        contentValues.put(abn.EXTRA_UA_APP_NAME, bwzVar.h);
        contentValues.put("lifetime_count", Long.valueOf(bwzVar.j));
        contentValues.put("current_bundle_count", Long.valueOf(bwzVar.f12351c));
        contentValues.put("last_fire_timestamp", Long.valueOf(bwzVar.f12354f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(bwzVar.k));
        contentValues.put("last_bundled_day", bwzVar.f12349a);
        contentValues.put("last_sampled_complex_event_id", bwzVar.f12355g);
        contentValues.put("last_sampling_rate", bwzVar.i);
        contentValues.put("current_session_count", Long.valueOf(bwzVar.f12352d));
        Boolean bool = bwzVar.f12350b;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (bg().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.i(bgm.t(str), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(str), "Error storing event aggregates. appId", e2);
        }
    }

    @Override // g.aiq
    public final void i() {
    }

    public final boolean t(bou bouVar) {
        cyg cygVar = (cyg) this.z;
        _e();
        n();
        String str = bouVar.zza;
        ckd.k(str);
        if (al(str, bouVar.zzc.zzb) == null) {
            long ar = ar("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            cygVar.getClass();
            if (ar >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PluginConstants.KEY_APP_ID, str);
        contentValues.put(LiveConfigKey.ORIGIN, bouVar.zzb);
        contentValues.put(abn.EXTRA_UA_APP_NAME, bouVar.zzc.zzb);
        Object zza = bouVar.zzc.zza();
        ckd.k(zza);
        s(contentValues, zza);
        contentValues.put("active", Boolean.valueOf(bouVar.zze));
        contentValues.put("trigger_event_name", bouVar.zzf);
        contentValues.put("trigger_timeout", Long.valueOf(bouVar.zzh));
        dkq dkqVar = cygVar.m;
        bgm bgmVar = cygVar.z;
        dkq dkqVar2 = cygVar.m;
        cyg.ai(dkqVar);
        contentValues.put("timed_out_event", dkq.w(bouVar.zzg));
        contentValues.put("creation_timestamp", Long.valueOf(bouVar.zzd));
        cyg.ai(dkqVar2);
        contentValues.put("triggered_event", dkq.w(bouVar.zzi));
        contentValues.put("triggered_timestamp", Long.valueOf(bouVar.zzc.zzc));
        contentValues.put("time_to_live", Long.valueOf(bouVar.zzj));
        cyg.ai(dkqVar2);
        contentValues.put("expired_event", dkq.w(bouVar.zzk));
        try {
            if (bg().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(bgm.t(str), "Failed to insert/update conditional user property (got -1)");
            return true;
        } catch (SQLiteException e2) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.e(bgm.t(str), "Error storing conditional user property", e2);
            return true;
        }
    }

    public final long u(String str) {
        ckd.bf(str);
        return bd("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final fyy v(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        _e();
        n();
        String[] strArr = {str};
        fyy fyyVar = new fyy();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase bg = bg();
                Cursor query = bg.query("apps", new String[]{dgk.UNIT_DAY, "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11520g.i(bgm.t(str), "Not updating daily counts, app is not known. appId");
                    query.close();
                    return fyyVar;
                }
                if (query.getLong(0) == j2) {
                    fyyVar.f17679d = query.getLong(1);
                    fyyVar.f17678c = query.getLong(2);
                    fyyVar.f17680e = query.getLong(3);
                    fyyVar.f17676a = query.getLong(4);
                    fyyVar.f17677b = query.getLong(5);
                }
                if (z) {
                    fyyVar.f17679d += j3;
                }
                if (z2) {
                    fyyVar.f17678c += j3;
                }
                if (z3) {
                    fyyVar.f17680e += j3;
                }
                if (z4) {
                    fyyVar.f17676a += j3;
                }
                if (z5) {
                    fyyVar.f17677b += j3;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put(dgk.UNIT_DAY, Long.valueOf(j2));
                contentValues.put("daily_public_events_count", Long.valueOf(fyyVar.f17678c));
                contentValues.put("daily_events_count", Long.valueOf(fyyVar.f17679d));
                contentValues.put("daily_conversions_count", Long.valueOf(fyyVar.f17680e));
                contentValues.put("daily_error_events_count", Long.valueOf(fyyVar.f17676a));
                contentValues.put("daily_realtime_events_count", Long.valueOf(fyyVar.f17677b));
                bg.update("apps", contentValues, "app_id=?", strArr);
                query.close();
                return fyyVar;
            } catch (SQLiteException e2) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.e(bgm.t(str), "Error updating daily counts. appId", e2);
                if (0 != 0) {
                    cursor.close();
                }
                return fyyVar;
            }
        } finally {
        }
    }

    public final void w(String str, Long l, long j2, kk kkVar) {
        _e();
        n();
        ckd.k(kkVar);
        ckd.bf(str);
        byte[] z = kkVar.z();
        cyg cygVar = (cyg) this.z;
        bgm bgmVar = cygVar.z;
        bgm bgmVar2 = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.e(cygVar.af.f(str), "Saving complex main event, appId, data size", Integer.valueOf(z.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(PluginConstants.KEY_APP_ID, str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", z);
        try {
            if (bg().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.i(bgm.t(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e2) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(str), "Error storing complex main event. appId", e2);
        }
    }

    public final List x(String str, String str2, String str3) {
        ckd.bf(str);
        _e();
        n();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return az(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }
}

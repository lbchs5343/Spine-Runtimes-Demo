package com.bytedance.sdk.component.ia.d.dq.dq;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.dq.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
class dq {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile dq ox;

    /* renamed from: d, reason: collision with root package name */
    private Context f1909d;
    private d dq;

    public class d {
        public d() {
        }

        private boolean d(s sVar) {
            SQLiteDatabase dq = dq(sVar);
            return dq != null && dq.inTransaction();
        }

        private SQLiteDatabase dq(s sVar) {
            boolean d2;
            try {
                SQLiteDatabase dq = sVar.d().dq(sVar.getContext());
                if (dq == null || !dq.isOpen()) {
                    return null;
                }
                dq.setLockingEnabled(false);
                return dq;
            } finally {
                if (!d2) {
                }
            }
        }

        public int delete(s sVar, String str, String str2, String[] strArr) {
            try {
                SQLiteDatabase dq = dq(sVar);
                if (dq != null) {
                    return dq.delete(str, str2, strArr);
                }
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (d(sVar)) {
                    throw e2;
                }
                return 0;
            }
        }

        public void dq(s sVar, String str) throws SQLException {
            boolean d2;
            try {
                SQLiteDatabase dq = dq(sVar);
                if (dq != null) {
                    dq.execSQL(str);
                }
            } finally {
                if (!d2) {
                }
            }
        }

        public long insert(s sVar, String str, String str2, ContentValues contentValues) {
            try {
                SQLiteDatabase dq = dq(sVar);
                if (dq != null) {
                    return dq.insert(str, str2, contentValues);
                }
                return -1L;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (d(sVar)) {
                    throw e2;
                }
                return -1L;
            }
        }

        public synchronized void insert(s sVar, String str, String str2, List<com.bytedance.sdk.component.ia.dq.d> list) {
            JSONObject mn;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    sQLiteDatabase = dq(sVar);
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        for (int i = 0; i < list.size(); i++) {
                            com.bytedance.sdk.component.ia.dq.d dVar = list.get(i);
                            if (dVar != null && (mn = dVar.mn()) != null) {
                                contentValues.put(TTDownloadField.TT_ID, dVar.ox());
                                String d2 = sVar.p().d(mn.toString());
                                if (!TextUtils.isEmpty(d2)) {
                                    contentValues.put("value", d2);
                                    contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                    contentValues.put("retry", (Integer) 0);
                                    contentValues.put("encrypt", (Integer) 1);
                                    sQLiteDatabase.insert(str, str2, contentValues);
                                }
                                contentValues.clear();
                            }
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                        com.bytedance.sdk.component.ia.d.ox.ox.dq("DBHelper", str + " insert list size=" + list.size(), sVar);
                    }
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.endTransaction();
                    }
                } catch (Exception e2) {
                    com.bytedance.sdk.component.ia.d.ox.ox.dq("DBHelper", str + " insert list error=" + list.size(), sVar);
                    e2.printStackTrace();
                    if (d(sVar)) {
                        throw e2;
                    }
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.endTransaction();
                    }
                }
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
                throw th;
            }
        }

        public Cursor query(s sVar, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                SQLiteDatabase dq = dq(sVar);
                if (dq != null) {
                    return dq.query(str, strArr, str2, strArr2, str3, str4, str5);
                }
                return null;
            } catch (Throwable th) {
                th.printStackTrace();
                C0116dq c0116dq = new C0116dq();
                if (d(sVar)) {
                    throw th;
                }
                return c0116dq;
            }
        }

        public int update(s sVar, String str, ContentValues contentValues, String str2, String[] strArr) {
            try {
                SQLiteDatabase dq = dq(sVar);
                if (dq != null) {
                    return dq.update(str, contentValues, str2, strArr);
                }
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (d(sVar)) {
                    throw e2;
                }
                return 0;
            }
        }
    }

    /* renamed from: com.bytedance.sdk.component.ia.d.dq.dq.dq$dq, reason: collision with other inner class name */
    public class C0116dq extends AbstractCursor {
        private C0116dq() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }
    }

    private dq(Context context) {
        try {
            this.f1909d = context.getApplicationContext();
            if (this.dq == null) {
                this.dq = new d();
            }
        } catch (Throwable unused) {
        }
    }

    public static dq dq(Context context) {
        if (ox == null) {
            synchronized (dq.class) {
                try {
                    if (ox == null) {
                        ox = new dq(context);
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    private Context getContext() {
        return this.f1909d;
    }

    public d dq() {
        return this.dq;
    }
}

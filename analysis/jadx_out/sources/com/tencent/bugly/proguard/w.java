package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import g.ada;
import g.dno;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f9808a;

    /* renamed from: b, reason: collision with root package name */
    private static w f9809b;

    /* renamed from: c, reason: collision with root package name */
    private static x f9810c;

    private w(Context context, List<o> list) {
        f9810c = new x(context, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002e, code lost:
    
        if (r0 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized int a(String str, String str2, String[] strArr, v vVar) {
        int i;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = f9810c.getWritableDatabase();
            i = sQLiteDatabase != null ? sQLiteDatabase.delete(str, str2, strArr) : 0;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f9808a) {
                }
            } finally {
                if (f9808a && sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, v vVar) {
        Cursor cursor;
        cursor = null;
        try {
            SQLiteDatabase writableDatabase = f9810c.getWritableDatabase();
            if (writableDatabase != null) {
                cursor = writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursor;
            } finally {
            }
        }
        return cursor;
    }

    public static synchronized w a() {
        w wVar;
        synchronized (w.class) {
            wVar = f9809b;
        }
        return wVar;
    }

    public static synchronized w a(Context context, List<o> list) {
        w wVar;
        synchronized (w.class) {
            try {
                if (f9809b == null) {
                    f9809b = new w(context, list);
                }
                wVar = f9809b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return wVar;
    }

    private static y a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f9815a = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
            yVar.f9816b = cursor.getInt(cursor.getColumnIndex("_tp"));
            yVar.f9817c = cursor.getString(cursor.getColumnIndex("_pc"));
            yVar.f9818d = cursor.getString(cursor.getColumnIndex("_th"));
            yVar.f9819e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f9821g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i, String str, v vVar) {
        boolean z;
        String str2;
        z = false;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = f9810c.getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    if (ap.b(str)) {
                        str2 = "_id = ".concat(String.valueOf(i));
                    } else {
                        str2 = "_id = " + i + " and _tp = \"" + str + "\"";
                    }
                    int delete = writableDatabase.delete("t_pf", str2, null);
                    al.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(delete));
                    if (delete > 0) {
                        z = true;
                    }
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        return z;
                    } finally {
                        if (f9808a && sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                    }
                }
            }
            if (f9808a && writableDatabase != null) {
                writableDatabase.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, String str, byte[] bArr, v vVar) {
        try {
            y yVar = new y();
            yVar.f9815a = i;
            yVar.f9820f = str;
            yVar.f9819e = System.currentTimeMillis();
            yVar.f9821g = bArr;
            return b(yVar);
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private static y b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f9815a = cursor.getLong(cursor.getColumnIndex(ada.COLUMN_ID));
            yVar.f9819e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f9820f = cursor.getString(cursor.getColumnIndex("_tp"));
            yVar.f9821g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private synchronized boolean b(y yVar) {
        ContentValues d2;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = f9810c.getWritableDatabase();
            if (sQLiteDatabase == null || (d2 = d(yVar)) == null) {
                return false;
            }
            long replace = sQLiteDatabase.replace("t_pf", ada.COLUMN_ID, d2);
            if (replace < 0) {
                if (f9808a) {
                    sQLiteDatabase.close();
                }
                return false;
            }
            al.c("[Database] insert %s success.", "t_pf");
            yVar.f9815a = replace;
            if (f9808a) {
                sQLiteDatabase.close();
            }
            return true;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f9808a && sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                return false;
            } finally {
                if (f9808a && sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            }
        }
    }

    private static ContentValues c(y yVar) {
        if (yVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j = yVar.f9815a;
            if (j > 0) {
                contentValues.put(ada.COLUMN_ID, Long.valueOf(j));
            }
            contentValues.put("_tp", Integer.valueOf(yVar.f9816b));
            contentValues.put("_pc", yVar.f9817c);
            contentValues.put("_th", yVar.f9818d);
            contentValues.put("_tm", Long.valueOf(yVar.f9819e));
            byte[] bArr = yVar.f9821g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00af, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00cd, code lost:
    
        if (r2 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00ad, code lost:
    
        if (r2 != null) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized List<y> c(int i) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        try {
            try {
                sQLiteDatabase = f9810c.getWritableDatabase();
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
                cursor = null;
            }
            if (sQLiteDatabase == null) {
                if (f9808a) {
                }
                return null;
            }
            try {
                String concat = "_id = ".concat(String.valueOf(i));
                cursor = sQLiteDatabase.query("t_pf", null, concat, null, null, null, null);
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (f9808a) {
                        sQLiteDatabase.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        y b2 = b(cursor);
                        if (b2 != null) {
                            arrayList.add(b2);
                        } else {
                            try {
                                String string = cursor.getString(cursor.getColumnIndex("_tp"));
                                sb.append(" or _tp = ");
                                sb.append(string);
                            } catch (Throwable unused) {
                                al.d("[Database] unknown id.", new Object[0]);
                            }
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append(" and _id = ");
                        sb.append(i);
                        al.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(sQLiteDatabase.delete("t_pf", concat.substring(4), null)));
                    }
                    cursor.close();
                    if (f9808a) {
                        sQLiteDatabase.close();
                    }
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (f9808a) {
                        }
                        return null;
                    } finally {
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
            }
        } catch (Throwable th5) {
            throw th5;
        }
    }

    private static ContentValues d(y yVar) {
        if (yVar != null && !ap.b(yVar.f9820f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j = yVar.f9815a;
                if (j > 0) {
                    contentValues.put(ada.COLUMN_ID, Long.valueOf(j));
                }
                contentValues.put("_tp", yVar.f9820f);
                contentValues.put("_tm", Long.valueOf(yVar.f9819e));
                byte[] bArr = yVar.f9821g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public final int a(String str, String str2) {
        return a(str, str2, (String[]) null, (v) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        if (0 != 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized long a(String str, ContentValues contentValues, v vVar) {
        long j;
        j = -1;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = f9810c.getWritableDatabase();
            if (sQLiteDatabase != null && contentValues != null) {
                long replace = sQLiteDatabase.replace(str, ada.COLUMN_ID, contentValues);
                if (replace >= 0) {
                    al.c("[Database] insert %s success.", str);
                } else {
                    al.d("[Database] replace %s error.", str);
                }
                j = replace;
            }
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f9808a) {
                }
            } finally {
                if (f9808a && 0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        return j;
    }

    public final Cursor a(String str, String[] strArr, String str2) {
        return a(str, strArr, str2, (String) null, (String) null);
    }

    public final Cursor a(String str, String[] strArr, String str2, String str3, String str4) {
        return a(false, str, strArr, str2, null, null, null, str3, str4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00b2 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #2 {all -> 0x00b6, blocks: (B:47:0x00ac, B:49:0x00b2), top: B:46:0x00ac, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bb A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #1 {all -> 0x0031, blocks: (B:3:0x0001, B:11:0x002d, B:12:0x0035, B:14:0x0039, B:39:0x00a0, B:41:0x00a7, B:52:0x00bb, B:53:0x00be, B:55:0x00c2, B:59:0x00c8, B:60:0x00cb, B:62:0x00cf, B:63:0x00d2, B:47:0x00ac, B:49:0x00b2), top: B:2:0x0001, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c2 A[Catch: all -> 0x0031, TryCatch #1 {all -> 0x0031, blocks: (B:3:0x0001, B:11:0x002d, B:12:0x0035, B:14:0x0039, B:39:0x00a0, B:41:0x00a7, B:52:0x00bb, B:53:0x00be, B:55:0x00c2, B:59:0x00c8, B:60:0x00cb, B:62:0x00cf, B:63:0x00d2, B:47:0x00ac, B:49:0x00b2), top: B:2:0x0001, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<y> a(int i) {
        String concat;
        Throwable th;
        Cursor cursor;
        try {
            SQLiteDatabase writableDatabase = f9810c.getWritableDatabase();
            if (writableDatabase != null) {
                if (i >= 0) {
                    try {
                        concat = "_tp = ".concat(String.valueOf(i));
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                        try {
                            if (!al.a(th)) {
                                th.printStackTrace();
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (f9808a) {
                                writableDatabase.close();
                            }
                            return null;
                        } finally {
                        }
                    }
                } else {
                    concat = null;
                }
                Cursor query = writableDatabase.query("t_lr", null, concat, null, null, null, null);
                if (query == null) {
                    if (query != null) {
                        query.close();
                    }
                    if (f9808a) {
                        writableDatabase.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (query.moveToNext()) {
                        y a2 = a(query);
                        if (a2 != null) {
                            arrayList.add(a2);
                        } else {
                            try {
                                long j = query.getLong(query.getColumnIndex(ada.COLUMN_ID));
                                sb.append(" or _id = ");
                                sb.append(j);
                            } catch (Throwable unused) {
                                al.d("[Database] unknown id.", new Object[0]);
                            }
                        }
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 0) {
                        al.d("[Database] deleted %s illegal data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb2.substring(4), null)));
                    }
                    query.close();
                    if (f9808a) {
                        writableDatabase.close();
                    }
                    return arrayList;
                } catch (Throwable th3) {
                    cursor = query;
                    th = th3;
                    if (!al.a(th)) {
                    }
                    if (cursor != null) {
                    }
                    if (f9808a) {
                    }
                    return null;
                }
            }
            return null;
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public final Map<String, byte[]> a(int i, v vVar) {
        HashMap hashMap = null;
        try {
            List<y> c2 = c(i);
            if (c2 == null) {
                return null;
            }
            HashMap hashMap2 = new HashMap();
            try {
                for (y yVar : c2) {
                    byte[] bArr = yVar.f9821g;
                    if (bArr != null) {
                        hashMap2.put(yVar.f9820f, bArr);
                    }
                }
                return hashMap2;
            } catch (Throwable th) {
                th = th;
                hashMap = hashMap2;
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                return hashMap;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized void a(List<y> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    SQLiteDatabase writableDatabase = f9810c.getWritableDatabase();
                    if (writableDatabase != null) {
                        StringBuilder sb = new StringBuilder();
                        for (y yVar : list) {
                            sb.append(" or _id = ");
                            sb.append(yVar.f9815a);
                        }
                        String sb2 = sb.toString();
                        if (sb2.length() > 0) {
                            sb2 = sb2.substring(4);
                        }
                        sb.setLength(0);
                        try {
                            al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb2, null)));
                        } catch (Throwable th) {
                            try {
                                if (!al.a(th)) {
                                    th.printStackTrace();
                                }
                                if (f9808a) {
                                    writableDatabase.close();
                                }
                            } finally {
                                if (f9808a) {
                                    writableDatabase.close();
                                }
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }

    public final boolean a(int i, String str, byte[] bArr, boolean z) {
        if (z) {
            return a(i, str, bArr, (v) null);
        }
        dno dnoVar = new dno(this);
        dnoVar.f14482e = i;
        dnoVar.f14478a = str;
        dnoVar.f14479b = bArr;
        ak.a().a(dnoVar);
        return true;
    }

    public final synchronized boolean a(y yVar) {
        ContentValues c2;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = f9810c.getWritableDatabase();
            if (sQLiteDatabase == null || (c2 = c(yVar)) == null) {
                return false;
            }
            long replace = sQLiteDatabase.replace("t_lr", ada.COLUMN_ID, c2);
            if (replace < 0) {
                if (f9808a) {
                    sQLiteDatabase.close();
                }
                return false;
            }
            al.c("[Database] insert %s success.", "t_lr");
            yVar.f9815a = replace;
            if (f9808a) {
                sQLiteDatabase.close();
            }
            return true;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f9808a && sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                return false;
            } finally {
                if (f9808a && sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            }
        }
    }

    public final synchronized void b(int i) {
        String concat;
        SQLiteDatabase writableDatabase = f9810c.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                try {
                    concat = "_tp = ".concat(String.valueOf(i));
                } catch (Throwable th) {
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (f9808a) {
                            writableDatabase.close();
                            return;
                        }
                    } finally {
                        if (f9808a) {
                            writableDatabase.close();
                        }
                    }
                }
            } else {
                concat = null;
            }
            al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", concat, null)));
        }
    }
}

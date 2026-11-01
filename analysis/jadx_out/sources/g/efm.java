package g;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class efm extends os {

    /* renamed from: g, reason: collision with root package name */
    public final ayx f15443g;
    public boolean h;

    public efm(cyg cygVar) {
        super(cygVar);
        this.f15443g = new ayx(this, ((cyg) this.z).v);
    }

    @Override // g.os
    public final boolean b() {
        return false;
    }

    public final void j() {
        int delete;
        cyg cygVar = (cyg) this.z;
        _e();
        try {
            SQLiteDatabase m = m();
            if (m == null || (delete = m.delete("messages", null, null)) <= 0) {
                return;
            }
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.i(Integer.valueOf(delete), "Reset local analytics data. records");
        } catch (SQLiteException e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.i(e2, "Error resetting local analytics data. error");
        }
    }

    public final void k() {
        int i;
        cyg cygVar = (cyg) this.z;
        _e();
        if (!this.h && cygVar.v.getDatabasePath("google_app_measurement_local.db").exists()) {
            int i2 = 5;
            while (i < 5) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        SQLiteDatabase m = m();
                        if (m == null) {
                            this.h = true;
                            return;
                        }
                        m.beginTransaction();
                        m.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        m.setTransactionSuccessful();
                        m.endTransaction();
                        m.close();
                        return;
                    } catch (SQLiteException e2) {
                        if (0 != 0) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(e2, "Error deleting app launch break from local database");
                        this.h = true;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i2);
                    i2 += 20;
                    i = 0 == 0 ? i + 1 : 0;
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e3) {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.i(e3, "Error deleting app launch break from local database");
                    this.h = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                }
            }
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            bgmVar3.f11520g.h("Error deleting app launch break from local database in reasonable time");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(int i, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        Cursor cursor2;
        boolean z;
        String str;
        cyg cygVar = (cyg) this.z;
        _e();
        boolean z2 = false;
        z2 = false;
        if (!this.h) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("entry", bArr);
            cygVar.getClass();
            bgm bgmVar = cygVar.z;
            int i2 = 0;
            int i3 = 5;
            for (int i4 = 5; i2 < i4; i4 = 5) {
                Cursor cursor3 = null;
                cursor3 = null;
                r9 = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                try {
                    sQLiteDatabase = m();
                    if (sQLiteDatabase == null) {
                        this.h = true;
                    } else {
                        try {
                            sQLiteDatabase.beginTransaction();
                            Cursor rawQuery = sQLiteDatabase.rawQuery("select count(1) from messages", null);
                            long j = 0;
                            if (rawQuery != null) {
                                try {
                                    try {
                                        if (rawQuery.moveToFirst()) {
                                            j = rawQuery.getLong(z2 ? 1 : 0);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        cursor3 = rawQuery;
                                        if (cursor3 != null) {
                                        }
                                        if (sQLiteDatabase != null) {
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    cursor3 = rawQuery;
                                    try {
                                        SystemClock.sleep(i3);
                                        i3 += 20;
                                        if (cursor3 != null) {
                                        }
                                        if (sQLiteDatabase == null) {
                                        }
                                        i2++;
                                        z2 = false;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteFullException e2) {
                                    e = e2;
                                    sQLiteDatabase2 = sQLiteDatabase;
                                    cursor2 = rawQuery;
                                    cyg.ak(bgmVar);
                                    bgmVar.f11518b.i(e, "Error writing entry; local database full");
                                    this.h = true;
                                    if (cursor2 != null) {
                                    }
                                    if (sQLiteDatabase2 == null) {
                                    }
                                    sQLiteDatabase2.close();
                                    i2++;
                                    z2 = false;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    sQLiteDatabase2 = sQLiteDatabase;
                                    cursor = rawQuery;
                                    if (sQLiteDatabase2 != null) {
                                    }
                                    cyg.ak(bgmVar);
                                    bgmVar.f11518b.i(e, "Error writing entry to local database");
                                    this.h = true;
                                    if (cursor != null) {
                                    }
                                    if (sQLiteDatabase2 == null) {
                                    }
                                    sQLiteDatabase2.close();
                                    i2++;
                                    z2 = false;
                                }
                            }
                            if (j >= 100000) {
                                cyg.ak(bgmVar);
                                bgmVar.f11518b.h("Data loss, local db full");
                                long j2 = 100001 - j;
                                long delete = sQLiteDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j2)});
                                if (delete != j2) {
                                    cyg.ak(bgmVar);
                                    try {
                                        try {
                                            z = true;
                                        } catch (SQLiteDatabaseLockedException unused2) {
                                            cursor3 = rawQuery;
                                            SystemClock.sleep(i3);
                                            i3 += 20;
                                            if (cursor3 != null) {
                                                cursor3.close();
                                            }
                                            if (sQLiteDatabase == null) {
                                                sQLiteDatabase.close();
                                            }
                                            i2++;
                                            z2 = false;
                                        }
                                    } catch (SQLiteFullException e4) {
                                        e = e4;
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        cursor2 = rawQuery;
                                        cyg.ak(bgmVar);
                                        bgmVar.f11518b.i(e, "Error writing entry; local database full");
                                        this.h = true;
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        if (sQLiteDatabase2 == null) {
                                            i2++;
                                            z2 = false;
                                        }
                                        sQLiteDatabase2.close();
                                        i2++;
                                        z2 = false;
                                    } catch (SQLiteException e5) {
                                        e = e5;
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        cursor = rawQuery;
                                        if (sQLiteDatabase2 != null) {
                                            try {
                                                if (sQLiteDatabase2.inTransaction()) {
                                                    sQLiteDatabase2.endTransaction();
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                sQLiteDatabase = sQLiteDatabase2;
                                                cursor3 = cursor;
                                                if (cursor3 != null) {
                                                }
                                                if (sQLiteDatabase != null) {
                                                }
                                                throw th;
                                            }
                                        }
                                        cyg.ak(bgmVar);
                                        bgmVar.f11518b.i(e, "Error writing entry to local database");
                                        this.h = true;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabase2 == null) {
                                            i2++;
                                            z2 = false;
                                        }
                                        sQLiteDatabase2.close();
                                        i2++;
                                        z2 = false;
                                    }
                                    try {
                                        bgmVar.f11518b.f("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(delete), Long.valueOf(j2 - delete));
                                        str = null;
                                        sQLiteDatabase.insertOrThrow("messages", str, contentValues);
                                        sQLiteDatabase.setTransactionSuccessful();
                                        sQLiteDatabase.endTransaction();
                                        if (rawQuery != null) {
                                            rawQuery.close();
                                        }
                                        sQLiteDatabase.close();
                                        return z;
                                    } catch (SQLiteFullException e6) {
                                        e = e6;
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        cursor2 = rawQuery;
                                        cyg.ak(bgmVar);
                                        bgmVar.f11518b.i(e, "Error writing entry; local database full");
                                        this.h = true;
                                        if (cursor2 != null) {
                                        }
                                        if (sQLiteDatabase2 == null) {
                                        }
                                        sQLiteDatabase2.close();
                                        i2++;
                                        z2 = false;
                                    } catch (SQLiteException e7) {
                                        e = e7;
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        cursor = rawQuery;
                                        if (sQLiteDatabase2 != null) {
                                        }
                                        cyg.ak(bgmVar);
                                        bgmVar.f11518b.i(e, "Error writing entry to local database");
                                        this.h = true;
                                        if (cursor != null) {
                                        }
                                        if (sQLiteDatabase2 == null) {
                                        }
                                        sQLiteDatabase2.close();
                                        i2++;
                                        z2 = false;
                                    }
                                }
                            }
                            z = true;
                            str = null;
                            sQLiteDatabase.insertOrThrow("messages", str, contentValues);
                            sQLiteDatabase.setTransactionSuccessful();
                            sQLiteDatabase.endTransaction();
                            if (rawQuery != null) {
                            }
                            sQLiteDatabase.close();
                            return z;
                        } catch (SQLiteDatabaseLockedException unused3) {
                            cursor3 = null;
                        } catch (SQLiteFullException e8) {
                            e = e8;
                            cursor2 = null;
                            sQLiteDatabase2 = sQLiteDatabase;
                        } catch (SQLiteException e9) {
                            e = e9;
                            cursor = null;
                            sQLiteDatabase2 = sQLiteDatabase;
                        } catch (Throwable th4) {
                            th = th4;
                            cursor = null;
                            cursor3 = cursor;
                            if (cursor3 != null) {
                            }
                            if (sQLiteDatabase != null) {
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused4) {
                    sQLiteDatabase = null;
                } catch (SQLiteFullException e10) {
                    e = e10;
                    cursor2 = null;
                } catch (SQLiteException e11) {
                    e = e11;
                    cursor = null;
                } catch (Throwable th5) {
                    th = th5;
                    sQLiteDatabase = null;
                }
            }
            cyg.ak(bgmVar);
            bgmVar.f11519c.h("Failed to write entry to local database");
            return false;
        }
        return z2;
    }

    public final SQLiteDatabase m() {
        if (this.h) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f15443g.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.h = true;
        return null;
    }
}

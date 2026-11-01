package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class dbb extends os {

    /* renamed from: g, reason: collision with root package name */
    public final fmk f13905g;
    public final cvk h;
    public final cvk j;
    public final gyy k;
    public ake l;
    public final ArrayList m;
    public volatile Boolean n;

    public dbb(cyg cygVar) {
        super(cygVar);
        this.m = new ArrayList();
        this.f13905g = new fmk(cygVar.f13743ab);
        this.k = new gyy(this);
        this.h = new cvk(this, cygVar, 0);
        this.j = new cvk(this, cygVar, 1);
    }

    public static void o(dbb dbbVar, ComponentName componentName) {
        dbbVar._e();
        if (dbbVar.l != null) {
            dbbVar.l = null;
            bgm bgmVar = ((cyg) dbbVar.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.i(componentName, "Disconnected from device MeasurementService");
            dbbVar._e();
            dbbVar.an();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:292:0x0073, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x035c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x035c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x035c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0303 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01fe A[Catch: all -> 0x0153, SQLiteException -> 0x01e0, SQLiteFullException -> 0x01e3, SQLiteDatabaseLockedException -> 0x029a, TryCatch #26 {all -> 0x0153, blocks: (B:98:0x0148, B:100:0x014d, B:153:0x0179, B:154:0x017c, B:151:0x0175, B:161:0x0192, B:164:0x01a6, B:166:0x01be, B:169:0x01c2, B:170:0x01c5, B:172:0x01b8, B:174:0x01c8, B:182:0x01dc, B:184:0x01fe, B:194:0x0202, B:195:0x0205, B:192:0x01f8, B:204:0x020a, B:206:0x0217, B:230:0x0250, B:232:0x026d, B:233:0x0279), top: B:97:0x0148 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0223 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void al(ake akeVar, exk exkVar, afh afhVar) {
        ArrayList arrayList;
        cyg cygVar;
        int i;
        SQLiteDatabase sQLiteDatabase;
        int i2;
        int i3;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Cursor cursor4;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor5;
        long j;
        String str;
        String[] strArr;
        Cursor cursor6;
        Parcel obtain;
        bou bouVar;
        cmd cmdVar;
        int i4;
        _e();
        zza();
        cyg cygVar2 = (cyg) this.z;
        cygVar2.getClass();
        cygVar2.getClass();
        bgm bgmVar = cygVar2.z;
        int i5 = 100;
        int i6 = 0;
        for (int i7 = 100; i6 < 1001 && i5 == i7; i7 = 100) {
            ArrayList arrayList2 = new ArrayList();
            efm an = cygVar2.an();
            cyg cygVar3 = (cyg) an.z;
            an._e();
            if (an.h) {
                cygVar = cygVar2;
                i = i6;
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                if (((cyg) an.z).v.getDatabasePath("google_app_measurement_local.db").exists()) {
                    int i8 = 5;
                    int i9 = 5;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= i8) {
                            cygVar = cygVar2;
                            i = i6;
                            bgm bgmVar2 = cygVar3.z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11520g.h("Failed to read events from database in reasonable time");
                            break;
                        }
                        try {
                            SQLiteDatabase m = an.m();
                            if (m == null) {
                                try {
                                    try {
                                        an.h = true;
                                        cygVar = cygVar2;
                                        i = i6;
                                        break;
                                    } catch (Throwable th) {
                                        th = th;
                                        sQLiteDatabase2 = m;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        cursor4 = null;
                                        if (cursor4 != null) {
                                        }
                                        if (sQLiteDatabase != null) {
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    cygVar = cygVar2;
                                    i3 = i6;
                                    sQLiteDatabase2 = m;
                                    i2 = i10;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    cursor3 = null;
                                    SystemClock.sleep(i9);
                                    i9 += 20;
                                    if (cursor3 != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i10 = i2 + 1;
                                    i6 = i3;
                                    cygVar2 = cygVar;
                                    i8 = 5;
                                } catch (SQLiteFullException e2) {
                                    e = e2;
                                    cygVar = cygVar2;
                                    i3 = i6;
                                    sQLiteDatabase2 = m;
                                    i2 = i10;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    cursor2 = null;
                                    bgm bgmVar3 = cygVar3.z;
                                    cyg.ak(bgmVar3);
                                    bgmVar3.f11518b.i(e, "Error reading entries from local database");
                                    an.h = true;
                                    if (cursor2 != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i10 = i2 + 1;
                                    i6 = i3;
                                    cygVar2 = cygVar;
                                    i8 = 5;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    cygVar = cygVar2;
                                    i3 = i6;
                                    sQLiteDatabase2 = m;
                                    i2 = i10;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    cursor = null;
                                    if (sQLiteDatabase != null) {
                                    }
                                    bgm bgmVar4 = cygVar3.z;
                                    cyg.ak(bgmVar4);
                                    bgmVar4.f11518b.i(e, "Error reading entries from local database");
                                    an.h = true;
                                    if (cursor != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i10 = i2 + 1;
                                    i6 = i3;
                                    cygVar2 = cygVar;
                                    i8 = 5;
                                }
                            } else {
                                m.beginTransaction();
                                try {
                                    cursor5 = m.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
                                    try {
                                        long j2 = -1;
                                        if (cursor5.moveToFirst()) {
                                            cygVar = cygVar2;
                                            try {
                                                j = cursor5.getLong(0);
                                                try {
                                                    cursor5.close();
                                                } catch (SQLiteDatabaseLockedException unused2) {
                                                    i3 = i6;
                                                    sQLiteDatabase2 = m;
                                                    i2 = i10;
                                                    sQLiteDatabase = sQLiteDatabase2;
                                                    cursor3 = null;
                                                    SystemClock.sleep(i9);
                                                    i9 += 20;
                                                    if (cursor3 != null) {
                                                    }
                                                    if (sQLiteDatabase == null) {
                                                    }
                                                    sQLiteDatabase.close();
                                                    i10 = i2 + 1;
                                                    i6 = i3;
                                                    cygVar2 = cygVar;
                                                    i8 = 5;
                                                } catch (SQLiteFullException e4) {
                                                    e = e4;
                                                    i3 = i6;
                                                    sQLiteDatabase2 = m;
                                                    i2 = i10;
                                                    sQLiteDatabase = sQLiteDatabase2;
                                                    cursor2 = null;
                                                    bgm bgmVar32 = cygVar3.z;
                                                    cyg.ak(bgmVar32);
                                                    bgmVar32.f11518b.i(e, "Error reading entries from local database");
                                                    an.h = true;
                                                    if (cursor2 != null) {
                                                    }
                                                    if (sQLiteDatabase == null) {
                                                    }
                                                    sQLiteDatabase.close();
                                                    i10 = i2 + 1;
                                                    i6 = i3;
                                                    cygVar2 = cygVar;
                                                    i8 = 5;
                                                } catch (SQLiteException e5) {
                                                    e = e5;
                                                    i3 = i6;
                                                    sQLiteDatabase2 = m;
                                                    i2 = i10;
                                                    sQLiteDatabase = sQLiteDatabase2;
                                                    cursor = null;
                                                    if (sQLiteDatabase != null) {
                                                    }
                                                    bgm bgmVar42 = cygVar3.z;
                                                    cyg.ak(bgmVar42);
                                                    bgmVar42.f11518b.i(e, "Error reading entries from local database");
                                                    an.h = true;
                                                    if (cursor != null) {
                                                    }
                                                    if (sQLiteDatabase == null) {
                                                    }
                                                    sQLiteDatabase.close();
                                                    i10 = i2 + 1;
                                                    i6 = i3;
                                                    cygVar2 = cygVar;
                                                    i8 = 5;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                i3 = i6;
                                                sQLiteDatabase2 = m;
                                                i2 = i10;
                                                if (cursor5 != null) {
                                                    try {
                                                        cursor5.close();
                                                    } catch (SQLiteDatabaseLockedException unused3) {
                                                        sQLiteDatabase = sQLiteDatabase2;
                                                        cursor3 = null;
                                                        SystemClock.sleep(i9);
                                                        i9 += 20;
                                                        if (cursor3 != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    } catch (SQLiteFullException e6) {
                                                        e = e6;
                                                        sQLiteDatabase = sQLiteDatabase2;
                                                        cursor2 = null;
                                                        bgm bgmVar322 = cygVar3.z;
                                                        cyg.ak(bgmVar322);
                                                        bgmVar322.f11518b.i(e, "Error reading entries from local database");
                                                        an.h = true;
                                                        if (cursor2 != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    } catch (SQLiteException e7) {
                                                        e = e7;
                                                        sQLiteDatabase = sQLiteDatabase2;
                                                        cursor = null;
                                                        if (sQLiteDatabase != null) {
                                                        }
                                                        bgm bgmVar422 = cygVar3.z;
                                                        cyg.ak(bgmVar422);
                                                        bgmVar422.f11518b.i(e, "Error reading entries from local database");
                                                        an.h = true;
                                                        if (cursor != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        sQLiteDatabase = sQLiteDatabase2;
                                                        cursor4 = null;
                                                        if (cursor4 != null) {
                                                        }
                                                        if (sQLiteDatabase != null) {
                                                        }
                                                        throw th;
                                                    }
                                                }
                                                throw th;
                                            }
                                        } else {
                                            cygVar = cygVar2;
                                            cursor5.close();
                                            j = -1;
                                        }
                                        if (j != -1) {
                                            str = "rowid<?";
                                            strArr = new String[]{String.valueOf(j)};
                                        } else {
                                            str = null;
                                            strArr = null;
                                        }
                                        try {
                                            Cursor query = m.query("messages", new String[]{"rowid", "type", "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                                            sQLiteDatabase = m;
                                            while (query.moveToNext()) {
                                                try {
                                                    try {
                                                        i2 = i10;
                                                        try {
                                                            j2 = query.getLong(0);
                                                        } catch (SQLiteDatabaseLockedException unused4) {
                                                            cursor6 = query;
                                                            i3 = i6;
                                                        } catch (SQLiteFullException e8) {
                                                            e = e8;
                                                            cursor6 = query;
                                                            i3 = i6;
                                                        } catch (SQLiteException e9) {
                                                            e = e9;
                                                            cursor6 = query;
                                                            i3 = i6;
                                                        }
                                                    } catch (SQLiteDatabaseLockedException unused5) {
                                                        cursor6 = query;
                                                        i2 = i10;
                                                    } catch (SQLiteFullException e10) {
                                                        e = e10;
                                                        cursor6 = query;
                                                        i2 = i10;
                                                    } catch (SQLiteException e11) {
                                                        e = e11;
                                                        cursor6 = query;
                                                        i2 = i10;
                                                    }
                                                    try {
                                                        int i11 = query.getInt(1);
                                                        i3 = i6;
                                                        try {
                                                            byte[] blob = query.getBlob(2);
                                                            if (i11 == 0) {
                                                                obtain = Parcel.obtain();
                                                                try {
                                                                    cursor6 = query;
                                                                    try {
                                                                        try {
                                                                            obtain.unmarshall(blob, 0, blob.length);
                                                                            obtain.setDataPosition(0);
                                                                            ctf createFromParcel = ctf.CREATOR.createFromParcel(obtain);
                                                                            try {
                                                                                try {
                                                                                    if (createFromParcel != null) {
                                                                                        arrayList.add(createFromParcel);
                                                                                    }
                                                                                } catch (Throwable th4) {
                                                                                    th = th4;
                                                                                    cursor4 = cursor6;
                                                                                    if (cursor4 != null) {
                                                                                    }
                                                                                    if (sQLiteDatabase != null) {
                                                                                    }
                                                                                    throw th;
                                                                                }
                                                                            } catch (SQLiteDatabaseLockedException unused6) {
                                                                                cursor3 = cursor6;
                                                                                SystemClock.sleep(i9);
                                                                                i9 += 20;
                                                                                if (cursor3 != null) {
                                                                                }
                                                                                if (sQLiteDatabase == null) {
                                                                                }
                                                                                sQLiteDatabase.close();
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            } catch (SQLiteFullException e12) {
                                                                                e = e12;
                                                                                cursor2 = cursor6;
                                                                                bgm bgmVar3222 = cygVar3.z;
                                                                                cyg.ak(bgmVar3222);
                                                                                bgmVar3222.f11518b.i(e, "Error reading entries from local database");
                                                                                an.h = true;
                                                                                if (cursor2 != null) {
                                                                                }
                                                                                if (sQLiteDatabase == null) {
                                                                                }
                                                                                sQLiteDatabase.close();
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            } catch (SQLiteException e13) {
                                                                                e = e13;
                                                                                cursor = cursor6;
                                                                                if (sQLiteDatabase != null) {
                                                                                }
                                                                                bgm bgmVar4222 = cygVar3.z;
                                                                                cyg.ak(bgmVar4222);
                                                                                bgmVar4222.f11518b.i(e, "Error reading entries from local database");
                                                                                an.h = true;
                                                                                if (cursor != null) {
                                                                                }
                                                                                if (sQLiteDatabase == null) {
                                                                                }
                                                                                sQLiteDatabase.close();
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            }
                                                                        } catch (csj unused7) {
                                                                            bgm bgmVar5 = cygVar3.z;
                                                                            cyg.ak(bgmVar5);
                                                                            bgmVar5.f11518b.h("Failed to load event from local database");
                                                                            obtain.recycle();
                                                                            i10 = i2;
                                                                            i6 = i3;
                                                                            query = cursor6;
                                                                        }
                                                                    } catch (Throwable th5) {
                                                                        th = th5;
                                                                        throw th;
                                                                    }
                                                                } catch (csj unused8) {
                                                                    cursor6 = query;
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                }
                                                            } else {
                                                                cursor6 = query;
                                                                if (i11 == 1) {
                                                                    obtain = Parcel.obtain();
                                                                    try {
                                                                        try {
                                                                            obtain.unmarshall(blob, 0, blob.length);
                                                                            obtain.setDataPosition(0);
                                                                            cmdVar = cmd.CREATOR.createFromParcel(obtain);
                                                                        } finally {
                                                                            obtain.recycle();
                                                                        }
                                                                    } catch (csj unused9) {
                                                                        bgm bgmVar6 = cygVar3.z;
                                                                        cyg.ak(bgmVar6);
                                                                        bgmVar6.f11518b.h("Failed to load user property from local database");
                                                                        obtain.recycle();
                                                                        cmdVar = null;
                                                                    }
                                                                    if (cmdVar != null) {
                                                                        arrayList.add(cmdVar);
                                                                    }
                                                                } else {
                                                                    if (i11 == 2) {
                                                                        obtain = Parcel.obtain();
                                                                        try {
                                                                            try {
                                                                                try {
                                                                                    obtain.unmarshall(blob, 0, blob.length);
                                                                                    obtain.setDataPosition(0);
                                                                                    bouVar = bou.CREATOR.createFromParcel(obtain);
                                                                                } catch (csj unused10) {
                                                                                    bgm bgmVar7 = cygVar3.z;
                                                                                    cyg.ak(bgmVar7);
                                                                                    bgmVar7.f11518b.h("Failed to load conditional user property from local database");
                                                                                    obtain.recycle();
                                                                                    bouVar = null;
                                                                                    if (bouVar == null) {
                                                                                    }
                                                                                    i10 = i2;
                                                                                    i6 = i3;
                                                                                    query = cursor6;
                                                                                }
                                                                            } catch (Throwable th7) {
                                                                                th = th7;
                                                                                throw th;
                                                                            }
                                                                        } catch (csj unused11) {
                                                                        } catch (Throwable th8) {
                                                                            th = th8;
                                                                        }
                                                                        try {
                                                                            if (bouVar == null) {
                                                                                arrayList.add(bouVar);
                                                                            }
                                                                        } catch (SQLiteDatabaseLockedException unused12) {
                                                                            cursor3 = cursor6;
                                                                            SystemClock.sleep(i9);
                                                                            i9 += 20;
                                                                            if (cursor3 != null) {
                                                                                cursor3.close();
                                                                            }
                                                                            if (sQLiteDatabase == null) {
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            }
                                                                            sQLiteDatabase.close();
                                                                            i10 = i2 + 1;
                                                                            i6 = i3;
                                                                            cygVar2 = cygVar;
                                                                            i8 = 5;
                                                                        } catch (SQLiteFullException e14) {
                                                                            e = e14;
                                                                            cursor2 = cursor6;
                                                                            bgm bgmVar32222 = cygVar3.z;
                                                                            cyg.ak(bgmVar32222);
                                                                            bgmVar32222.f11518b.i(e, "Error reading entries from local database");
                                                                            an.h = true;
                                                                            if (cursor2 != null) {
                                                                                cursor2.close();
                                                                            }
                                                                            if (sQLiteDatabase == null) {
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            }
                                                                            sQLiteDatabase.close();
                                                                            i10 = i2 + 1;
                                                                            i6 = i3;
                                                                            cygVar2 = cygVar;
                                                                            i8 = 5;
                                                                        } catch (SQLiteException e15) {
                                                                            e = e15;
                                                                            cursor = cursor6;
                                                                            if (sQLiteDatabase != null) {
                                                                                try {
                                                                                    if (sQLiteDatabase.inTransaction()) {
                                                                                        sQLiteDatabase.endTransaction();
                                                                                    }
                                                                                } catch (Throwable th9) {
                                                                                    th = th9;
                                                                                    cursor4 = cursor;
                                                                                    if (cursor4 != null) {
                                                                                        cursor4.close();
                                                                                    }
                                                                                    if (sQLiteDatabase != null) {
                                                                                        sQLiteDatabase.close();
                                                                                    }
                                                                                    throw th;
                                                                                }
                                                                            }
                                                                            bgm bgmVar42222 = cygVar3.z;
                                                                            cyg.ak(bgmVar42222);
                                                                            bgmVar42222.f11518b.i(e, "Error reading entries from local database");
                                                                            an.h = true;
                                                                            if (cursor != null) {
                                                                                cursor.close();
                                                                            }
                                                                            if (sQLiteDatabase == null) {
                                                                                i10 = i2 + 1;
                                                                                i6 = i3;
                                                                                cygVar2 = cygVar;
                                                                                i8 = 5;
                                                                            }
                                                                            sQLiteDatabase.close();
                                                                            i10 = i2 + 1;
                                                                            i6 = i3;
                                                                            cygVar2 = cygVar;
                                                                            i8 = 5;
                                                                        }
                                                                    } else if (i11 == 3) {
                                                                        bgm bgmVar8 = cygVar3.z;
                                                                        cyg.ak(bgmVar8);
                                                                        bgmVar8.f11520g.h("Skipping app launch break");
                                                                    } else {
                                                                        bgm bgmVar9 = cygVar3.z;
                                                                        cyg.ak(bgmVar9);
                                                                        bgmVar9.f11518b.h("Unknown record type in local database");
                                                                    }
                                                                    i10 = i2;
                                                                    i6 = i3;
                                                                    query = cursor6;
                                                                }
                                                            }
                                                            i10 = i2;
                                                            i6 = i3;
                                                            query = cursor6;
                                                        } catch (SQLiteDatabaseLockedException unused13) {
                                                            cursor6 = query;
                                                        } catch (SQLiteFullException e16) {
                                                            e = e16;
                                                            cursor6 = query;
                                                        } catch (SQLiteException e17) {
                                                            e = e17;
                                                            cursor6 = query;
                                                        }
                                                    } catch (SQLiteDatabaseLockedException unused14) {
                                                        cursor6 = query;
                                                        i3 = i6;
                                                        cursor3 = cursor6;
                                                        SystemClock.sleep(i9);
                                                        i9 += 20;
                                                        if (cursor3 != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    } catch (SQLiteFullException e18) {
                                                        e = e18;
                                                        cursor6 = query;
                                                        i3 = i6;
                                                        cursor2 = cursor6;
                                                        bgm bgmVar322222 = cygVar3.z;
                                                        cyg.ak(bgmVar322222);
                                                        bgmVar322222.f11518b.i(e, "Error reading entries from local database");
                                                        an.h = true;
                                                        if (cursor2 != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    } catch (SQLiteException e19) {
                                                        e = e19;
                                                        cursor6 = query;
                                                        i3 = i6;
                                                        cursor = cursor6;
                                                        if (sQLiteDatabase != null) {
                                                        }
                                                        bgm bgmVar422222 = cygVar3.z;
                                                        cyg.ak(bgmVar422222);
                                                        bgmVar422222.f11518b.i(e, "Error reading entries from local database");
                                                        an.h = true;
                                                        if (cursor != null) {
                                                        }
                                                        if (sQLiteDatabase == null) {
                                                        }
                                                        sQLiteDatabase.close();
                                                        i10 = i2 + 1;
                                                        i6 = i3;
                                                        cygVar2 = cygVar;
                                                        i8 = 5;
                                                    }
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                    cursor6 = query;
                                                }
                                            }
                                            Cursor cursor7 = query;
                                            i = i6;
                                            if (sQLiteDatabase.delete("messages", "rowid <= ?", new String[]{Long.toString(j2)}) < arrayList.size()) {
                                                bgm bgmVar10 = cygVar3.z;
                                                cyg.ak(bgmVar10);
                                                bgmVar10.f11518b.h("Fewer entries removed from local database than expected");
                                            }
                                            sQLiteDatabase.setTransactionSuccessful();
                                            sQLiteDatabase.endTransaction();
                                            cursor7.close();
                                            sQLiteDatabase.close();
                                        } catch (SQLiteDatabaseLockedException unused15) {
                                            i3 = i6;
                                            i2 = i10;
                                            sQLiteDatabase2 = m;
                                            sQLiteDatabase = sQLiteDatabase2;
                                            cursor3 = null;
                                            SystemClock.sleep(i9);
                                            i9 += 20;
                                            if (cursor3 != null) {
                                            }
                                            if (sQLiteDatabase == null) {
                                            }
                                            sQLiteDatabase.close();
                                            i10 = i2 + 1;
                                            i6 = i3;
                                            cygVar2 = cygVar;
                                            i8 = 5;
                                        } catch (SQLiteFullException e20) {
                                            e = e20;
                                            i3 = i6;
                                            i2 = i10;
                                            sQLiteDatabase2 = m;
                                            sQLiteDatabase = sQLiteDatabase2;
                                            cursor2 = null;
                                            bgm bgmVar3222222 = cygVar3.z;
                                            cyg.ak(bgmVar3222222);
                                            bgmVar3222222.f11518b.i(e, "Error reading entries from local database");
                                            an.h = true;
                                            if (cursor2 != null) {
                                            }
                                            if (sQLiteDatabase == null) {
                                            }
                                            sQLiteDatabase.close();
                                            i10 = i2 + 1;
                                            i6 = i3;
                                            cygVar2 = cygVar;
                                            i8 = 5;
                                        } catch (SQLiteException e21) {
                                            e = e21;
                                            i3 = i6;
                                            i2 = i10;
                                            sQLiteDatabase2 = m;
                                            sQLiteDatabase = sQLiteDatabase2;
                                            cursor = null;
                                            if (sQLiteDatabase != null) {
                                            }
                                            bgm bgmVar4222222 = cygVar3.z;
                                            cyg.ak(bgmVar4222222);
                                            bgmVar4222222.f11518b.i(e, "Error reading entries from local database");
                                            an.h = true;
                                            if (cursor != null) {
                                            }
                                            if (sQLiteDatabase == null) {
                                            }
                                            sQLiteDatabase.close();
                                            i10 = i2 + 1;
                                            i6 = i3;
                                            cygVar2 = cygVar;
                                            i8 = 5;
                                        } catch (Throwable th11) {
                                            th = th11;
                                            sQLiteDatabase2 = m;
                                            sQLiteDatabase = sQLiteDatabase2;
                                            cursor4 = null;
                                            if (cursor4 != null) {
                                            }
                                            if (sQLiteDatabase != null) {
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                        cygVar = cygVar2;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    cygVar = cygVar2;
                                    i3 = i6;
                                    sQLiteDatabase2 = m;
                                    i2 = i10;
                                    cursor5 = null;
                                }
                            }
                        } catch (SQLiteDatabaseLockedException unused16) {
                            cygVar = cygVar2;
                            i2 = i10;
                            i3 = i6;
                            cursor3 = null;
                            sQLiteDatabase = null;
                        } catch (SQLiteFullException e22) {
                            e = e22;
                            cygVar = cygVar2;
                            i2 = i10;
                            i3 = i6;
                            cursor2 = null;
                            sQLiteDatabase = null;
                        } catch (SQLiteException e23) {
                            e = e23;
                            cygVar = cygVar2;
                            i2 = i10;
                            i3 = i6;
                            cursor = null;
                            sQLiteDatabase = null;
                        } catch (Throwable th14) {
                            th = th14;
                            sQLiteDatabase = null;
                        }
                        i10 = i2 + 1;
                        i6 = i3;
                        cygVar2 = cygVar;
                        i8 = 5;
                    }
                } else {
                    cygVar = cygVar2;
                    i = i6;
                }
            }
            if (arrayList != null) {
                arrayList2.addAll(arrayList);
                i4 = arrayList.size();
            } else {
                i4 = 0;
            }
            if (exkVar != null && i4 < 100) {
                arrayList2.add(exkVar);
            }
            int size = arrayList2.size();
            for (int i12 = 0; i12 < size; i12++) {
                exk exkVar2 = (exk) arrayList2.get(i12);
                if (exkVar2 instanceof ctf) {
                    try {
                        akeVar.n((ctf) exkVar2, afhVar);
                    } catch (RemoteException e24) {
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(e24, "Failed to send event to the service");
                    }
                } else if (exkVar2 instanceof cmd) {
                    try {
                        akeVar.d((cmd) exkVar2, afhVar);
                    } catch (RemoteException e25) {
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(e25, "Failed to send user property to the service");
                    }
                } else if (exkVar2 instanceof bou) {
                    try {
                        akeVar.s((bou) exkVar2, afhVar);
                    } catch (RemoteException e26) {
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.i(e26, "Failed to send conditional user property to the service");
                    }
                } else {
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.h("Discarding data. Unrecognized parcel type.");
                }
            }
            i6 = i + 1;
            i5 = i4;
            cygVar2 = cygVar;
        }
    }

    public final void am() {
        _e();
        zza();
        gyy gyyVar = this.k;
        if (gyyVar.f19036c != null && (gyyVar.f19036c.isConnected() || gyyVar.f19036c.isConnecting())) {
            gyyVar.f19036c.disconnect();
        }
        gyyVar.f19036c = null;
        try {
            aoy.m().s(((cyg) this.z).v, this.k);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.l = null;
    }

    public final void an() {
        _e();
        zza();
        if (v()) {
            return;
        }
        if (ao()) {
            this.k.d();
            return;
        }
        if (((cyg) this.z).f13747e.s()) {
            return;
        }
        ((cyg) this.z).getClass();
        List<ResolveInfo> queryIntentServices = ((cyg) this.z).v.getPackageManager().queryIntentServices(new Intent().setClassName(((cyg) this.z).v, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(((cyg) this.z).v, "com.google.android.gms.measurement.AppMeasurementService"));
        gyy gyyVar = this.k;
        gyyVar.f19034a._e();
        Context context = ((cyg) gyyVar.f19034a.z).v;
        aoy m = aoy.m();
        synchronized (gyyVar) {
            try {
                if (gyyVar.f19035b) {
                    bgm bgmVar2 = ((cyg) gyyVar.f19034a.z).z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11519c.h("Connection attempt already in progress");
                } else {
                    bgm bgmVar3 = ((cyg) gyyVar.f19034a.z).z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11519c.h("Using local app measurement service");
                    gyyVar.f19035b = true;
                    m.u(context, context.getClass().getName(), intent, gyyVar.f19034a.k, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ao() {
        _e();
        zza();
        if (this.n == null) {
            _e();
            zza();
            gmr gmrVar = ((cyg) this.z).f13744b;
            cyg.ai(gmrVar);
            gmrVar._e();
            boolean z = false;
            Boolean valueOf = !gmrVar.ar().contains("use_service") ? null : Boolean.valueOf(gmrVar.ar().getBoolean("use_service", false));
            if (valueOf == null || !valueOf.booleanValue()) {
                ((cyg) this.z).getClass();
                fqh at = ((cyg) this.z).at();
                at.zza();
                if (at.m != 1) {
                    bgm bgmVar = ((cyg) this.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11519c.h("Checking service availability");
                    dkq dkqVar = ((cyg) this.z).m;
                    cyg.ai(dkqVar);
                    int l = gna.i.l(((cyg) dkqVar.z).v, 12451000);
                    if (l != 0) {
                        if (l != 1) {
                            if (l == 2) {
                                bgm bgmVar2 = ((cyg) this.z).z;
                                cyg.ak(bgmVar2);
                                bgmVar2.o.h("Service container out of date");
                                dkq dkqVar2 = ((cyg) this.z).m;
                                cyg.ai(dkqVar2);
                                if (dkqVar2.ay() >= 17443) {
                                    z = valueOf == null;
                                }
                            } else if (l == 3) {
                                bgm bgmVar3 = ((cyg) this.z).z;
                                cyg.ak(bgmVar3);
                                bgmVar3.f11520g.h("Service disabled");
                            } else if (l == 9) {
                                bgm bgmVar4 = ((cyg) this.z).z;
                                cyg.ak(bgmVar4);
                                bgmVar4.f11520g.h("Service invalid");
                            } else if (l != 18) {
                                bgm bgmVar5 = ((cyg) this.z).z;
                                cyg.ak(bgmVar5);
                                bgmVar5.f11520g.i(Integer.valueOf(l), "Unexpected service status");
                            } else {
                                bgm bgmVar6 = ((cyg) this.z).z;
                                cyg.ak(bgmVar6);
                                bgmVar6.f11520g.h("Service updating");
                            }
                            r1 = false;
                        } else {
                            bgm bgmVar7 = ((cyg) this.z).z;
                            cyg.ak(bgmVar7);
                            bgmVar7.f11519c.h("Service missing");
                        }
                        if (z && ((cyg) this.z).f13747e.s()) {
                            bgm bgmVar8 = ((cyg) this.z).z;
                            cyg.ak(bgmVar8);
                            bgmVar8.f11518b.h("No way to upload. Consider using the full version of Analytics");
                        } else if (r1) {
                            gmr gmrVar2 = ((cyg) this.z).f13744b;
                            cyg.ai(gmrVar2);
                            gmrVar2._e();
                            SharedPreferences.Editor edit = gmrVar2.ar().edit();
                            edit.putBoolean("use_service", z);
                            edit.apply();
                        }
                        r1 = z;
                    } else {
                        bgm bgmVar9 = ((cyg) this.z).z;
                        cyg.ak(bgmVar9);
                        bgmVar9.f11519c.h("Service available");
                    }
                }
                z = true;
                if (z) {
                }
                if (r1) {
                }
                r1 = z;
            }
            this.n = Boolean.valueOf(r1);
        }
        return this.n.booleanValue();
    }

    @Override // g.os
    public final boolean b() {
        return false;
    }

    public final void p() {
        _e();
        cyg cygVar = (cyg) this.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        dvb dvbVar = bgmVar.f11519c;
        ArrayList arrayList = this.m;
        dvbVar.i(Integer.valueOf(arrayList.size()), "Processing queued up service tasks");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e2) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.i(e2, "Task exception while flushing queue");
            }
        }
        arrayList.clear();
        this.j.i();
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    public final g.afh q(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r38v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:238)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
        	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
        	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
        	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:103)
        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
        	at jadx.core.ProcessClass.process(ProcessClass.java:79)
        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:117)
        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:402)
        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:390)
        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:340)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    public final void r(AtomicReference atomicReference) {
        _e();
        zza();
        s(new eax(this, atomicReference, q(false), 18));
    }

    public final void s(Runnable runnable) {
        cyg cygVar = (cyg) this.z;
        _e();
        if (v()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        cygVar.getClass();
        if (size >= 1000) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Discarding data. Max runnable queue size reached");
        } else {
            arrayList.add(runnable);
            this.j.j(60000L);
            an();
        }
    }

    public final void t(bou bouVar) {
        boolean l;
        _e();
        zza();
        cyg cygVar = (cyg) this.z;
        cygVar.getClass();
        efm an = cygVar.an();
        cyg cygVar2 = (cyg) an.z;
        cyg.ai(cygVar2.m);
        byte[] w = dkq.w(bouVar);
        if (w.length > 131072) {
            bgm bgmVar = cygVar2.z;
            cyg.ak(bgmVar);
            bgmVar.f11517a.h("Conditional user property too long for local database. Sending directly to service");
            l = false;
        } else {
            l = an.l(2, w);
        }
        s(new edg(this, q(true), l, new bou(bouVar), 2));
    }

    public final Boolean u() {
        return this.n;
    }

    public final boolean v() {
        _e();
        zza();
        return this.l != null;
    }

    public final boolean w() {
        _e();
        zza();
        if (!ao()) {
            return true;
        }
        dkq dkqVar = ((cyg) this.z).m;
        cyg.ai(dkqVar);
        return dkqVar.ay() >= ((Integer) gad.bg.h(null)).intValue();
    }

    public final void x() {
        _e();
        fmk fmkVar = this.f13905g;
        ((czz) ((cvb) fmkVar.f17035c)).getClass();
        fmkVar.f17034b = SystemClock.elapsedRealtime();
        ((cyg) this.z).getClass();
        this.h.j(((Long) gad.an.h(null)).longValue());
    }
}

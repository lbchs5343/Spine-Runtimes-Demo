package g;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final class got extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f18514a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18515b;

    /* renamed from: c, reason: collision with root package name */
    public final dsg f18516c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18517d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18518e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f18519f;

    /* renamed from: g, reason: collision with root package name */
    public final fc f18520g;
    public final dvy h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public got(Context context, String str, final fc fcVar, final dsg dsgVar, boolean z) {
        super(context, str, null, dsgVar.f14707d, new DatabaseErrorHandler() { // from class: g.ddz
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                bff.p(dsg.this, "$callback");
                int i = got.f18514a;
                bff.e(sQLiteDatabase, "dbObj");
                crd z2 = aky.z(fcVar, sQLiteDatabase);
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + z2 + ".path");
                SQLiteDatabase sQLiteDatabase2 = (SQLiteDatabase) z2.f13370d;
                if (!sQLiteDatabase2.isOpen()) {
                    String path = sQLiteDatabase2.getPath();
                    if (path != null) {
                        dsg.e(path);
                        return;
                    }
                    return;
                }
                List<Pair<String, String>> list = null;
                try {
                    try {
                        list = sQLiteDatabase2.getAttachedDbs();
                    } catch (SQLiteException unused) {
                    }
                    try {
                        z2.close();
                    } catch (IOException unused2) {
                    }
                    if (list != null) {
                        return;
                    }
                } finally {
                    if (list != null) {
                        Iterator<T> it = list.iterator();
                        while (it.hasNext()) {
                            Object obj = ((Pair) it.next()).second;
                            bff.e(obj, "p.second");
                            dsg.e((String) obj);
                        }
                    } else {
                        String path2 = sQLiteDatabase2.getPath();
                        if (path2 != null) {
                            dsg.e(path2);
                        }
                    }
                }
            }
        });
        String str2;
        bff.p(dsgVar, "callback");
        this.f18519f = context;
        this.f18520g = fcVar;
        this.f18516c = dsgVar;
        this.f18517d = z;
        if (str == null) {
            str2 = UUID.randomUUID().toString();
            bff.e(str2, "randomUUID().toString()");
        } else {
            str2 = str;
        }
        this.h = new dvy(context.getCacheDir(), str2, false);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() {
        dvy dvyVar = this.h;
        try {
            dvyVar.f(dvyVar.f14912c);
            super.close();
            this.f18520g.f16548e = null;
            this.f18515b = false;
        } finally {
            dvyVar.g();
        }
    }

    public final SQLiteDatabase i(boolean z) {
        File parentFile;
        String databaseName = getDatabaseName();
        boolean z2 = this.f18515b;
        Context context = this.f18519f;
        if (databaseName != null && !z2 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                parentFile.toString();
            }
        }
        try {
            return k(z);
        } catch (Throwable unused) {
            super.close();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                return k(z);
            } catch (Throwable th) {
                super.close();
                if (th instanceof cjc) {
                    cjc cjcVar = th;
                    Throwable cause = cjcVar.getCause();
                    int i = gnc.f18434a[cjcVar.a().ordinal()];
                    if (i == 1) {
                        throw cause;
                    }
                    if (i == 2) {
                        throw cause;
                    }
                    if (i == 3) {
                        throw cause;
                    }
                    if (i == 4) {
                        throw cause;
                    }
                    if (!(cause instanceof SQLiteException)) {
                        throw cause;
                    }
                } else {
                    if (!(th instanceof SQLiteException)) {
                        throw th;
                    }
                    if (databaseName == null || !this.f18517d) {
                        throw th;
                    }
                }
                context.deleteDatabase(databaseName);
                try {
                    return k(z);
                } catch (cjc e2) {
                    throw e2.getCause();
                }
            }
        }
    }

    public final crd j(boolean z) {
        dvy dvyVar = this.h;
        try {
            dvyVar.f((this.f18515b || getDatabaseName() == null) ? false : true);
            this.f18518e = false;
            SQLiteDatabase i = i(z);
            if (!this.f18518e) {
                crd z2 = aky.z(this.f18520g, i);
                dvyVar.g();
                return z2;
            }
            close();
            crd j = j(z);
            dvyVar.g();
            return j;
        } catch (Throwable th) {
            dvyVar.g();
            throw th;
        }
    }

    public final SQLiteDatabase k(boolean z) {
        if (z) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            bff.e(writableDatabase, "{\n                super.…eDatabase()\n            }");
            return writableDatabase;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        bff.e(readableDatabase, "{\n                super.…eDatabase()\n            }");
        return readableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        bff.p(sQLiteDatabase, "db");
        boolean z = this.f18518e;
        dsg dsgVar = this.f18516c;
        if (!z && dsgVar.f14707d != sQLiteDatabase.getVersion()) {
            sQLiteDatabase.setMaxSqlCacheSize(1);
        }
        try {
            aky.z(this.f18520g, sQLiteDatabase);
            dsgVar.getClass();
        } catch (Throwable th) {
            throw new cjc(geu.ON_CONFIGURE, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        bff.p(sQLiteDatabase, "sqLiteDatabase");
        try {
            this.f18516c.h(aky.z(this.f18520g, sQLiteDatabase));
        } catch (Throwable th) {
            throw new cjc(geu.ON_CREATE, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        bff.p(sQLiteDatabase, "db");
        this.f18518e = true;
        try {
            this.f18516c.s(aky.z(this.f18520g, sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new cjc(geu.ON_DOWNGRADE, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        bff.p(sQLiteDatabase, "db");
        if (!this.f18518e) {
            try {
                this.f18516c.k(aky.z(this.f18520g, sQLiteDatabase));
            } catch (Throwable th) {
                throw new cjc(geu.ON_OPEN, th);
            }
        }
        this.f18515b = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        bff.p(sQLiteDatabase, "sqLiteDatabase");
        this.f18518e = true;
        try {
            this.f18516c.s(aky.z(this.f18520g, sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new cjc(geu.ON_UPGRADE, th);
        }
    }
}

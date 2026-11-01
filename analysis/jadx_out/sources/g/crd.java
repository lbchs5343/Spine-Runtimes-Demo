package g;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public final class crd implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f13367a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f13368b = new String[0];

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13369c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f13370d;

    public /* synthetic */ crd(int i, Object obj) {
        this.f13369c = i;
        this.f13370d = obj;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f13369c) {
            case 0:
                ((SQLiteDatabase) this.f13370d).close();
                break;
            default:
                ((HttpURLConnection) this.f13370d).disconnect();
                break;
        }
    }

    public boolean e() {
        return ((SQLiteDatabase) this.f13370d).inTransaction();
    }

    public cap f(String str) {
        SQLiteStatement compileStatement = ((SQLiteDatabase) this.f13370d).compileStatement(str);
        bff.e(compileStatement, "delegate.compileStatement(sql)");
        return new cap(compileStatement);
    }

    public void g() {
        ((SQLiteDatabase) this.f13370d).endTransaction();
    }

    public void h() {
        ((SQLiteDatabase) this.f13370d).setTransactionSuccessful();
    }

    public Cursor i(fxn fxnVar) {
        final bhl bhlVar = new bhl(fxnVar);
        Cursor rawQueryWithFactory = ((SQLiteDatabase) this.f13370d).rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: g.bbr
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                bhl bhlVar2 = bhl.this;
                bhlVar2.getClass();
                fxn fxnVar2 = bhlVar2.$query;
                bff.d(sQLiteQuery);
                fxnVar2._cp(new q(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, fxnVar._co(), f13368b, null);
        bff.e(rawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return rawQueryWithFactory;
    }

    public void j(String str) {
        bff.p(str, "sql");
        ((SQLiteDatabase) this.f13370d).execSQL(str);
    }

    public Cursor k(String str) {
        bff.p(str, "query");
        return i(new abq(str, 1));
    }

    public void l() {
        ((SQLiteDatabase) this.f13370d).beginTransaction();
    }

    public boolean m() {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.f13370d;
        bff.p(sQLiteDatabase, "sQLiteDatabase");
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    public void n() {
        ((SQLiteDatabase) this.f13370d).beginTransactionNonExclusive();
    }

    public String o() {
        HttpURLConnection httpURLConnection = (HttpURLConnection) this.f13370d;
        boolean z = false;
        try {
            if (httpURLConnection.getResponseCode() / 100 == 2) {
                z = true;
            }
        } catch (IOException unused) {
        }
        if (z) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder("Unable to fetch ");
            sb.append(httpURLConnection.getURL());
            sb.append(". Failed with ");
            sb.append(httpURLConnection.getResponseCode());
            sb.append("\n");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                        sb2.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused2) {
                        }
                    }
                } finally {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                }
            }
            sb.append(sb2.toString());
            return sb.toString();
        } catch (IOException e2) {
            hbp.c("get error failed ", e2);
            return e2.getMessage();
        }
    }

    public void p(String str, Object[] objArr) {
        bff.p(str, "sql");
        bff.p(objArr, "bindArgs");
        ((SQLiteDatabase) this.f13370d).execSQL(str, objArr);
    }
}

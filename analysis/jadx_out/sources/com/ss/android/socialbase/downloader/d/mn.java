package com.ss.android.socialbase.downloader.d;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.ss.android.socialbase.downloader.kk.kk;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private final String f9323d;
    private final SQLiteDatabase dq;
    private SQLiteStatement ia;
    private SQLiteStatement iw;
    private SQLiteStatement mn;
    private final String[] ox;
    private final String[] p;
    private SQLiteStatement s;

    public mn(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        this.dq = sQLiteDatabase;
        this.f9323d = str;
        this.ox = strArr;
        this.p = strArr2;
    }

    public SQLiteStatement d() {
        if (this.mn == null) {
            SQLiteStatement compileStatement = this.dq.compileStatement(kk.dq(this.f9323d, this.p));
            synchronized (this) {
                try {
                    if (this.mn == null) {
                        this.mn = compileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.mn != compileStatement) {
                compileStatement.close();
            }
        }
        return this.mn;
    }

    public SQLiteStatement dq() {
        if (this.s == null) {
            SQLiteStatement compileStatement = this.dq.compileStatement(kk.dq("INSERT INTO ", this.f9323d, this.ox));
            synchronized (this) {
                try {
                    if (this.s == null) {
                        this.s = compileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.s != compileStatement) {
                compileStatement.close();
            }
        }
        return this.s;
    }

    public SQLiteStatement ox() {
        if (this.iw == null) {
            SQLiteStatement compileStatement = this.dq.compileStatement(kk.dq(this.f9323d, this.ox, this.p));
            synchronized (this) {
                try {
                    if (this.iw == null) {
                        this.iw = compileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.iw != compileStatement) {
                compileStatement.close();
            }
        }
        return this.iw;
    }

    public SQLiteStatement p() {
        if (this.ia == null) {
            SQLiteStatement compileStatement = this.dq.compileStatement(kk.d(this.f9323d, this.ox, this.p));
            synchronized (this) {
                try {
                    if (this.ia == null) {
                        this.ia = compileStatement;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.ia != compileStatement) {
                compileStatement.close();
            }
        }
        return this.ia;
    }
}

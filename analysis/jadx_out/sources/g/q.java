package g;

import android.database.sqlite.SQLiteProgram;

/* loaded from: classes.dex */
public class q implements eob {

    /* renamed from: a, reason: collision with root package name */
    public final SQLiteProgram f19840a;

    public q(SQLiteProgram sQLiteProgram) {
        bff.p(sQLiteProgram, "delegate");
        this.f19840a = sQLiteProgram;
    }

    @Override // g.eob
    public final void b(int i) {
        this.f19840a.bindNull(i);
    }

    @Override // g.eob
    public final void c(int i, byte[] bArr) {
        this.f19840a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19840a.close();
    }

    @Override // g.eob
    public final void d(double d2, int i) {
        this.f19840a.bindDouble(i, d2);
    }

    @Override // g.eob
    public final void e(int i, String str) {
        bff.p(str, "value");
        this.f19840a.bindString(i, str);
    }

    @Override // g.eob
    public final void f(int i, long j) {
        this.f19840a.bindLong(i, j);
    }
}

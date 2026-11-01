package g;

import android.database.sqlite.SQLiteStatement;

/* loaded from: classes.dex */
public final class cap extends q implements eob {

    /* renamed from: g, reason: collision with root package name */
    public final SQLiteStatement f12562g;

    public cap(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f12562g = sQLiteStatement;
    }

    public final int h() {
        return this.f12562g.executeUpdateDelete();
    }
}

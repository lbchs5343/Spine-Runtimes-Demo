package g;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class vh extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20157a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vh(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, int i2) {
        super(context, str, cursorFactory, i);
        this.f20157a = i2;
    }

    private final void b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void c(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void d(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f20157a) {
            case 0:
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL("CREATE TABLE d (_id INTEGER PRIMARY KEY,pn TEXT,vc INTEGER,iut INTEGER,sp TEXT,s INTEGER,bt INTEGER,et INTEGER,ct INTEGER,dtvc INTEGER);");
                    sQLiteDatabase.execSQL("CREATE UNIQUE INDEX unique_index_pn ON d(pn);");
                    sQLiteDatabase.setTransactionSuccessful();
                    return;
                } finally {
                }
            case 1:
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL(ada.SQL_CREATE_TABLE);
                    sQLiteDatabase.execSQL(ada.SQL_CREATE_INDEX_DOMAIN_AND_KEY);
                    sQLiteDatabase.setTransactionSuccessful();
                    return;
                } finally {
                }
            default:
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("CREATE TABLE ");
                    sb.append("duplicatelog");
                    sb.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
                    HashMap hashMap = new HashMap();
                    hashMap.put("path", "TEXT");
                    hashMap.put("insert_time", "INTEGER");
                    hashMap.put("ext1", "TEXT");
                    hashMap.put("ext2", "TEXT");
                    for (String str : hashMap.keySet()) {
                        sb.append(str);
                        sb.append(" ");
                        sb.append((String) hashMap.get(str));
                        sb.append(",");
                    }
                    sb.delete(sb.length() - 1, sb.length());
                    sb.append(")");
                    sQLiteDatabase.execSQL(sb.toString());
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.f20157a;
    }
}

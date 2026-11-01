package g;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class fdc extends gdx {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        int i;
        if (sQLiteDatabase != null && !TextUtils.isEmpty(str)) {
            try {
                Cursor query = sQLiteDatabase.query("duplicatelog", null, "path=?", new String[]{str}, null, null, null);
                i = query.getCount();
                try {
                    query.close();
                } catch (Exception unused) {
                    Context context = eca.f15278c;
                    if (i <= 0) {
                        return false;
                    }
                }
            } catch (Exception unused2) {
                i = 0;
            }
            if (i <= 0) {
                return true;
            }
        }
        return false;
    }

    @Override // g.gdx
    public void insert(SQLiteDatabase sQLiteDatabase, aak aakVar) {
        if (aakVar == null || a(sQLiteDatabase, aakVar.f9852a)) {
            return;
        }
        super.insert(sQLiteDatabase, (Object) aakVar);
        try {
            sQLiteDatabase.execSQL("delete from duplicatelog where _id in (select _id from duplicatelog order by insert_time desc limit 1000 offset 500)");
        } catch (Exception unused) {
            Context context = eca.f15278c;
        }
    }
}

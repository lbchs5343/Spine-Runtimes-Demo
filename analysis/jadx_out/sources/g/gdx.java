package g;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public abstract class gdx {
    public void insert(SQLiteDatabase sQLiteDatabase, Object obj) {
        if (sQLiteDatabase == null || obj == null) {
            return;
        }
        try {
            aak aakVar = (aak) obj;
            ContentValues contentValues = new ContentValues();
            contentValues.put("path", aakVar.f9852a);
            contentValues.put("insert_time", Long.valueOf(aakVar.f9853b));
            sQLiteDatabase.insert("duplicatelog", null, contentValues);
        } catch (Exception unused) {
            Context context = eca.f15278c;
        }
    }
}

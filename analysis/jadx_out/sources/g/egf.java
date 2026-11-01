package g;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public final /* synthetic */ class egf implements dle, fbg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f15479a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15480c;

    public /* synthetic */ egf(long j, Object obj) {
        this.f15479a = j;
        this.f15480c = obj;
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        cqf cqfVar = (cqf) this.f15480c;
        gguVar.i.p = this.f15479a;
        gguVar.j(0, cqfVar == cqf.CONST_WIDE ? cqz.WIDE : cqz.NARROW);
    }

    @Override // g.dle
    public /* synthetic */ void _ct(ggu gguVar) {
    }

    @Override // g.fbg
    public Object apply(Object obj) {
        ku kuVar = (ku) this.f15480c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f15479a));
        String str = kuVar.f19566a;
        cq cqVar = kuVar.f19568c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(eow.c(cqVar))}) < 1) {
            contentValues.put("backend_name", kuVar.f19566a);
            contentValues.put("priority", Integer.valueOf(eow.c(cqVar)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }
}

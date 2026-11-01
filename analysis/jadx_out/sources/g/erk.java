package g;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes3.dex */
public final /* synthetic */ class erk implements fbg, bqq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f16027a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f16028b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16029c;

    public /* synthetic */ erk(long j, Object obj, Object obj2) {
        this.f16029c = obj;
        this.f16027a = obj2;
        this.f16028b = j;
    }

    @Override // g.fbg
    public Object apply(Object obj) {
        String str = (String) this.f16029c;
        gwo gwoVar = (gwo) this.f16027a;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        boolean booleanValue = ((Boolean) cga.h(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(gwoVar.b())}), new bco(0))).booleanValue();
        long j = this.f16028b;
        if (booleanValue) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(gwoVar.b())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put(MediationConstant.KEY_REASON, Integer.valueOf(gwoVar.b()));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    @Override // g.bqq
    public Object i() {
        dwp dwpVar = (dwp) this.f16029c;
        ku kuVar = (ku) this.f16027a;
        ahy ahyVar = dwpVar.h;
        long l = dwpVar.i.l() + this.f16028b;
        cga cgaVar = (cga) ahyVar;
        cgaVar.getClass();
        cgaVar.j(new egf(l, kuVar));
        return null;
    }
}

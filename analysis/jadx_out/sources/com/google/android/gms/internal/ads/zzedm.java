package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import g.dfu;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzedm implements Runnable {
    public final /* synthetic */ SQLiteDatabase zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ dfu zzc;

    public /* synthetic */ zzedm(SQLiteDatabase sQLiteDatabase, String str, dfu dfuVar) {
        this.zza = sQLiteDatabase;
        this.zzb = str;
        this.zzc = dfuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabase = this.zza;
        String str = this.zzb;
        dfu dfuVar = this.zzc;
        int i = zzedp.f6842a;
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        zzedp.d(sQLiteDatabase, dfuVar);
    }
}

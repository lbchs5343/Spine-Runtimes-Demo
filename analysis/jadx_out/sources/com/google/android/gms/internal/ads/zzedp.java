package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.RemoteException;
import g.abn;
import g.agd;
import g.bpp;
import g.ccp;
import g.dfu;
import g.dvw;
import g.edt;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzedp extends zzfsf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f6842a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6843b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6844c;

    public zzedp(Context context, zzges zzgesVar) {
        super(context, "AdMobOfflineBufferedPings.db", null, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhZ)).intValue(), zzfsh.zza);
        this.f6843b = context;
        this.f6844c = zzgesVar;
    }

    public static void d(SQLiteDatabase sQLiteDatabase, dfu dfuVar) {
        SQLiteDatabase sQLiteDatabase2;
        String uri;
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase2 = sQLiteDatabase;
            try {
                Cursor query = sQLiteDatabase2.query("offline_buffered_pings", new String[]{"timestamp", abn.EXTRA_URL}, "event_state = 1", null, null, null, "timestamp ASC", null);
                int count = query.getCount();
                String[] strArr = new String[count];
                int i = 0;
                while (query.moveToNext()) {
                    int columnIndex = query.getColumnIndex("timestamp");
                    int columnIndex2 = query.getColumnIndex(abn.EXTRA_URL);
                    if (columnIndex2 != -1) {
                        long j = query.getLong(columnIndex);
                        String string = query.getString(columnIndex2);
                        if (string == null) {
                            uri = "";
                        } else {
                            Uri parse = Uri.parse(string);
                            ti.f20033a.v.getClass();
                            uri = parse.buildUpon().appendQueryParameter("bd", Long.toString(System.currentTimeMillis() - j)).build().toString();
                        }
                        strArr[i] = uri;
                    }
                    i++;
                }
                query.close();
                sQLiteDatabase2.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
                sQLiteDatabase2.setTransactionSuccessful();
                sQLiteDatabase2.endTransaction();
                for (int i2 = 0; i2 < count; i2++) {
                    dfuVar.zza(strArr[i2]);
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                sQLiteDatabase2.endTransaction();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase2 = sQLiteDatabase;
        }
    }

    public final void e(zzfiv zzfivVar) {
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzedl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzedp.this.getWritableDatabase();
            }
        };
        zzges zzgesVar = this.f6844c;
        zzgei.zzr(zzgesVar.zzb(callable), new ccp(1, zzfivVar), zzgesVar);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public final void zzc(final String str) {
        e(new zzfiv(this) { // from class: com.google.android.gms.internal.ads.zzedn
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                String str2 = str;
                int i = zzedp.f6842a;
                ((SQLiteDatabase) obj).delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str2, Integer.toString(0)});
                return null;
            }
        });
    }

    public final void zzd(final zzedr zzedrVar) {
        e(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzedj
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                zzedp zzedpVar = zzedp.this;
                zzedr zzedrVar2 = zzedrVar;
                zzedpVar.getClass();
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(zzedrVar2.zza));
                contentValues.put("gws_query_id", zzedrVar2.zzb);
                contentValues.put(abn.EXTRA_URL, zzedrVar2.zzc);
                contentValues.put("event_state", Integer.valueOf(zzedrVar2.zzd - 1));
                ((SQLiteDatabase) obj).insert("offline_buffered_pings", null, contentValues);
                esy esyVar = ti.f20033a.z;
                Context context = zzedpVar.f6843b;
                dvw an = esy.an(context);
                if (an != null) {
                    try {
                        an.zze(new bpp(context));
                    } catch (RemoteException unused) {
                        agd.h();
                    }
                }
                return null;
            }
        });
    }

    public final void zzh(final dfu dfuVar, final String str) {
        e(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzedk
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                zzedp zzedpVar = zzedp.this;
                dfu dfuVar2 = dfuVar;
                String str2 = str;
                zzedpVar.getClass();
                zzedpVar.f6844c.execute(new zzedm((SQLiteDatabase) obj, str2, dfuVar2));
                return null;
            }
        });
    }
}

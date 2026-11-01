package g;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class ayx extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11080a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bgf f11081b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ayx(efm efmVar, Context context) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f11081b = efmVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ayx(ggz ggzVar, Context context) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f11081b = ggzVar;
    }

    private final void c(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void d(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void e(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void f(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        switch (this.f11080a) {
            case 0:
                ggz ggzVar = (ggz) this.f11081b;
                fmk fmkVar = ggzVar.r;
                cyg cygVar = (cyg) ggzVar.z;
                cygVar.getClass();
                if (fmkVar.f17034b != 0) {
                    ((czz) ((cvb) fmkVar.f17035c)).getClass();
                    if (SystemClock.elapsedRealtime() - fmkVar.f17034b < 3600000) {
                        throw new SQLiteException("Database open failed");
                    }
                }
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteException unused) {
                    ((czz) ((cvb) fmkVar.f17035c)).getClass();
                    fmkVar.f17034b = SystemClock.elapsedRealtime();
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.h("Opening the database failed, dropping and recreating it");
                    cygVar.getClass();
                    if (!cygVar.v.getDatabasePath("google_app_measurement.db").delete()) {
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.i("google_app_measurement.db", "Failed to delete corrupted db file");
                    }
                    try {
                        SQLiteDatabase writableDatabase = super.getWritableDatabase();
                        fmkVar.f17034b = 0L;
                        return writableDatabase;
                    } catch (SQLiteException e2) {
                        bgm bgmVar3 = cygVar.z;
                        cyg.ak(bgmVar3);
                        bgmVar3.f11518b.i(e2, "Failed to open freshly created database");
                        throw e2;
                    }
                }
            default:
                efm efmVar = (efm) this.f11081b;
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e3) {
                    throw e3;
                } catch (SQLiteException unused2) {
                    bgm bgmVar4 = ((cyg) efmVar.z).z;
                    cyg.ak(bgmVar4);
                    bgmVar4.f11518b.h("Opening the local database failed, dropping and recreating it");
                    ((cyg) efmVar.z).getClass();
                    if (!((cyg) efmVar.z).v.getDatabasePath("google_app_measurement_local.db").delete()) {
                        bgm bgmVar5 = ((cyg) efmVar.z).z;
                        cyg.ak(bgmVar5);
                        bgmVar5.f11518b.i("google_app_measurement_local.db", "Failed to delete corrupted local db file");
                    }
                    try {
                        return super.getWritableDatabase();
                    } catch (SQLiteException e4) {
                        bgm bgmVar6 = ((cyg) efmVar.z).z;
                        cyg.ak(bgmVar6);
                        bgmVar6.f11518b.i(e4, "Failed to open local database. Events will bypass local storage");
                        return null;
                    }
                }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f11080a) {
            case 0:
                bgm bgmVar = ((cyg) ((ggz) this.f11081b).z).z;
                cyg.ak(bgmVar);
                gs.x(bgmVar, sQLiteDatabase);
                break;
            default:
                bgm bgmVar2 = ((cyg) ((efm) this.f11081b).z).z;
                cyg.ak(bgmVar2);
                gs.x(bgmVar2, sQLiteDatabase);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.f11080a;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        switch (this.f11080a) {
            case 0:
                ggz ggzVar = (ggz) this.f11081b;
                bgm bgmVar = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar);
                gs.be(bgmVar, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", ggz.f18137c);
                bgm bgmVar2 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar2);
                gs.be(bgmVar2, sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
                bgm bgmVar3 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar3);
                gs.be(bgmVar3, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", ggz.f18136b);
                bgm bgmVar4 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar4);
                gs.be(bgmVar4, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", ggz.k);
                bgm bgmVar5 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar5);
                gs.be(bgmVar5, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", ggz.j);
                bgm bgmVar6 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar6);
                gs.be(bgmVar6, sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
                bgm bgmVar7 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar7);
                gs.be(bgmVar7, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", ggz.f18138g);
                bgm bgmVar8 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar8);
                gs.be(bgmVar8, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", ggz.h);
                bgm bgmVar9 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar9);
                gs.be(bgmVar9, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", ggz.p);
                bgm bgmVar10 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar10);
                gs.be(bgmVar10, sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
                bgm bgmVar11 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar11);
                gs.be(bgmVar11, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", ggz.o);
                bgm bgmVar12 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar12);
                gs.be(bgmVar12, sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
                bgm bgmVar13 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar13);
                gs.be(bgmVar13, sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
                bgm bgmVar14 = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar14);
                gs.be(bgmVar14, sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
                break;
            default:
                bgm bgmVar15 = ((cyg) ((efm) this.f11081b).z).z;
                cyg.ak(bgmVar15);
                gs.be(bgmVar15, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.f11080a;
    }
}

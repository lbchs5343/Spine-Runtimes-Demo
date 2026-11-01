.class public final Lg/ayx;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bgf;


# direct methods
.method public constructor <init>(Lg/efm;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lg/ayx;->a:I

    iput-object p1, p0, Lg/ayx;->b:Lg/bgf;

    const/4 p1, 0x0

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Lg/ggz;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/ayx;->a:I

    iput-object p1, p0, Lg/ayx;->b:Lg/bgf;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "google_app_measurement.db"

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method private final f(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    iget v0, p0, Lg/ayx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ayx;->b:Lg/bgf;

    check-cast v0, Lg/efm;

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Opening the local database failed, dropping and recreating it"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    const-string v2, "google_app_measurement_local.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Failed to delete corrupted local db file"

    invoke-virtual {v1, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to open local database. Events will bypass local storage"

    invoke-virtual {v0, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_2
    move-exception v0

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/ayx;->b:Lg/bgf;

    check-cast v0, Lg/ggz;

    iget-object v1, v0, Lg/ggz;->r:Lg/fmk;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lg/fmk;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v2, Lg/cvb;

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lg/fmk;->b:J

    sub-long/2addr v2, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v8, v2, v6

    if-ltz v8, :cond_3

    :goto_1
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    iget-object v2, v1, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v2, Lg/cvb;

    check-cast v2, Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lg/fmk;->b:J

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Opening the database failed, dropping and recreating it"

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/cyg;->v:Landroid/content/Context;

    const-string v3, "google_app_measurement.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v6, "Failed to delete corrupted db file"

    invoke-virtual {v2, v3, v6}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :try_start_3
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-wide v4, v1, Lg/fmk;->b:J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v2

    :goto_2
    return-object v0

    :catch_4
    move-exception v1

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to open freshly created database"

    invoke-virtual {v0, v1, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget v0, p0, Lg/ayx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ayx;->b:Lg/bgf;

    check-cast v0, Lg/efm;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-static {v0, p1}, Lg/gs;->x(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ayx;->b:Lg/bgf;

    check-cast v0, Lg/ggz;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-static {v0, p1}, Lg/gs;->x(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget p1, p0, Lg/ayx;->a:I

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    iget v0, p0, Lg/ayx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ayx;->b:Lg/bgf;

    check-cast v0, Lg/efm;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v5, "type,entry"

    const/4 v6, 0x0

    const-string v3, "messages"

    const-string v4, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_0
    move-object v8, p1

    iget-object p1, p0, Lg/ayx;->b:Lg/bgf;

    check-cast p1, Lg/ggz;

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    sget-object v12, Lg/ggz;->c:[Ljava/lang/String;

    const-string v9, "events"

    const-string v10, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    const/4 v12, 0x0

    const-string v9, "conditional_properties"

    const-string v10, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,name,set_timestamp,value"

    sget-object v12, Lg/ggz;->b:[Ljava/lang/String;

    const-string v9, "user_attributes"

    const-string v10, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    sget-object v12, Lg/ggz;->k:[Ljava/lang/String;

    const-string v9, "apps"

    const-string v10, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,bundle_end_timestamp,data"

    sget-object v12, Lg/ggz;->j:[Ljava/lang/String;

    const-string v9, "queue"

    const-string v10, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,metadata_fingerprint,metadata"

    const/4 v12, 0x0

    const-string v9, "raw_events_metadata"

    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,name,timestamp,metadata_fingerprint,data"

    sget-object v12, Lg/ggz;->g:[Ljava/lang/String;

    const-string v9, "raw_events"

    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,audience_id,filter_id,event_name,data"

    sget-object v12, Lg/ggz;->h:[Ljava/lang/String;

    const-string v9, "event_filters"

    const-string v10, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,audience_id,filter_id,property_name,data"

    sget-object v12, Lg/ggz;->p:[Ljava/lang/String;

    const-string v9, "property_filters"

    const-string v10, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,audience_id,current_results"

    const/4 v12, 0x0

    const-string v9, "audience_filter_values"

    const-string v10, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,first_open_count"

    sget-object v12, Lg/ggz;->o:[Ljava/lang/String;

    const-string v9, "app2"

    const-string v10, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,event_id,children_to_process,main_event"

    const/4 v12, 0x0

    const-string v9, "main_event_params"

    const-string v10, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v7, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,parameters"

    const-string v9, "default_event_params"

    const-string v10, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object v7, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v7}, Lg/cyg;->ak(Lg/bkw;)V

    const-string v11, "app_id,consent_state"

    const-string v9, "consent_settings"

    const-string v10, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    invoke-static/range {v7 .. v12}, Lg/gs;->be(Lg/bgm;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget p1, p0, Lg/ayx;->a:I

    return-void
.end method

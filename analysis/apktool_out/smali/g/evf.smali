.class public Lg/evf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bez;
.implements Lg/bmm;
.implements Lg/ghx;
.implements Lg/gtx;
.implements Lg/fsz;
.implements Lg/btp;
.implements Lg/ggw;
.implements Lg/ebz;
.implements Lg/bsf;
.implements Lcom/google/android/gms/internal/ads/zzcaq;
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/evf;->e:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    new-instance p1, Lg/dky;

    invoke-direct {p1, p0}, Lg/ckr;-><init>(Lg/evf;)V

    iput-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lg/ckr;

    invoke-direct {p1, p0}, Lg/ckr;-><init>(Lg/evf;)V

    iput-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/evf;->e:I

    iput-object p2, p0, Lg/evf;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lg/evf;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v0, 0xe

    iput v0, p0, Lg/evf;->e:I

    sget-object v0, Lg/dxc;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "picasso-cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/32 v1, 0x500000

    :try_start_0
    new-instance p1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x32

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0x3200000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    new-instance p1, Lg/gjb;

    invoke-direct {p1}, Lg/gjb;-><init>()V

    new-instance v3, Lg/fvd;

    invoke-direct {v3, v0, v1, v2}, Lg/fvd;-><init>(Ljava/io/File;J)V

    iput-object v3, p1, Lg/gjb;->b:Lg/fvd;

    new-instance v0, Lg/fys;

    invoke-direct {v0, p1}, Lg/fys;-><init>(Lg/gjb;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 7

    const/16 v0, 0xa

    iput v0, p0, Lg/evf;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/blp;

    invoke-direct {v0, p1, p2, p3}, Lg/blp;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lg/dzh;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v1, p0, Lg/evf;->f:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lg/bgw;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lg/evf;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/csv;->HIDDEN:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    iput-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/bhm;)V
    .locals 9

    const/16 v0, 0x11

    iput v0, p0, Lg/evf;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lg/evf;->f:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static h(Lg/crd;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p0, v0}, Lg/crd;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static j(Lg/crd;)Lg/agu;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Lg/gxa;

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x1

    const-string v5, "work_spec_id"

    const-string v6, "TEXT"

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v4, "work_spec_id"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lg/gxa;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x2

    const-string v7, "prerequisite_id"

    const-string v8, "TEXT"

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v11}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "prerequisite_id"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Lg/bdv;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v7, "WorkSpec"

    const-string v8, "CASCADE"

    const-string v9, "CASCADE"

    invoke-direct/range {v6 .. v11}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v13, Lg/bdv;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const-string v14, "WorkSpec"

    const-string v15, "CASCADE"

    const-string v16, "CASCADE"

    invoke-direct/range {v13 .. v18}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lg/bg;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "ASC"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    const/4 v13, 0x0

    invoke-direct {v7, v11, v13, v8, v10}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lg/bg;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v7, v10, v13, v3, v8}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/bzp;

    const-string v7, "Dependency"

    invoke-direct {v3, v7, v1, v5, v6}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v3, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\n Found:\n"

    if-nez v5, :cond_0

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x1

    const-string v16, "id"

    const-string v17, "TEXT"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v17, "state"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "state"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v17, 0x0

    const-string v18, "worker_class_name"

    const-string v19, "TEXT"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v3, v16

    const-string v5, "worker_class_name"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "input_merger_class_name"

    const-string v17, "TEXT"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "input_merger_class_name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "input"

    const-string v18, "BLOB"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "input"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "output"

    const-string v19, "BLOB"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v3, v16

    const-string v5, "output"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "initial_delay"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "initial_delay"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "interval_duration"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "interval_duration"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "flex_duration"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v3, v16

    const-string v5, "flex_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "run_attempt_count"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "run_attempt_count"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "backoff_policy"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "backoff_policy"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "backoff_delay_duration"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v3, v16

    const-string v5, "backoff_delay_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const-string v18, "-1"

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "last_enqueue_time"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "last_enqueue_time"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "minimum_retention_duration"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v5, "minimum_retention_duration"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "schedule_requested_at"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v5, v16

    const-string v7, "schedule_requested_at"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "run_in_foreground"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v5, "run_in_foreground"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "out_of_quota_policy"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v5, "out_of_quota_policy"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const-string v20, "0"

    const/16 v17, 0x0

    const-string v18, "period_count"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v5, v16

    const-string v8, "period_count"

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const-string v18, "0"

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "generation"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v5, "generation"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const-string v19, "9223372036854775807"

    const/16 v16, 0x0

    const-string v17, "next_schedule_time_override"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "next_schedule_time_override"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const-string v20, "0"

    const/16 v17, 0x0

    const-string v18, "next_schedule_time_override_generation"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v8, v16

    const-string v10, "next_schedule_time_override_generation"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const-string v18, "-256"

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "stop_reason"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "stop_reason"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const-string v17, "trace_tag"

    const-string v18, "TEXT"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "trace_tag"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "required_network_type"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v8, v16

    const-string v10, "required_network_type"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const-string v18, "x\'\'"

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "required_network_request"

    const-string v17, "BLOB"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "required_network_request"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "requires_charging"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "requires_charging"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "requires_device_idle"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v8, v16

    const-string v10, "requires_device_idle"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "requires_battery_not_low"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "requires_battery_not_low"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "requires_storage_not_low"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "requires_storage_not_low"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, "trigger_content_update_delay"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v8, v16

    const-string v10, "trigger_content_update_delay"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v19, 0x1

    const/4 v15, 0x0

    const-string v16, "trigger_max_content_delay"

    const-string v17, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "trigger_max_content_delay"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v16, 0x0

    const-string v17, "content_uri_triggers"

    const-string v18, "BLOB"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v8, "content_uri_triggers"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v11, Lg/bg;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v15, v13, v7, v14}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lg/bg;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "index_WorkSpec_last_enqueue_time"

    invoke-direct {v7, v14, v13, v3, v11}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/bzp;

    const-string v7, "WorkSpec"

    invoke-direct {v3, v7, v1, v8, v10}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v3, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v16, "tag"

    const-string v17, "TEXT"

    const/16 v19, 0x1

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "tag"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v16, 0x2

    const-string v17, "work_spec_id"

    const-string v18, "TEXT"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lg/bdv;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Lg/bg;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkTag_work_spec_id"

    invoke-direct {v10, v15, v13, v11, v14}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Lg/bzp;

    const-string v11, "WorkTag"

    invoke-direct {v10, v11, v1, v3, v8}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v11}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v10, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v16, "work_spec_id"

    const-string v17, "TEXT"

    const/16 v19, 0x1

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const-string v19, "0"

    const/16 v21, 0x1

    const/16 v16, 0x2

    const-string v17, "generation"

    const-string v18, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lg/gxa;

    const/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v17, 0x0

    const-string v18, "system_id"

    const-string v19, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v3, v16

    const-string v5, "system_id"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lg/bdv;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lg/bzp;

    const-string v10, "SystemIdInfo"

    invoke-direct {v8, v10, v1, v3, v5}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v10}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v8, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v16, "name"

    const-string v17, "TEXT"

    const/16 v19, 0x1

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v16, 0x2

    const-string v17, "work_spec_id"

    const-string v18, "TEXT"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lg/bdv;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lg/bg;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_WorkName_work_spec_id"

    invoke-direct {v8, v11, v13, v10, v9}, Lg/bg;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lg/bzp;

    const-string v9, "WorkName"

    invoke-direct {v8, v9, v1, v3, v5}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v9}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v8, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v16, "work_spec_id"

    const-string v17, "TEXT"

    const/16 v19, 0x1

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v17, "progress"

    const-string v18, "BLOB"

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "progress"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lg/bdv;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lg/bdv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Lg/bzp;

    const-string v8, "WorkProgress"

    invoke-direct {v5, v8, v1, v3, v4}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v8}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v1

    invoke-virtual {v5, v1}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lg/gxa;

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v15, 0x1

    const-string v16, "key"

    const-string v17, "TEXT"

    const/16 v19, 0x1

    invoke-direct/range {v14 .. v20}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "key"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lg/gxa;

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v16, 0x0

    const-string v17, "long_value"

    const-string v18, "INTEGER"

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v21}, Lg/gxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "long_value"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Lg/bzp;

    const-string v5, "Preference"

    invoke-direct {v4, v5, v1, v2, v3}, Lg/bzp;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Lg/bzp;->e(Lg/crd;Ljava/lang/String;)Lg/bzp;

    move-result-object v0

    invoke-virtual {v4, v0}, Lg/bzp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lg/agu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v0, Lg/agu;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lg/agu;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static l(Lg/cgy;Lg/cro;)Ljava/util/List;
    .locals 33

    move-object/from16 v0, p1

    instance-of v1, v0, Lg/bnf;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lg/bnf;

    invoke-virtual {v0}, Lg/bnf;->b()V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lg/fgi;

    if-eqz v1, :cond_3a

    check-cast v0, Lg/fgi;

    iget v1, v0, Lg/fgi;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lg/fgi;->a:Lg/cgy;

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v1

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v4

    invoke-virtual {v1}, Lg/fkb;->h()Lg/hco;

    move-result-object v5

    sget-object v6, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lg/fkb;->h()Lg/hco;

    move-result-object v7

    if-ne v7, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    check-cast v1, Lg/dcc;

    check-cast v4, Lg/dcc;

    iget-object v1, v1, Lg/dcc;->b:Ljava/util/List;

    iget-object v4, v4, Lg/dcc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    rem-int v7, v6, v5

    if-nez v7, :cond_4

    if-ne v6, v5, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    div-int/2addr v6, v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_38

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_3

    mul-int v10, v7, v5

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v9, v9, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v9, Lg/hed;

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v10

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v11

    invoke-virtual {v0, v10}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v12

    invoke-virtual {v10}, Lg/fkb;->k()Lg/cxc;

    move-result-object v10

    iget-object v12, v12, Lg/evf;->f:Ljava/lang/Object;

    invoke-static {v9, v3}, Lg/ffb;->an(Lg/hed;Ljava/util/ArrayList;)Lg/fza;

    move-result-object v12

    invoke-virtual {v0, v11}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v13

    invoke-virtual {v11}, Lg/fkb;->k()Lg/cxc;

    move-result-object v11

    iget-object v13, v13, Lg/evf;->f:Ljava/lang/Object;

    invoke-static {v9, v8}, Lg/ffb;->an(Lg/hed;Ljava/util/ArrayList;)Lg/fza;

    move-result-object v9

    new-instance v13, Lg/cgy;

    iget-object v14, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v15, v0, Lg/cgy;->h:Lg/dda;

    const/16 v20, 0x0

    iget-object v2, v0, Lg/cgy;->a:Lg/dda;

    move-object/from16 p0, v1

    iget-object v1, v0, Lg/cgy;->c:Lg/fdy;

    move-object/from16 v17, v1

    iget-object v1, v0, Lg/cgy;->g:Lg/evf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lg/cgy;->b:Lg/evf;

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v19}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v1, Lg/lq;

    invoke-direct {v1, v13, v10, v3, v12}, Lg/lq;-><init>(Lg/cgy;Lg/cxc;Ljava/util/ArrayList;Lg/fza;)V

    new-instance v2, Lg/lq;

    invoke-direct {v2, v13, v11, v8, v9}, Lg/lq;-><init>(Lg/cgy;Lg/cxc;Ljava/util/ArrayList;Lg/fza;)V

    iget-object v8, v13, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, v13, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_2

    :cond_4
    const/16 v20, 0x0

    sget-object v1, Lg/gne;->UNMERGEABLE_STATE:Lg/gne;

    new-instance v4, Lg/cgy;

    iget-object v5, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v6, v0, Lg/cgy;->h:Lg/dda;

    iget-object v7, v0, Lg/cgy;->a:Lg/dda;

    iget-object v8, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v9, v0, Lg/cgy;->g:Lg/evf;

    iget-object v10, v0, Lg/cgy;->b:Lg/evf;

    invoke-direct/range {v4 .. v10}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v0, Lg/fjk;

    invoke-direct {v0, v4, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    new-instance v2, Lg/fjk;

    invoke-direct {v2, v4, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    iget-object v1, v4, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v4, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v20

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_28

    :cond_5
    const/16 v20, 0x0

    if-eqz v5, :cond_6

    check-cast v1, Lg/dcc;

    goto :goto_4

    :cond_6
    move-object v2, v4

    check-cast v2, Lg/dcc;

    move-object v4, v1

    move-object v1, v2

    :goto_4
    iget-object v2, v1, Lg/dcc;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    invoke-virtual {v1}, Lg/fkb;->k()Lg/cxc;

    move-result-object v7

    new-instance v8, Lg/gvg;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v9}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v6, Lg/cpb;

    invoke-direct {v6, v7, v8, v9}, Lg/cpb;-><init>(Lg/cxc;Ljava/lang/Object;I)V

    new-instance v7, Lg/btj;

    invoke-direct {v7, v4}, Lg/btj;-><init>(Lg/fkb;)V

    invoke-virtual {v0}, Lg/cgy;->n()Lg/cgy;

    move-result-object v8

    if-eqz v5, :cond_7

    invoke-static {v8, v6, v7}, Lg/cgy;->j(Lg/cgy;Lg/afo;Lg/afo;)Lg/cgy;

    move-result-object v6

    goto :goto_6

    :cond_7
    invoke-static {v8, v7, v6}, Lg/cgy;->j(Lg/cgy;Lg/afo;Lg/afo;)Lg/cgy;

    move-result-object v6

    :goto_6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    goto :goto_5

    :cond_8
    move-object v4, v3

    goto/16 :goto_28

    :pswitch_0
    iget-object v0, v0, Lg/fgi;->a:Lg/cgy;

    invoke-virtual {v0}, Lg/cgy;->n()Lg/cgy;

    move-result-object v0

    iget-object v1, v0, Lg/cgy;->c:Lg/fdy;

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v2

    check-cast v2, Lg/lq;

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v4

    check-cast v4, Lg/lq;

    iget-object v5, v2, Lg/lq;->a:Lg/fza;

    iget-object v6, v2, Lg/lq;->c:Ljava/util/ArrayList;

    iget-object v7, v4, Lg/lq;->a:Lg/fza;

    iget-object v8, v2, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v8, v2}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v8

    iget-object v9, v4, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v9, v4}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v9

    new-instance v10, Lg/gdr;

    invoke-direct {v10, v8, v5, v9, v7}, Lg/gdr;-><init>(Lg/evf;Lg/fza;Lg/evf;Lg/fza;)V

    iget-object v8, v4, Lg/lq;->c:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v11, v8, v9, v12}, Lg/fgi;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Stack;I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lg/fza;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    aget-object v14, v9, v12

    invoke-virtual {v2}, Lg/fkb;->k()Lg/cxc;

    move-result-object v15

    invoke-virtual {v15}, Lg/cxc;->g()Lg/cxc;

    move-result-object v15

    invoke-virtual {v4}, Lg/fkb;->k()Lg/cxc;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lg/cxc;->g()Lg/cxc;

    move-result-object v3

    move-object/from16 v16, v6

    new-instance v6, Lg/gvg;

    move-object/from16 p0, v8

    const/4 v8, 0x0

    invoke-direct {v6, v13, v8, v8}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v13, Lg/gvg;

    invoke-direct {v13, v14, v8, v8}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v21, Lg/cgy;

    iget-object v8, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v14, v0, Lg/cgy;->h:Lg/dda;

    move-object/from16 v22, v8

    iget-object v8, v0, Lg/cgy;->a:Lg/dda;

    move-object/from16 v24, v8

    iget-object v8, v0, Lg/cgy;->c:Lg/fdy;

    move-object/from16 v25, v8

    iget-object v8, v0, Lg/cgy;->g:Lg/evf;

    move-object/from16 v26, v8

    iget-object v8, v0, Lg/cgy;->b:Lg/evf;

    move-object/from16 v27, v8

    move-object/from16 v23, v14

    invoke-direct/range {v21 .. v27}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    move-object/from16 v8, v21

    new-instance v14, Lg/aqf;

    move-object/from16 p1, v9

    const/4 v9, 0x1

    invoke-direct {v14, v8, v15, v6, v9}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    new-instance v6, Lg/aqf;

    invoke-direct {v6, v8, v3, v13, v9}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    iget-object v3, v8, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, v8, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v14}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v6, v16

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v16, v6

    move-object/from16 p0, v8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cgy;

    new-instance v9, Lg/evf;

    const/16 v11, 0x12

    invoke-direct {v9, v11, v10}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v8}, Lg/evf;->q(Lg/cgy;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/bne;

    invoke-direct {v6, v5, v7}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    new-instance v8, Lg/avz;

    invoke-direct {v8}, Lg/avz;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/cgy;

    invoke-virtual {v11}, Lg/cgy;->l()Lg/fkb;

    move-result-object v12

    invoke-virtual {v12}, Lg/fkb;->i()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v11}, Lg/cgy;->p()Lg/fkb;

    move-result-object v12

    invoke-virtual {v12}, Lg/fkb;->i()Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v11}, Lg/cgy;->l()Lg/fkb;

    move-result-object v12

    invoke-virtual {v11}, Lg/cgy;->p()Lg/fkb;

    move-result-object v11

    goto :goto_c

    :cond_c
    :goto_b
    invoke-virtual {v11}, Lg/cgy;->l()Lg/fkb;

    move-result-object v12

    invoke-virtual {v11}, Lg/cgy;->p()Lg/fkb;

    move-result-object v11

    instance-of v13, v12, Lg/ty;

    instance-of v14, v11, Lg/ty;

    if-eqz v13, :cond_d

    if-nez v14, :cond_e

    :cond_d
    const/4 v11, 0x0

    goto :goto_e

    :cond_e
    check-cast v12, Lg/ty;

    check-cast v11, Lg/ty;

    iget-object v13, v12, Lg/ty;->a:Lg/fkb;

    invoke-virtual {v13}, Lg/fkb;->i()Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v11, Lg/ty;->a:Lg/fkb;

    invoke-virtual {v13}, Lg/fkb;->i()Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    iget-object v12, v12, Lg/ty;->a:Lg/fkb;

    iget-object v11, v11, Lg/ty;->a:Lg/fkb;

    :goto_c
    invoke-virtual {v12}, Lg/fkb;->k()Lg/cxc;

    move-result-object v12

    invoke-virtual {v11}, Lg/fkb;->k()Lg/cxc;

    move-result-object v11

    iget-boolean v13, v8, Lg/avz;->c:Z

    iget-boolean v14, v12, Lg/cxc;->d:Z

    and-int/2addr v13, v14

    iput-boolean v13, v8, Lg/avz;->c:Z

    iget-boolean v13, v8, Lg/avz;->d:Z

    iget-boolean v14, v11, Lg/cxc;->d:Z

    and-int/2addr v13, v14

    iput-boolean v13, v8, Lg/avz;->d:Z

    iget-object v13, v8, Lg/avz;->a:Ljava/io/Serializable;

    check-cast v13, Ljava/util/HashSet;

    iget-object v12, v12, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashSet;

    invoke-interface {v13, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v8, Lg/avz;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashSet;

    iget-object v11, v11, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashSet;

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    :goto_d
    iput-boolean v11, v8, Lg/avz;->e:Z

    goto/16 :goto_a

    :goto_e
    iput-boolean v11, v8, Lg/avz;->e:Z

    goto/16 :goto_a

    :cond_11
    iget-boolean v9, v8, Lg/avz;->e:Z

    if-nez v9, :cond_13

    if-nez v6, :cond_13

    move-object/from16 v8, p0

    move-object/from16 v6, v16

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_12
    const/4 v3, 0x0

    move-object v8, v3

    :cond_13
    if-eqz v3, :cond_15

    if-nez v8, :cond_14

    goto/16 :goto_10

    :cond_14
    invoke-virtual {v2}, Lg/fkb;->k()Lg/cxc;

    move-result-object v1

    invoke-virtual {v1}, Lg/cxc;->g()Lg/cxc;

    move-result-object v1

    iget-boolean v5, v8, Lg/avz;->c:Z

    iput-boolean v5, v1, Lg/cxc;->d:Z

    iget-object v5, v8, Lg/avz;->a:Ljava/io/Serializable;

    check-cast v5, Ljava/util/HashSet;

    iget-object v6, v1, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lg/fkb;->k()Lg/cxc;

    move-result-object v5

    invoke-virtual {v5}, Lg/cxc;->g()Lg/cxc;

    move-result-object v5

    iget-boolean v6, v8, Lg/avz;->d:Z

    iput-boolean v6, v5, Lg/cxc;->d:Z

    iget-object v6, v8, Lg/avz;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    iget-object v7, v5, Lg/cxc;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashSet;

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Lg/gvg;

    iget-object v2, v2, Lg/lq;->a:Lg/fza;

    const/4 v8, 0x0

    invoke-direct {v6, v2, v8, v8}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v2, Lg/gvg;

    iget-object v4, v4, Lg/lq;->a:Lg/fza;

    invoke-direct {v2, v4, v8, v8}, Lg/gvg;-><init>(Lg/fza;II)V

    new-instance v9, Lg/cgy;

    iget-object v10, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v11, v0, Lg/cgy;->h:Lg/dda;

    iget-object v12, v0, Lg/cgy;->a:Lg/dda;

    iget-object v13, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v14, v0, Lg/cgy;->g:Lg/evf;

    iget-object v15, v0, Lg/cgy;->b:Lg/evf;

    invoke-direct/range {v9 .. v15}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v0, Lg/aqf;

    const/4 v4, 0x1

    invoke-direct {v0, v9, v1, v6, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    new-instance v1, Lg/aqf;

    invoke-direct {v1, v9, v5, v2, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    iget-object v2, v9, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v9, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Lg/cgy;->o(Ljava/util/List;)V

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v9, v0, v20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v20

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_f
    move-object v4, v0

    goto/16 :goto_28

    :cond_15
    :goto_10
    sget-object v1, Lg/gne;->NON_MATCHING_PATHS:Lg/gne;

    new-instance v2, Lg/cgy;

    iget-object v3, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v4, v0, Lg/cgy;->h:Lg/dda;

    iget-object v5, v0, Lg/cgy;->a:Lg/dda;

    iget-object v6, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v7, v0, Lg/cgy;->g:Lg/evf;

    iget-object v8, v0, Lg/cgy;->b:Lg/evf;

    invoke-direct/range {v2 .. v8}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v0, Lg/fjk;

    invoke-direct {v0, v2, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    new-instance v3, Lg/fjk;

    invoke-direct {v3, v2, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    iget-object v1, v2, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v2, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v0, v20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v20

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :pswitch_1
    iget-object v0, v0, Lg/fgi;->a:Lg/cgy;

    iget-object v1, v0, Lg/cgy;->c:Lg/fdy;

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v2

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v3

    invoke-virtual {v2}, Lg/fkb;->e()Lg/gvg;

    move-result-object v2

    invoke-virtual {v3}, Lg/fkb;->e()Lg/gvg;

    move-result-object v3

    iget-object v2, v2, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v2, Lg/fza;

    iget-object v3, v3, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v4

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v5

    invoke-virtual {v4}, Lg/fkb;->e()Lg/gvg;

    move-result-object v6

    invoke-virtual {v5}, Lg/fkb;->e()Lg/gvg;

    move-result-object v7

    if-eqz v6, :cond_39

    if-eqz v7, :cond_39

    iget-object v8, v6, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    iget-object v9, v7, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v9, Lg/fza;

    invoke-virtual {v6}, Lg/gvg;->i()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lg/gvg;->i()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v16, v1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v14, :cond_28

    sub-int v18, v13, v1

    move/from16 v19, v1

    const/16 v17, 0x1

    add-int/lit8 v1, v18, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    sub-int v18, v12, v19

    move-object/from16 p0, v11

    add-int/lit8 v11, v18, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/eek;

    invoke-virtual {v1, v11}, Lg/eek;->_p(Lg/eek;)Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v9

    move-object/from16 p1, v10

    :goto_12
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_16
    move-object/from16 v18, v2

    move-object/from16 p1, v10

    const/4 v10, 0x0

    :goto_13
    iget-object v2, v1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_26

    invoke-virtual {v1, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    move-object/from16 v21, v3

    invoke-virtual {v11, v10}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    if-nez v2, :cond_18

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v9

    move/from16 v22, v10

    :cond_17
    :goto_14
    const/4 v2, 0x0

    goto/16 :goto_1b

    :cond_18
    move/from16 v22, v10

    instance-of v10, v2, Lg/gks;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v5

    instance-of v5, v3, Lg/gks;

    if-eq v10, v5, :cond_19

    move-object/from16 v24, v4

    move-object/from16 v25, v9

    goto :goto_14

    :cond_19
    if-eqz v10, :cond_20

    move-object v5, v2

    check-cast v5, Lg/gks;

    move-object v10, v3

    check-cast v10, Lg/gks;

    invoke-virtual {v5, v10}, Lg/gks;->y(Lg/gks;)Z

    move-result v24

    if-nez v24, :cond_20

    move-object/from16 v24, v4

    sget-object v4, Lg/acq;->s:Lg/acq;

    move-object/from16 v25, v9

    iget-object v9, v10, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v9

    check-cast v9, Lg/fih;

    move-object/from16 v26, v10

    iget-object v10, v5, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v4

    check-cast v4, Lg/fih;

    if-eqz v9, :cond_1b

    if-nez v4, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v4, v9}, Lg/fih;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_16

    :cond_1b
    :goto_15
    const/4 v4, 0x0

    :goto_16
    if-nez v4, :cond_21

    invoke-virtual/range {v26 .. v26}, Lg/gks;->aa()Lg/eek;

    move-result-object v4

    invoke-virtual {v5}, Lg/gks;->aa()Lg/eek;

    move-result-object v5

    if-eqz v4, :cond_1d

    if-nez v5, :cond_1c

    goto :goto_17

    :cond_1c
    invoke-virtual {v4, v5}, Lg/eek;->_p(Lg/eek;)Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_1d
    :goto_17
    const/4 v4, 0x1

    goto :goto_18

    :cond_1e
    invoke-virtual {v4}, Lg/eek;->as()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-virtual {v5}, Lg/eek;->as()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v4, v4, Lg/eek;->aj:Ljava/util/List;

    invoke-static {v4, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1f
    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_21

    :goto_19
    goto :goto_14

    :cond_20
    move-object/from16 v24, v4

    move-object/from16 v25, v9

    :cond_21
    invoke-virtual {v2}, Lg/gsh;->am()Z

    move-result v4

    invoke-virtual {v3}, Lg/gsh;->am()Z

    move-result v5

    if-eq v4, v5, :cond_22

    goto :goto_19

    :cond_22
    if-eqz v4, :cond_24

    invoke-virtual {v2}, Lg/gsh;->am()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Lg/gsh;->am()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1a

    :cond_23
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_17

    :cond_24
    const/4 v2, 0x1

    :goto_1b
    if-nez v2, :cond_25

    goto/16 :goto_12

    :cond_25
    add-int/lit8 v10, v22, 0x1

    move-object/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v9, v25

    goto/16 :goto_13

    :cond_26
    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v9

    const/4 v2, 0x1

    :goto_1c
    if-nez v2, :cond_27

    goto :goto_1d

    :cond_27
    new-instance v2, Lg/bne;

    invoke-direct {v2, v11, v1}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    move-object/from16 v9, v25

    goto/16 :goto_11

    :cond_28
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v9

    :goto_1d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lg/cgy;->k(Lg/gvg;I)V

    invoke-virtual {v0, v7, v1}, Lg/cgy;->k(Lg/gvg;I)V

    if-le v12, v13, :cond_29

    const/4 v2, 0x1

    goto :goto_1e

    :cond_29
    const/4 v2, 0x0

    :goto_1e
    if-ge v12, v13, :cond_2a

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2a
    const/4 v3, 0x0

    :goto_1f
    if-nez v2, :cond_2b

    if-nez v3, :cond_2b

    const/4 v2, 0x1

    goto :goto_20

    :cond_2b
    const/4 v2, 0x0

    :goto_20
    if-ne v1, v14, :cond_2c

    const/4 v3, 0x1

    goto :goto_21

    :cond_2c
    const/4 v3, 0x0

    :goto_21
    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_22

    :cond_2d
    const/4 v1, 0x0

    :goto_22
    iget-object v4, v0, Lg/cgy;->e:Ljava/util/Set;

    invoke-interface {v4, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x2

    if-eqz v3, :cond_30

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Lg/cgy;->l()Lg/fkb;

    move-result-object v1

    invoke-virtual {v1}, Lg/fkb;->k()Lg/cxc;

    move-result-object v1

    invoke-virtual {v1}, Lg/cxc;->g()Lg/cxc;

    move-result-object v1

    invoke-virtual {v0}, Lg/cgy;->p()Lg/fkb;

    move-result-object v2

    invoke-virtual {v2}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    invoke-virtual {v2}, Lg/cxc;->g()Lg/cxc;

    move-result-object v2

    const/4 v9, 0x0

    iput-boolean v9, v1, Lg/cxc;->d:Z

    iput-boolean v9, v2, Lg/cxc;->d:Z

    iput-boolean v9, v1, Lg/cxc;->e:Z

    iput-boolean v9, v2, Lg/cxc;->e:Z

    new-instance v26, Lg/cgy;

    iget-object v3, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v5, v0, Lg/cgy;->h:Lg/dda;

    iget-object v6, v0, Lg/cgy;->a:Lg/dda;

    iget-object v7, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v9, v0, Lg/cgy;->g:Lg/evf;

    iget-object v0, v0, Lg/cgy;->b:Lg/evf;

    move-object/from16 v32, v0

    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    invoke-direct/range {v26 .. v32}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    move-object/from16 v0, v26

    new-instance v3, Lg/aqf;

    invoke-direct {v3, v0, v1, v8, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    new-instance v1, Lg/aqf;

    move-object/from16 v9, v25

    invoke-direct {v1, v0, v2, v9, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    iget-object v2, v0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_2e
    move-object/from16 v9, v25

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v12, v13, :cond_2f

    invoke-virtual/range {v23 .. v23}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    invoke-virtual {v2}, Lg/cxc;->g()Lg/cxc;

    move-result-object v2

    const/4 v11, 0x0

    iput-boolean v11, v2, Lg/cxc;->d:Z

    iput-boolean v11, v2, Lg/cxc;->e:Z

    invoke-virtual/range {v24 .. v24}, Lg/fkb;->k()Lg/cxc;

    move-result-object v3

    iput-boolean v11, v3, Lg/cxc;->d:Z

    iput-boolean v11, v3, Lg/cxc;->e:Z

    sub-int/2addr v12, v1

    new-instance v1, Lg/btj;

    move-object/from16 v3, v24

    invoke-direct {v1, v3}, Lg/btj;-><init>(Lg/fkb;)V

    invoke-virtual {v3}, Lg/fkb;->e()Lg/gvg;

    move-result-object v3

    new-instance v4, Lg/cpb;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v9, v5}, Lg/cpb;-><init>(Lg/cxc;Ljava/lang/Object;I)V

    goto :goto_23

    :cond_2f
    move-object/from16 v3, v24

    const/4 v11, 0x0

    invoke-virtual {v3}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    invoke-virtual {v2}, Lg/cxc;->g()Lg/cxc;

    move-result-object v2

    iput-boolean v11, v2, Lg/cxc;->d:Z

    iput-boolean v11, v2, Lg/cxc;->e:Z

    invoke-virtual/range {v23 .. v23}, Lg/fkb;->k()Lg/cxc;

    move-result-object v3

    iput-boolean v11, v3, Lg/cxc;->d:Z

    iput-boolean v11, v3, Lg/cxc;->e:Z

    sub-int v12, v13, v1

    invoke-virtual/range {v23 .. v23}, Lg/fkb;->k()Lg/cxc;

    move-result-object v1

    iput-boolean v11, v1, Lg/cxc;->d:Z

    new-instance v4, Lg/btj;

    move-object/from16 v5, v23

    invoke-direct {v4, v5}, Lg/btj;-><init>(Lg/fkb;)V

    invoke-virtual {v5}, Lg/fkb;->e()Lg/gvg;

    move-result-object v3

    new-instance v1, Lg/cpb;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v8, v5}, Lg/cpb;-><init>(Lg/cxc;Ljava/lang/Object;I)V

    :goto_23
    iget v2, v3, Lg/gvg;->e:I

    add-int/2addr v2, v12

    iput v2, v3, Lg/gvg;->e:I

    invoke-static {v0, v1, v4}, Lg/cgy;->j(Lg/cgy;Lg/afo;Lg/afo;)Lg/cgy;

    move-result-object v26

    goto/16 :goto_27

    :cond_30
    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v9, v25

    if-eqz v1, :cond_36

    invoke-virtual {v3}, Lg/fkb;->k()Lg/cxc;

    move-result-object v1

    invoke-virtual {v5}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    iget-boolean v1, v1, Lg/cxc;->e:Z

    if-nez v1, :cond_32

    iget-boolean v1, v2, Lg/cxc;->e:Z

    if-eqz v1, :cond_31

    goto :goto_24

    :cond_31
    const/4 v1, 0x0

    goto :goto_25

    :cond_32
    :goto_24
    const/4 v1, 0x1

    :goto_25
    if-eqz v1, :cond_36

    invoke-virtual {v3}, Lg/fkb;->k()Lg/cxc;

    move-result-object v1

    invoke-virtual {v5}, Lg/fkb;->k()Lg/cxc;

    move-result-object v2

    iget-boolean v6, v1, Lg/cxc;->e:Z

    const-string v7, " has duplicated to produce a class of "

    const-string v10, "A state of class "

    if-eqz v6, :cond_34

    const/4 v11, 0x0

    iput-boolean v11, v1, Lg/cxc;->e:Z

    new-instance v22, Lg/cgy;

    iget-object v2, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v3, v0, Lg/cgy;->h:Lg/dda;

    iget-object v6, v0, Lg/cgy;->a:Lg/dda;

    iget-object v9, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v11, v0, Lg/cgy;->g:Lg/evf;

    iget-object v0, v0, Lg/cgy;->b:Lg/evf;

    move-object/from16 v28, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    invoke-direct/range {v22 .. v28}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    move-object/from16 v0, v22

    new-instance v2, Lg/aqf;

    invoke-direct {v2, v0, v1, v8, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v0}, Lg/fkb;->f(Lg/cgy;)Lg/fkb;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkb;

    iget-object v3, v0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_26
    move-object/from16 v26, v0

    goto/16 :goto_27

    :cond_33
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 v11, 0x0

    iput-boolean v11, v2, Lg/cxc;->e:Z

    new-instance v22, Lg/cgy;

    iget-object v1, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v5, v0, Lg/cgy;->h:Lg/dda;

    iget-object v6, v0, Lg/cgy;->a:Lg/dda;

    iget-object v8, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v11, v0, Lg/cgy;->g:Lg/evf;

    iget-object v0, v0, Lg/cgy;->b:Lg/evf;

    move-object/from16 v28, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v11

    invoke-direct/range {v22 .. v28}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    move-object/from16 v0, v22

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v0}, Lg/fkb;->f(Lg/cgy;)Lg/fkb;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fkb;

    new-instance v3, Lg/aqf;

    invoke-direct {v3, v0, v2, v9, v4}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    iget-object v2, v0, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, v0, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_26

    :cond_35
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    sget-object v1, Lg/gne;->NON_MATCHING_INSTRUCTIONS:Lg/gne;

    new-instance v2, Lg/cgy;

    iget-object v3, v0, Lg/cgy;->e:Ljava/util/Set;

    iget-object v4, v0, Lg/cgy;->h:Lg/dda;

    iget-object v5, v0, Lg/cgy;->a:Lg/dda;

    iget-object v6, v0, Lg/cgy;->c:Lg/fdy;

    iget-object v7, v0, Lg/cgy;->g:Lg/evf;

    iget-object v8, v0, Lg/cgy;->b:Lg/evf;

    invoke-direct/range {v2 .. v8}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v0, Lg/fjk;

    invoke-direct {v0, v2, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    new-instance v3, Lg/fjk;

    invoke-direct {v3, v2, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    iget-object v1, v2, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v2, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object/from16 v26, v2

    :goto_27
    if-eqz v18, :cond_37

    if-eqz v21, :cond_37

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v26, v0, v20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v20

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/bne;

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v1, v2, v3}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v16

    iget-object v2, v2, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v26, v0, v20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v20

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :cond_38
    :goto_28
    return-object v4

    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The instruction comparator handler has received a state which does not support block insn info"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A sealed class, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lg/bnf;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", has an unknown implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ad(Lg/czh;Lg/anx;)V
    .locals 2

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    iget-object p2, p2, Lg/anx;->b:Ljava/lang/Object;

    check-cast p2, Lg/cbf;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lg/fzn;->k(Lg/fzn;Lg/ctg;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lg/cbf;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lg/cbf;->getData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/ctg;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lg/ctg;->getAllianceArray()[Lg/fwx;

    move-result-object p2

    invoke-static {p2}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p1, Lg/fzk;

    const p2, 0x7f12008c

    iget-object v0, p1, Lg/fzk;->l:Lg/ctx;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object p2, p1, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Lg/fzk;->p(I)V

    iget-object p1, p1, Lg/fzk;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {p1, v0}, Lg/fzn;->k(Lg/fzn;Lg/ctg;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast p1, Lg/fzk;

    invoke-virtual {p2}, Lg/cbf;->getMessage()Ljava/lang/String;

    iget-object p2, p1, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Lg/fzk;->p(I)V

    iget-object p1, p1, Lg/fzk;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ao()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    sget-object v1, Lg/cnj;->d:Lg/cnj;

    invoke-virtual {v1, v0}, Lg/cnj;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public b(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)Lg/fnz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Lg/fnz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/efr;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(I)Z
    .locals 4

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    iget-object v1, v0, Lg/baq;->y:Lg/dbv;

    invoke-virtual {v1, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lg/glp;

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    check-cast p1, Lg/glp;

    iget-object p1, p1, Lg/th;->b:Ljava/lang/String;

    iget-object v0, v0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0, v2, p1, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v3

    :cond_1
    instance-of v1, p1, Lg/th;

    if-eqz v1, :cond_2

    check-cast p1, Lg/th;

    iget-object p1, p1, Lg/th;->b:Ljava/lang/String;

    iget-object v0, v0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0, v2, p1, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lg/x;)V
    .locals 2

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/get;

    iget-object p1, p1, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/eie;

    iget-object p1, p1, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/emr;

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/aco;

    iget-object p1, p1, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    iget-object p1, p1, Lg/dmr;->a:Lf/a/e;

    new-instance v0, Lg/fc;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg/cdy;->l(Lg/btp;)V

    return-void
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 1

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/cle;

    invoke-virtual {p2}, Lg/anp;->f()I

    move-result v0

    iput v0, p1, Lg/cle;->p:I

    invoke-virtual {p2}, Lg/anp;->h()I

    move-result v0

    iput v0, p1, Lg/cle;->o:I

    invoke-virtual {p2}, Lg/anp;->i()I

    move-result v0

    iput v0, p1, Lg/cle;->y:I

    invoke-virtual {p1}, Lg/cle;->al()V

    return-object p2
.end method

.method public m()Lg/gsh;
    .locals 2

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/bgw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    return-object v0
.end method

.method public n(Lg/gjn;)Lg/gjn;
    .locals 2

    instance-of v0, p1, Lg/nu;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lg/aed;

    iget-object v1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/ddm;

    invoke-virtual {v1}, Lg/ddm;->ep()F

    move-result v1

    neg-float v1, v1

    invoke-direct {v0, v1, p1}, Lg/aed;-><init>(FLg/gjn;)V

    return-object v0
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/get;

    iget-object v0, v0, Lg/get;->b:Ljava/lang/Object;

    check-cast v0, Lg/eie;

    iget-object v0, v0, Lg/eie;->g:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v0, v0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/aco;

    iget-object v0, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg/dmr;->l(IZ)V

    return-void
.end method

.method public p(Lg/cgy;Lg/fkb;Z)Z
    .locals 5

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_3

    :cond_1
    invoke-virtual {p2}, Lg/fkb;->h()Lg/hco;

    move-result-object v0

    sget-object v4, Lg/hco;->NOT_READY:Lg/hco;

    if-eq v0, v4, :cond_2

    invoke-virtual {p2}, Lg/fkb;->h()Lg/hco;

    move-result-object v0

    sget-object v4, Lg/hco;->AWAITING_OPTIONAL_PREDECESSOR_MERGE:Lg/hco;

    if-ne v0, v4, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p2}, Lg/fkb;->d()Lg/cro;

    move-result-object p2

    invoke-static {p1, p2}, Lg/evf;->l(Lg/cgy;Lg/cro;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_4

    :cond_3
    return v3

    :cond_4
    new-instance p1, Lg/gck;

    const-string p2, "A traverser handler which was not expected to change path states actually did"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lg/cgy;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    :goto_0
    iget-object v5, v4, Lg/cgy;->c:Lg/fdy;

    invoke-virtual {v4}, Lg/cgy;->l()Lg/fkb;

    move-result-object v6

    invoke-virtual {v4}, Lg/cgy;->p()Lg/fkb;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v6, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_0

    sget-object v5, Lg/gne;->UNRESOLVABLE_STATES:Lg/gne;

    new-instance v11, Lg/cgy;

    iget-object v12, v4, Lg/cgy;->e:Ljava/util/Set;

    iget-object v13, v4, Lg/cgy;->h:Lg/dda;

    iget-object v14, v4, Lg/cgy;->a:Lg/dda;

    iget-object v15, v4, Lg/cgy;->c:Lg/fdy;

    iget-object v6, v4, Lg/cgy;->g:Lg/evf;

    iget-object v7, v4, Lg/cgy;->b:Lg/evf;

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v6, Lg/fjk;

    invoke-direct {v6, v11, v5}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    new-instance v7, Lg/fjk;

    invoke-direct {v7, v11, v5}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    iget-object v5, v11, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v5, v11, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v11, v5, v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v5, v5, v9

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 p1, 0x0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lg/fkb;->i()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Lg/fkb;->i()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/16 p1, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lg/fkb;->h()Lg/hco;

    move-result-object v8

    sget-object v11, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    if-ne v8, v11, :cond_7

    invoke-virtual {v7}, Lg/fkb;->h()Lg/hco;

    move-result-object v8

    if-ne v8, v11, :cond_7

    invoke-virtual {v6}, Lg/fkb;->e()Lg/gvg;

    move-result-object v6

    invoke-virtual {v7}, Lg/fkb;->e()Lg/gvg;

    move-result-object v8

    if-eqz v6, :cond_3

    if-eqz v8, :cond_3

    iget-object v6, v6, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v6, Lg/fza;

    iget-object v8, v8, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v8, Lg/fza;

    goto :goto_1

    :cond_3
    move-object v6, v2

    move-object v8, v6

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lg/bne;

    invoke-direct {v11, v6, v8}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v5, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lg/bne;

    invoke-direct {v7, v6, v8}, Lg/bne;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v5, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cgy;

    invoke-virtual {v8}, Lg/cgy;->l()Lg/fkb;

    move-result-object v11

    invoke-virtual {v8}, Lg/cgy;->p()Lg/fkb;

    move-result-object v8

    new-instance v12, Lg/cgy;

    iget-object v13, v4, Lg/cgy;->e:Ljava/util/Set;

    iget-object v14, v4, Lg/cgy;->h:Lg/dda;

    iget-object v15, v4, Lg/cgy;->a:Lg/dda;

    iget-object v2, v4, Lg/cgy;->c:Lg/fdy;

    const/16 p1, 0x0

    iget-object v9, v4, Lg/cgy;->g:Lg/evf;

    iget-object v10, v4, Lg/cgy;->b:Lg/evf;

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Lg/cgy;-><init>(Ljava/util/Set;Lg/dda;Lg/dda;Lg/fdy;Lg/evf;Lg/evf;)V

    new-instance v2, Lg/ty;

    invoke-direct {v2, v11}, Lg/ty;-><init>(Lg/fkb;)V

    new-instance v9, Lg/ty;

    invoke-direct {v9, v8}, Lg/ty;-><init>(Lg/fkb;)V

    iget-object v8, v12, Lg/cgy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v8, v12, Lg/cgy;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Lg/cgy;->o(Ljava/util/List;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/16 p1, 0x0

    move-object v5, v6

    goto :goto_7

    :cond_6
    const/16 p1, 0x0

    invoke-virtual {v7}, Lg/fkb;->d()Lg/cro;

    move-result-object v2

    invoke-static {v4, v2}, Lg/evf;->l(Lg/cgy;Lg/cro;)Ljava/util/List;

    move-result-object v5

    goto :goto_7

    :cond_7
    const/16 p1, 0x0

    invoke-virtual {v6}, Lg/fkb;->h()Lg/hco;

    move-result-object v2

    sget-object v5, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    if-eq v2, v5, :cond_9

    invoke-virtual {v7}, Lg/fkb;->h()Lg/hco;

    move-result-object v2

    if-ne v2, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v0, v4, v6, v2}, Lg/evf;->p(Lg/cgy;Lg/fkb;Z)Z

    move-result v5

    invoke-virtual {v0, v4, v7, v2}, Lg/evf;->p(Lg/cgy;Lg/fkb;Z)Z

    move-result v2

    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    :goto_6
    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, p1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v2, v5, p1

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :goto_7
    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    new-instance v1, Lg/evf;

    iget-object v2, v0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Function;

    const/16 v3, 0x12

    invoke-direct {v1, v3, v2}, Lg/evf;-><init>(ILjava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cgy;

    invoke-virtual {v1, v4}, Lg/evf;->q(Lg/cgy;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_c
    return-object v2

    :cond_d
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg/cgy;

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_9
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v3, v2

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public r(Ljava/util/HashMap;)V
    .locals 8

    const-string v0, "values"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "key"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_6
    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const-class v4, [Ljava/lang/Boolean;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const-class v4, [Ljava/lang/Byte;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_9

    :cond_9
    const-class v4, [Ljava/lang/Integer;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_9
    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const-class v4, [Ljava/lang/Long;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_a
    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_b

    :cond_b
    const-class v4, [Ljava/lang/Float;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    const-class v4, [Ljava/lang/Double;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_d

    goto :goto_d

    :cond_d
    const-class v4, [Ljava/lang/String;

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_d
    if-eqz v5, :cond_e

    goto/16 :goto_14

    :cond_e
    const-class v4, [Z

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    check-cast v0, [Z

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Boolean;

    :goto_e
    if-ge v5, v3, :cond_f

    aget-boolean v6, v0, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_f
    move-object v0, v4

    goto/16 :goto_14

    :cond_10
    const-class v4, [B

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    check-cast v0, [B

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Byte;

    :goto_f
    if-ge v5, v3, :cond_f

    aget-byte v6, v0, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_11
    const-class v4, [I

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    check-cast v0, [I

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Integer;

    :goto_10
    if-ge v5, v3, :cond_f

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_12
    const-class v4, [J

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    check-cast v0, [J

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Long;

    :goto_11
    if-ge v5, v3, :cond_f

    aget-wide v6, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_13
    const-class v4, [F

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    check-cast v0, [F

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Float;

    :goto_12
    if-ge v5, v3, :cond_f

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_14
    const-class v4, [D

    invoke-static {v4}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    check-cast v0, [D

    sget-object v3, Lg/ow;->a:Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/Double;

    :goto_13
    if-ge v5, v3, :cond_f

    aget-wide v6, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :goto_14
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    return-void
.end method

.method public s(Landroidx/recyclerview/widget/p;I)V
    .locals 1

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/baq;

    iget-object v0, p1, Lg/baq;->y:Lg/dbv;

    invoke-virtual {v0, p2}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p2

    if-eqz p2, :cond_1

    instance-of v0, p2, Lg/glp;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lg/glp;

    iget-object p2, p2, Lg/glp;->c:Lg/he;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lg/baq;->ao(Lg/he;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg/evf;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v1, Lg/bgw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v1}, Lg/ges;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/evf;->m()Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public v(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg/etm;

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    iget-object v1, v0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fob;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lg/fob;->mWho:Ljava/lang/String;

    iget v1, v1, Lg/fob;->mRequestCode:I

    iget-object v0, v0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/e;->l(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lg/etm;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/fzn;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lg/fzn;->k(Lg/fzn;Lg/ctg;)V

    return-void
.end method

.method public zza()V
    .locals 1

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbno;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbno;->a:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->e()V

    return-void
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lg/evf;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "omid native display exp"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcsy;->h:Lcom/google/android/gms/internal/ads/zzdbt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzn(Z)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbyc;->a:Ljava/util/List;

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/dcy;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/evf;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyt;->c:Lcom/google/android/gms/internal/ads/zzczh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzdo(Lcom/google/android/gms/internal/ads/zzfff;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdkv;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdkx;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "omid native display exp"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object p1, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcsy;->h:Lcom/google/android/gms/internal/ads/zzdbt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbt;->zzn(Z)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbyc;->a:Ljava/util/List;

    iget-object v0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast v0, Lg/dcy;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

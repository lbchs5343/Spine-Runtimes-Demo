.class public abstract Lg/gad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/tw;

.field public static final aa:Lg/tw;

.field public static final ab:Lg/tw;

.field public static final ac:Lg/tw;

.field public static final ad:Lg/tw;

.field public static final ae:Lg/tw;

.field public static final af:Lg/tw;

.field public static final ag:Lg/tw;

.field public static final ah:Lg/tw;

.field public static final ai:Lg/tw;

.field public static final aj:Lg/tw;

.field public static final ak:Lg/tw;

.field public static final al:Lg/tw;

.field public static final am:Lg/tw;

.field public static final an:Lg/tw;

.field public static final ao:Lg/tw;

.field public static final ap:Lg/tw;

.field public static final aq:Lg/tw;

.field public static final ar:Lg/tw;

.field public static final as:Lg/tw;

.field public static final at:Lg/tw;

.field public static final au:Lg/tw;

.field public static final av:Lg/tw;

.field public static final aw:Lg/tw;

.field public static final ax:Lg/tw;

.field public static final ay:Lg/tw;

.field public static final az:Lg/tw;

.field public static final b:Lg/tw;

.field public static final ba:Lg/tw;

.field public static final bb:Lg/tw;

.field public static final bc:Lg/tw;

.field public static final bd:Lg/tw;

.field public static final be:Lg/tw;

.field public static final bf:Lg/tw;

.field public static final bg:Lg/tw;

.field public static final bh:Lg/tw;

.field public static final bi:Lg/tw;

.field public static final bj:Lg/tw;

.field public static final bk:Lg/tw;

.field public static final bl:Lg/tw;

.field public static final bm:Lg/tw;

.field public static final bn:Lg/tw;

.field public static final bo:Lg/tw;

.field public static final bp:Lg/tw;

.field public static final bq:Lg/tw;

.field public static final br:Lg/tw;

.field public static final bs:Lg/tw;

.field public static final bt:Lg/tw;

.field public static final bu:Lg/tw;

.field public static final bv:Lg/tw;

.field public static final bw:Lg/tw;

.field public static final bx:Lg/tw;

.field public static final c:Lg/tw;

.field public static final d:Lg/tw;

.field public static final e:Lg/tw;

.field public static final f:Lg/tw;

.field public static final g:Lg/tw;

.field public static final h:Lg/tw;

.field public static final i:Lg/tw;

.field public static final j:Lg/tw;

.field public static final k:Lg/tw;

.field public static final l:Lg/tw;

.field public static final m:Lg/tw;

.field public static final n:Lg/tw;

.field public static final o:Lg/tw;

.field public static final p:Lg/tw;

.field public static final q:Lg/tw;

.field public static final r:Lg/tw;

.field public static final s:Lg/tw;

.field public static final t:Lg/tw;

.field public static final u:Lg/tw;

.field public static final v:Lg/tw;

.field public static final w:Lg/tw;

.field public static final x:Lg/tw;

.field public static final y:Lg/tw;

.field public static final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/gad;->z:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "measurement.ad_id_cache_time"

    sget-object v2, Lg/dwm;->i:Lg/dwm;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->ax:Lg/tw;

    const-wide/32 v1, 0x5265c00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.monitoring.sample_period_millis"

    sget-object v3, Lg/bfy;->k:Lg/bfy;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bj:Lg/tw;

    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "measurement.config.cache_time"

    sget-object v4, Lg/ao;->c:Lg/ao;

    invoke-static {v3, v1, v2, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v3

    sput-object v3, Lg/gad;->t:Lg/tw;

    const-string v3, "measurement.config.url_scheme"

    sget-object v4, Lg/acq;->bb:Lg/acq;

    const-string v5, "https"

    invoke-static {v3, v5, v5, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v3

    sput-object v3, Lg/gad;->x:Lg/tw;

    const-string v3, "measurement.config.url_authority"

    sget-object v4, Lg/bmr;->b:Lg/bmr;

    const-string v5, "app-measurement.com"

    invoke-static {v3, v5, v5, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v3

    sput-object v3, Lg/gad;->al:Lg/tw;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "measurement.upload.max_bundles"

    sget-object v5, Lg/dwm;->q:Lg/dwm;

    invoke-static {v4, v3, v3, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->bs:Lg/tw;

    const/high16 v4, 0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "measurement.upload.max_batch_size"

    sget-object v6, Lg/bfy;->i:Lg/bfy;

    invoke-static {v5, v4, v4, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v5

    sput-object v5, Lg/gad;->d:Lg/tw;

    const-string v5, "measurement.upload.max_bundle_size"

    sget-object v6, Lg/dwm;->g:Lg/dwm;

    invoke-static {v5, v4, v4, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->au:Lg/tw;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "measurement.upload.max_events_per_bundle"

    sget-object v6, Lg/acq;->v:Lg/acq;

    invoke-static {v5, v4, v4, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v5

    sput-object v5, Lg/gad;->ba:Lg/tw;

    const v5, 0x186a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "measurement.upload.max_events_per_day"

    sget-object v7, Lg/bfy;->t:Lg/bfy;

    invoke-static {v6, v5, v5, v7}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v6

    sput-object v6, Lg/gad;->e:Lg/tw;

    const-string v6, "measurement.upload.max_error_events_per_day"

    sget-object v7, Lg/acq;->b:Lg/acq;

    invoke-static {v6, v4, v4, v7}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->v:Lg/tw;

    const v4, 0xc350

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_public_events_per_day"

    sget-object v7, Lg/bfy;->e:Lg/bfy;

    invoke-static {v6, v4, v4, v7}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->aq:Lg/tw;

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_conversions_per_day"

    sget-object v7, Lg/bmr;->w:Lg/bmr;

    invoke-static {v6, v4, v4, v7}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->s:Lg/tw;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_realtime_events_per_day"

    sget-object v7, Lg/ao;->w:Lg/ao;

    invoke-static {v6, v4, v4, v7}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->k:Lg/tw;

    const-string v4, "measurement.store.max_stored_events_per_app"

    sget-object v6, Lg/dwm;->m:Lg/dwm;

    invoke-static {v4, v5, v5, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->ap:Lg/tw;

    const-string v4, "measurement.upload.url"

    sget-object v5, Lg/bmr;->v:Lg/bmr;

    const-string v6, "https://app-measurement.com/a"

    invoke-static {v4, v6, v6, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->bb:Lg/tw;

    const-wide/32 v4, 0x2932e00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "measurement.upload.backoff_period"

    sget-object v6, Lg/ao;->o:Lg/ao;

    invoke-static {v5, v4, v4, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->bu:Lg/tw;

    const-string v4, "measurement.upload.window_interval"

    sget-object v5, Lg/dwm;->v:Lg/dwm;

    invoke-static {v4, v2, v2, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v4

    sput-object v4, Lg/gad;->ao:Lg/tw;

    const-string v4, "measurement.upload.interval"

    sget-object v5, Lg/bmr;->a:Lg/bmr;

    invoke-static {v4, v2, v2, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bd:Lg/tw;

    const-string v2, "measurement.upload.realtime_upload_interval"

    sget-object v4, Lg/acq;->ar:Lg/acq;

    invoke-static {v2, v0, v0, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->aa:Lg/tw;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.upload.debug_upload_interval"

    sget-object v4, Lg/bmr;->s:Lg/bmr;

    invoke-static {v2, v0, v0, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->ai:Lg/tw;

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.upload.minimum_delay"

    sget-object v4, Lg/ao;->t:Lg/ao;

    invoke-static {v2, v0, v0, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->ak:Lg/tw;

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.alarm_manager.minimum_interval"

    sget-object v4, Lg/dwm;->s:Lg/dwm;

    invoke-static {v2, v0, v0, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->br:Lg/tw;

    const-string v0, "measurement.upload.stale_data_deletion_interval"

    sget-object v2, Lg/acq;->n:Lg/acq;

    invoke-static {v0, v1, v1, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->l:Lg/tw;

    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "measurement.upload.refresh_blacklisted_config_interval"

    sget-object v2, Lg/bfy;->n:Lg/bfy;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->b:Lg/tw;

    const-wide/16 v1, 0x3a98

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.initial_upload_delay_time"

    sget-object v4, Lg/bmr;->i:Lg/bmr;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bc:Lg/tw;

    const-wide/32 v1, 0x1b7740

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.retry_time"

    sget-object v4, Lg/ao;->p:Lg/ao;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->u:Lg/tw;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.upload.retry_count"

    sget-object v4, Lg/acq;->au:Lg/acq;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->ad:Lg/tw;

    const-wide v1, 0x90321000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.max_queue_time"

    sget-object v4, Lg/bfy;->m:Lg/bfy;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->ab:Lg/tw;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.lifetimevalue.max_currency_tracked"

    sget-object v4, Lg/bmr;->l:Lg/bmr;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bq:Lg/tw;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.audience.filter_result_max_count"

    sget-object v4, Lg/dwm;->l:Lg/dwm;

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->be:Lg/tw;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.upload.max_public_user_properties"

    const/4 v4, 0x0

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->p:Lg/tw;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.upload.max_event_name_cardinality"

    invoke-static {v5, v2, v2, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->g:Lg/tw;

    const-string v2, "measurement.upload.max_public_event_params"

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bp:Lg/tw;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.service_client.idle_disconnect_millis"

    sget-object v5, Lg/acq;->bg:Lg/acq;

    invoke-static {v2, v1, v1, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->an:Lg/tw;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "measurement.test.boolean_flag"

    sget-object v5, Lg/bfy;->z:Lg/bfy;

    invoke-static {v2, v1, v1, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->ag:Lg/tw;

    const-string v2, "measurement.test.string_flag"

    sget-object v5, Lg/bmr;->k:Lg/bmr;

    const-string v6, "---"

    invoke-static {v2, v6, v6, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->h:Lg/tw;

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "measurement.test.long_flag"

    sget-object v6, Lg/ao;->n:Lg/ao;

    invoke-static {v5, v2, v2, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->ae:Lg/tw;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.test.int_flag"

    sget-object v6, Lg/dwm;->k:Lg/dwm;

    invoke-static {v5, v2, v2, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->n:Lg/tw;

    const-wide/high16 v5, -0x3ff8000000000000L    # -3.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "measurement.test.double_flag"

    sget-object v6, Lg/bfy;->w:Lg/bfy;

    invoke-static {v5, v2, v2, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bf:Lg/tw;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.experiment.max_ids"

    sget-object v6, Lg/bmr;->x:Lg/bmr;

    invoke-static {v5, v2, v2, v6}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->at:Lg/tw;

    const-string v2, "measurement.max_bundles_per_iteration"

    sget-object v5, Lg/ao;->f:Lg/ao;

    invoke-static {v2, v3, v3, v5}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->m:Lg/tw;

    const-string v2, "measurement.sdk.attribution.cache.ttl"

    sget-object v3, Lg/dwm;->y:Lg/dwm;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->as:Lg/tw;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.redaction.app_instance_id.ttl"

    sget-object v3, Lg/bfy;->j:Lg/bfy;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->bi:Lg/tw;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "measurement.collection.log_event_and_bundle_v2"

    sget-object v3, Lg/bmr;->u:Lg/bmr;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    const-string v2, "measurement.quality.checksum"

    invoke-static {v2, v1, v1, v4}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->ay:Lg/tw;

    const-string v2, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    sget-object v3, Lg/ao;->aa:Lg/ao;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->y:Lg/tw;

    const-string v2, "measurement.audience.refresh_event_count_filters_timestamp"

    sget-object v3, Lg/dwm;->u:Lg/dwm;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->r:Lg/tw;

    const-string v2, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    sget-object v3, Lg/acq;->ac:Lg/acq;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->aj:Lg/tw;

    const-string v2, "measurement.sdk.collection.retrieve_deeplink_from_bow_2"

    sget-object v3, Lg/bmr;->h:Lg/bmr;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->af:Lg/tw;

    const-string v2, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    sget-object v3, Lg/ao;->v:Lg/ao;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bw:Lg/tw;

    const-string v2, "measurement.lifecycle.app_in_background_parameter"

    sget-object v3, Lg/dwm;->h:Lg/dwm;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bo:Lg/tw;

    const-string v2, "measurement.integration.disable_firebase_instance_id"

    sget-object v3, Lg/acq;->bl:Lg/acq;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->ar:Lg/tw;

    const-string v2, "measurement.collection.service.update_with_analytics_fix"

    sget-object v3, Lg/bfy;->y:Lg/bfy;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->ac:Lg/tw;

    const-string v2, "measurement.client.firebase_feature_rollout.v1.enable"

    sget-object v3, Lg/ao;->e:Lg/ao;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->q:Lg/tw;

    const-string v2, "measurement.client.sessions.check_on_reset_and_enable2"

    sget-object v3, Lg/dwm;->c:Lg/dwm;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->j:Lg/tw;

    const-string v2, "measurement.collection.synthetic_data_mitigation"

    sget-object v3, Lg/acq;->bo:Lg/acq;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    const v2, 0x31b50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lg/bfy;->s:Lg/bfy;

    const-string v4, "measurement.service.storage_consent_support_version"

    invoke-static {v4, v2, v2, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bg:Lg/tw;

    const-string v2, "measurement.client.click_identifier_control.dev"

    sget-object v3, Lg/ao;->u:Lg/ao;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    const-string v2, "measurement.service.click_identifier_control"

    sget-object v3, Lg/dwm;->w:Lg/dwm;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    const-string v2, "measurement.service.store_null_safelist"

    sget-object v3, Lg/acq;->as:Lg/acq;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bl:Lg/tw;

    const-string v2, "measurement.service.store_safelist"

    sget-object v3, Lg/bfy;->p:Lg/bfy;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->w:Lg/tw;

    const-string v2, "measurement.redaction.no_aiid_in_config_request"

    sget-object v3, Lg/bmr;->q:Lg/bmr;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->f:Lg/tw;

    const-string v2, "measurement.redaction.config_redacted_fields"

    sget-object v3, Lg/ao;->ab:Lg/ao;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->c:Lg/tw;

    const-string v2, "measurement.redaction.upload_redacted_fields"

    sget-object v3, Lg/acq;->bm:Lg/acq;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bk:Lg/tw;

    const-string v2, "measurement.redaction.upload_subdomain_override"

    sget-object v3, Lg/bfy;->f:Lg/bfy;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->am:Lg/tw;

    const-string v2, "measurement.redaction.device_info"

    sget-object v3, Lg/bmr;->n:Lg/bmr;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->bm:Lg/tw;

    const-string v2, "measurement.redaction.user_id"

    sget-object v3, Lg/dwm;->n:Lg/dwm;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->i:Lg/tw;

    const-string v2, "measurement.redaction.google_signals"

    sget-object v3, Lg/acq;->ah:Lg/acq;

    invoke-static {v2, v0, v0, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->av:Lg/tw;

    const-string v2, "measurement.collection.enable_session_stitching_token.service"

    sget-object v3, Lg/bfy;->o:Lg/bfy;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v2

    sput-object v2, Lg/gad;->o:Lg/tw;

    const-string v2, "measurement.collection.enable_session_stitching_token.client.dev"

    sget-object v3, Lg/bmr;->d:Lg/bmr;

    invoke-static {v2, v1, v1, v3}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->az:Lg/tw;

    const-string v1, "measurement.redaction.app_instance_id"

    sget-object v2, Lg/ao;->j:Lg/ao;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bn:Lg/tw;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    sget-object v2, Lg/dwm;->d:Lg/dwm;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->a:Lg/tw;

    const-string v1, "measurement.redaction.enhanced_uid"

    sget-object v2, Lg/acq;->ba:Lg/acq;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bh:Lg/tw;

    const-string v1, "measurement.redaction.e_tag"

    sget-object v2, Lg/bmr;->m:Lg/bmr;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->ah:Lg/tw;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    sget-object v2, Lg/ao;->h:Lg/ao;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bt:Lg/tw;

    const-string v1, "measurement.redaction.retain_major_os_version"

    sget-object v2, Lg/acq;->ag:Lg/acq;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->bx:Lg/tw;

    const-string v1, "measurement.redaction.scion_payload_generator"

    sget-object v2, Lg/bfy;->x:Lg/bfy;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    const-string v1, "measurement.audience.dynamic_filters.oob_fix"

    sget-object v2, Lg/bmr;->g:Lg/bmr;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v1

    sput-object v1, Lg/gad;->aw:Lg/tw;

    const-string v1, "measurement.service.clear_global_params_on_uninstall"

    sget-object v2, Lg/ao;->r:Lg/ao;

    invoke-static {v1, v0, v0, v2}, Lg/gad;->by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;

    move-result-object v0

    sput-object v0, Lg/gad;->bv:Lg/tw;

    return-void
.end method

.method public static by(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)Lg/tw;
    .locals 1

    new-instance v0, Lg/tw;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/tw;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lg/aii;)V

    sget-object p0, Lg/gad;->z:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static bz(Landroid/content/Context;)Ljava/util/Map;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lg/foq;->b:Lg/foq;

    invoke-static {p0, v0, v1}, Lg/fod;->j(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lg/fod;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg/fod;->l()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

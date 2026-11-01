.class public final Lg/biy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bbz;


# static fields
.field public static final a:Lg/duh;

.field public static final aa:Lg/duh;

.field public static final ab:Lg/duh;

.field public static final ac:Lg/duh;

.field public static final ad:Lg/duh;

.field public static final ae:Lg/duh;

.field public static final af:Lg/duh;

.field public static final ag:Lg/duh;

.field public static final ah:Lg/duh;

.field public static final ai:Lg/duh;

.field public static final aj:Lg/duh;

.field public static final b:Lg/duh;

.field public static final c:Lg/duh;

.field public static final d:Lg/duh;

.field public static final e:Lg/duh;

.field public static final f:Lg/duh;

.field public static final g:Lg/duh;

.field public static final h:Lg/duh;

.field public static final i:Lg/duh;

.field public static final j:Lg/duh;

.field public static final k:Lg/duh;

.field public static final l:Lg/duh;

.field public static final m:Lg/duh;

.field public static final n:Lg/duh;

.field public static final o:Lg/duh;

.field public static final p:Lg/duh;

.field public static final q:Lg/duh;

.field public static final r:Lg/duh;

.field public static final s:Lg/duh;

.field public static final t:Lg/duh;

.field public static final u:Lg/duh;

.field public static final v:Lg/duh;

.field public static final w:Lg/duh;

.field public static final x:Lg/duh;

.field public static final y:Lg/duh;

.field public static final z:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-wide/16 v2, 0x2710

    const-string v0, "measurement.ad_id_cache_time"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->m:Lg/duh;

    const-wide/16 v4, 0x64

    const-string v0, "measurement.max_bundles_per_iteration"

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->y:Lg/duh;

    const-wide/32 v6, 0x5265c00

    const-string v0, "measurement.config.cache_time"

    invoke-virtual {v1, v6, v7, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ae:Lg/duh;

    const-string v0, "measurement.log_tag"

    const-string v8, "FA"

    invoke-virtual {v1, v0, v8}, Lg/gez;->o(Ljava/lang/String;Ljava/lang/String;)Lg/duh;

    new-instance v0, Lg/duh;

    const/4 v8, 0x3

    const-string v9, "measurement.config.url_authority"

    const-string v10, "app-measurement.com"

    invoke-direct {v0, v1, v9, v10, v8}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lg/biy;->i:Lg/duh;

    new-instance v0, Lg/duh;

    const-string v9, "measurement.config.url_scheme"

    const-string v10, "https"

    invoke-direct {v0, v1, v9, v10, v8}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lg/biy;->l:Lg/duh;

    const-wide/16 v8, 0x3e8

    const-string v0, "measurement.upload.debug_upload_interval"

    invoke-virtual {v1, v8, v9, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->s:Lg/duh;

    const-string v0, "measurement.lifetimevalue.max_currency_tracked"

    const-wide/16 v10, 0x4

    invoke-virtual {v1, v10, v11, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ai:Lg/duh;

    const-wide/32 v10, 0x186a0

    const-string v0, "measurement.store.max_stored_events_per_app"

    invoke-virtual {v1, v10, v11, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->b:Lg/duh;

    const-string v0, "measurement.experiment.max_ids"

    const-wide/16 v12, 0x32

    invoke-virtual {v1, v12, v13, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->x:Lg/duh;

    const-string v0, "measurement.audience.filter_result_max_count"

    const-wide/16 v12, 0xc8

    invoke-virtual {v1, v12, v13, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->z:Lg/duh;

    const-string v0, "measurement.alarm_manager.minimum_interval"

    const-wide/32 v12, 0xea60

    invoke-virtual {v1, v12, v13, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->c:Lg/duh;

    const-wide/16 v12, 0x1f4

    const-string v0, "measurement.upload.minimum_delay"

    invoke-virtual {v1, v12, v13, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->k:Lg/duh;

    const-string v0, "measurement.monitoring.sample_period_millis"

    invoke-virtual {v1, v6, v7, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->w:Lg/duh;

    const-string v0, "measurement.upload.realtime_upload_interval"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->h:Lg/duh;

    const-wide/32 v2, 0x240c8400

    const-string v0, "measurement.upload.refresh_blacklisted_config_interval"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->e:Lg/duh;

    const-wide/32 v14, 0x36ee80

    const-string v0, "measurement.config.cache_time.service"

    invoke-virtual {v1, v14, v15, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    const-string v0, "measurement.service_client.idle_disconnect_millis"

    const-wide/16 v10, 0x1388

    invoke-virtual {v1, v10, v11, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->v:Lg/duh;

    const-string v0, "measurement.log_tag.service"

    const-string v10, "FA-SVC"

    invoke-virtual {v1, v0, v10}, Lg/gez;->o(Ljava/lang/String;Ljava/lang/String;)Lg/duh;

    const-string v0, "measurement.upload.stale_data_deletion_interval"

    invoke-virtual {v1, v6, v7, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->aa:Lg/duh;

    const-string v0, "measurement.sdk.attribution.cache.ttl"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->aj:Lg/duh;

    const-string v0, "measurement.redaction.app_instance_id.ttl"

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->u:Lg/duh;

    const-string v0, "measurement.upload.backoff_period"

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ac:Lg/duh;

    const-string v0, "measurement.upload.initial_upload_delay_time"

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->n:Lg/duh;

    const-string v0, "measurement.upload.interval"

    invoke-virtual {v1, v14, v15, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->q:Lg/duh;

    const-wide/32 v2, 0x10000

    const-string v0, "measurement.upload.max_bundle_size"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->r:Lg/duh;

    const-string v0, "measurement.upload.max_bundles"

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ah:Lg/duh;

    const-string v0, "measurement.upload.max_conversions_per_day"

    invoke-virtual {v1, v12, v13, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->f:Lg/duh;

    const-string v0, "measurement.upload.max_error_events_per_day"

    invoke-virtual {v1, v8, v9, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->a:Lg/duh;

    const-string v0, "measurement.upload.max_events_per_bundle"

    invoke-virtual {v1, v8, v9, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ab:Lg/duh;

    const-string v0, "measurement.upload.max_events_per_day"

    const-wide/32 v4, 0x186a0

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->j:Lg/duh;

    const-string v0, "measurement.upload.max_public_events_per_day"

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->p:Lg/duh;

    const-string v0, "measurement.upload.max_queue_time"

    const-wide v4, 0x90321000L

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->o:Lg/duh;

    const-string v0, "measurement.upload.max_realtime_events_per_day"

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ag:Lg/duh;

    const-string v0, "measurement.upload.max_batch_size"

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->ad:Lg/duh;

    const-string v0, "measurement.upload.retry_count"

    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->g:Lg/duh;

    const-string v0, "measurement.upload.retry_time"

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->d:Lg/duh;

    new-instance v0, Lg/duh;

    const/4 v2, 0x3

    const-string v3, "measurement.upload.url"

    const-string v4, "https://app-measurement.com/a"

    invoke-direct {v0, v1, v3, v4, v2}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lg/biy;->af:Lg/duh;

    const-string v0, "measurement.upload.window_interval"

    invoke-virtual {v1, v14, v15, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/biy;->t:Lg/duh;

    return-void
.end method

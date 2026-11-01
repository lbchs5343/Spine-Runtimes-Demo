.class public final Lcom/google/android/gms/internal/ads/zzaxa;
.super Lcom/google/android/gms/internal/ads/zzaxt;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Landroid/view/View;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasf;IILjava/util/Map;Landroid/view/View;Landroid/content/Context;)V
    .locals 7

    const-string v3, "vovSRMWoC6DyReNhMsLU/AHhR3bWlWI4SOQQixDW2Zg="

    const/16 v6, 0x55

    const-string v2, "SSi9+bc4LjSDCw5XbM9a3o0KjM00NEx8AzpqWTmGrN6ZCy4DwzQ9YQ8F3uOviR+R"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>(Lcom/google/android/gms/internal/ads/zzawf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasf;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaxa;->a:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzaxa;->b:Landroid/view/View;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaxa;->a:Ljava/util/Map;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1
    new-array v6, v7, [J

    const/4 v8, 0x0

    aput-wide v2, v6, v8

    aput-wide v4, v6, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->d:Landroid/content/Context;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxt;->k:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawf;->zzb()Landroid/content/Context;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxt;->j:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaxa;->b:Landroid/view/View;

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v8

    aput-object v2, v9, v0

    aput-object v4, v9, v7

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v3, v2, v8

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaxa;->a:Ljava/util/Map;

    aget-wide v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v0, v2, v7

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaxa;->a:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-wide v8, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    monitor-enter v2

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzasf;->zzv(J)Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxt;->i:Lcom/google/android/gms/internal/ads/zzasf;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzu(J)Lcom/google/android/gms/internal/ads/zzasf;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public final Lg/bvv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzaps;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/bvv;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    sget-object v0, Lg/bvv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/bvv;->a:Lcom/google/android/gms/internal/ads/zzaps;

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzev:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lg/abe;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object p1

    :goto_0
    sput-object p1, Lg/bvv;->a:Lcom/google/android/gms/internal/ads/zzaps;

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static c(ILjava/lang/String;Ljava/util/HashMap;[B)Lg/dlc;
    .locals 12

    new-instance v4, Lg/dlc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    new-instance v5, Lg/ffr;

    const/16 v0, 0xe

    invoke-direct {v5, p1, v0, v4}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v8, Lg/dzz;

    invoke-direct {v8}, Lg/dzz;-><init>()V

    new-instance v1, Lg/ahu;

    move v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lg/ahu;-><init>(ILjava/lang/String;Lg/dlc;Lg/ffr;[BLjava/util/Map;Lg/dzz;)V

    move-object v0, v8

    invoke-static {}, Lg/dzz;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lg/ahu;->zzl()Ljava/util/Map;

    move-result-object v9

    if-nez p3, :cond_0

    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, p3

    :goto_0
    invoke-static {}, Lg/dzz;->g()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "GET"

    new-instance v6, Lg/duw;

    const/16 v11, 0xc

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lg/duw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v2, "onNetworkRequest"

    invoke-virtual {v0, v2, v6}, Lg/dzz;->h(Ljava/lang/String;Lg/fbf;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaox; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object v0, Lg/bvv;->a:Lcom/google/android/gms/internal/ads/zzaps;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaps;->zza(Lcom/google/android/gms/internal/ads/zzapp;)Lcom/google/android/gms/internal/ads/zzapp;

    return-object v4
.end method

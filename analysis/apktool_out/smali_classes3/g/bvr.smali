.class public final Lg/bvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdex;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/zzdsh;

.field public final c:Lg/bgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsh;Lg/bgq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bvr;->b:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p2, p0, Lg/bvr;->c:Lg/bgq;

    iput-object p3, p0, Lg/bvr;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zze(Lg/ggs;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/bvr;->c:Lg/bgq;

    iget-object v1, p0, Lg/bvr;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/bvr;->b:Lcom/google/android/gms/internal/ads/zzdsh;

    iget-object p1, p1, Lg/ggs;->e:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    new-instance v3, Lg/ckv;

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v3, v4, p1, v5}, Lg/ckv;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object p1, v0, Lg/bgq;->c:Ljava/util/Map;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lg/bgq;->p()V

    invoke-virtual {v0, v2}, Lg/bgq;->k(Lcom/google/android/gms/internal/ads/zzdsh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzeav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzebg;

.field public final synthetic zzb:Lg/dcy;

.field public final synthetic zzc:Lg/dcy;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbvx;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfka;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebg;Lg/dcy;Lg/dcy;Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfka;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeav;->zza:Lcom/google/android/gms/internal/ads/zzebg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzb:Lg/dcy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzc:Lg/dcy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzd:Lcom/google/android/gms/internal/ads/zzbvx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeav;->zze:Lcom/google/android/gms/internal/ads/zzfka;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeav;->zza:Lcom/google/android/gms/internal/ads/zzebg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzb:Lg/dcy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzc:Lg/dcy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeav;->zzd:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzeav;->zze:Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbvz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbvz;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/json/JSONObject;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbvz;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzebd;-><init>(Lcom/google/android/gms/internal/ads/zzbvz;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfka;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebg;->j()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebg;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

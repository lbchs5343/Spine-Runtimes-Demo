.class public final synthetic Lcom/google/android/gms/internal/ads/zzeaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lg/dcy;

.field public final synthetic zzb:Lg/dcy;


# direct methods
.method public synthetic constructor <init>(Lg/dcy;Lg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaq;->zza:Lg/dcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaq;->zzb:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaq;->zza:Lg/dcy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebf;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaq;->zzb:Lg/dcy;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzebd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzebd;->zzb:Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzebd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzebd;->zza:Lcom/google/android/gms/internal/ads/zzbvz;

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzebf;-><init>(Lcom/google/android/gms/internal/ads/zzebt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvz;)V

    return-object v1
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzcss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsy;

.field public final synthetic zzb:Lg/dcy;

.field public final synthetic zzc:Lg/dcy;

.field public final synthetic zzd:Lg/dcy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsy;Lg/dcy;Lg/dcy;Lg/dcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Lcom/google/android/gms/internal/ads/zzcsy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lg/dcy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lg/dcy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lg/dcy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lg/dcy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lg/dcy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lg/dcy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbvx;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbvz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcsy;->c:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeag;->zzc(Lcom/google/android/gms/internal/ads/zzbvx;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvz;)Lg/dcy;

    move-result-object v0

    return-object v0
.end method

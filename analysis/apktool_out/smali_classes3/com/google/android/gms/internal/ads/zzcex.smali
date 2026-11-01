.class public final synthetic Lcom/google/android/gms/internal/ads/zzcex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcez;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcex;->zza:Lcom/google/android/gms/internal/ads/zzcez;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcex;->zza:Lcom/google/android/gms/internal/ads/zzcez;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcez;->d:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcez;->e:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbk;->zzg()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcez;->e:Z

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcez;->d:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zze()V

    :cond_1
    return-void
.end method

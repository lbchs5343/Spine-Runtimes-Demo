.class public final Lg/gym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcnb;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzflr;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcnb;Lcom/google/android/gms/internal/ads/zzflr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gym;->b:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object p3, p0, Lg/gym;->c:Ljava/lang/String;

    iput-object p1, p0, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnb;->c:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcmy;-><init>(Lg/gym;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzges;->zza(Ljava/lang/Runnable;)Lg/dcy;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnb;->c:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcmz;-><init>(Lg/gym;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzges;->zza(Ljava/lang/Runnable;)Lg/dcy;

    return-void
.end method

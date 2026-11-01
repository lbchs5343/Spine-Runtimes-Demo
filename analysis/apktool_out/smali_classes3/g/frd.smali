.class public final Lg/frd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzchq;

.field public final b:Lcom/google/android/gms/internal/ads/zzcid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchq;Lcom/google/android/gms/internal/ads/zzcid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/frd;->a:Lcom/google/android/gms/internal/ads/zzchq;

    iput-object p2, p0, Lg/frd;->b:Lcom/google/android/gms/internal/ads/zzcid;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/frd;->a:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/frd;->b:Lcom/google/android/gms/internal/ads/zzcid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/akx;

    new-instance v2, Lg/edu;

    invoke-direct {v2, v0, v1}, Lg/edu;-><init>(Landroid/content/Context;Lg/akx;)V

    return-object v2
.end method

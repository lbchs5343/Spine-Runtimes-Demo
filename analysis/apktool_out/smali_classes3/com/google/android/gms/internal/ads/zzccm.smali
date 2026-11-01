.class public final synthetic Lcom/google/android/gms/internal/ads/zzccm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzccx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccm;->zza:Lcom/google/android/gms/internal/ads/zzccx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->zza:Lcom/google/android/gms/internal/ads/zzccx;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbl;->w:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccj;->zza()F

    move-result v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzccx;->a:Lcom/google/android/gms/internal/ads/zzcbw;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbw;->zzT(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void

    :cond_0
    const-string v0, "Trying to set volume before player is initialized."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    return-void
.end method

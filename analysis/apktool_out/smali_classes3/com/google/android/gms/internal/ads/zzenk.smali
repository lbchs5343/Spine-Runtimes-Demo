.class public final synthetic Lcom/google/android/gms/internal/ads/zzenk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzenp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenk;->zza:Lcom/google/android/gms/internal/ads/zzenp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenk;->zza:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenf;->zza()Lcom/google/android/gms/internal/ads/zzcwp;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwp;->zzdB(Lg/abz;)V

    return-void
.end method

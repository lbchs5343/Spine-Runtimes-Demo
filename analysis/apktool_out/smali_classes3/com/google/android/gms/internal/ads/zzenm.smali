.class public final synthetic Lcom/google/android/gms/internal/ads/zzenm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/aqo;


# direct methods
.method public synthetic constructor <init>(Lg/aqo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lg/aqo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lg/aqo;

    iget-object v0, v0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenf;->zzb()Lcom/google/android/gms/internal/ads/zzcya;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcya;->zzs()V

    return-void
.end method

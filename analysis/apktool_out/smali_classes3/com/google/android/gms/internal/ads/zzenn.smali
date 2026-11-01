.class public final synthetic Lcom/google/android/gms/internal/ads/zzenn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/aqo;

.field public final synthetic zzb:Lg/abz;


# direct methods
.method public synthetic constructor <init>(Lg/aqo;Lg/abz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenn;->zza:Lg/aqo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenn;->zzb:Lg/abz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenn;->zza:Lg/aqo;

    iget-object v0, v0, Lg/aqo;->c:Lcom/google/android/gms/internal/ads/zzenp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzenp;->a:Lcom/google/android/gms/internal/ads/zzenf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenf;->zza()Lcom/google/android/gms/internal/ads/zzcwp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenn;->zzb:Lg/abz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwp;->zzdB(Lg/abz;)V

    return-void
.end method

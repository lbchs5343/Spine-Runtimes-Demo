.class public final synthetic Lcom/google/android/gms/internal/ads/zzgdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/q;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfzj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/q;Lcom/google/android/gms/internal/ads/zzfzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/android/gms/internal/ads/q;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzb:Lcom/google/android/gms/internal/ads/zzfzj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/android/gms/internal/ads/q;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzb:Lcom/google/android/gms/internal/ads/zzfzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q;->e(Lcom/google/android/gms/internal/ads/zzfzj;)V

    return-void
.end method

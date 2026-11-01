.class public final Lcom/google/android/gms/internal/ads/zzgeg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/internal/ads/zzfzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgeg;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeg;->b:Lcom/google/android/gms/internal/ads/zzfzo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/dcy;
    .locals 4

    new-instance v0, Lg/zy;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgeg;->a:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgeg;->b:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/q;-><init>(Lcom/google/android/gms/internal/ads/zzfzj;ZZ)V

    new-instance v1, Lg/gaj;

    invoke-direct {v1, v0, p1, p2}, Lg/gaj;-><init>(Lg/zy;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object v1, v0, Lg/zy;->aj:Lg/gaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q;->l()V

    return-object v0
.end method

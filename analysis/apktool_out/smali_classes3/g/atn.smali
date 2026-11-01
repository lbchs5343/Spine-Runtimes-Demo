.class public final Lg/atn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/google/android/gms/internal/ads/zzdxq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdxq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/atn;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/atn;->b:Lcom/google/android/gms/internal/ads/zzdxq;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lg/dcy;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, p0, Lg/atn;->b:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->zzc(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;

    move-result-object v0

    new-instance v1, Lg/yj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lg/yj;-><init>(Lg/exk;I)V

    iget-object p1, p0, Lg/atn;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzeqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeqp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqn;->zza:Lcom/google/android/gms/internal/ads/zzeqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqn;->zza:Lcom/google/android/gms/internal/ads/zzeqp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeqp;->b:Lcom/google/android/gms/internal/ads/zzevz;

    new-instance v2, Lg/gvu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzevz;->zzb()Lg/dcy;

    move-result-object v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzeqp;->d:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeqp;->f:Lg/cvb;

    invoke-direct {v2, v1, v3, v4, v5}, Lg/gvu;-><init>(Lg/dcy;JLg/cvb;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeqp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/PriorityQueue;

.field public b:I

.field public final c:Lcom/google/android/gms/internal/ads/zzfr;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->c:Lcom/google/android/gms/internal/ads/zzfr;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->a:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/azk;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-wide v1, v0, Lg/azk;->c:J

    iget-object v3, v0, Lg/azk;->b:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzft;->c:Lcom/google/android/gms/internal/ads/zzfr;

    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfr;->zza(JLcom/google/android/gms/internal/ads/zzed;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzft;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    return v0
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzed;)V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzft;->a:Ljava/util/PriorityQueue;

    if-eq v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/azk;

    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-wide v3, v0, Lg/azk;->c:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lg/azk;

    invoke-direct {v0}, Lg/azk;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/azk;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzft;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    iget-object v5, v0, Lg/azk;->b:Lcom/google/android/gms/internal/ads/zzed;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    cmp-long v9, p1, v6

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-wide p1, v0, Lg/azk;->c:J

    iput-wide v3, v0, Lg/azk;->a:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result p2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p3

    invoke-static {p1, p2, v3, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzft;->f(I)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->c:Lcom/google/android/gms/internal/ads/zzfr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfr;->zza(JLcom/google/android/gms/internal/ads/zzed;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzft;->f(I)V

    return-void
.end method

.method public final zzd(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzft;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzft;->f(I)V

    return-void
.end method

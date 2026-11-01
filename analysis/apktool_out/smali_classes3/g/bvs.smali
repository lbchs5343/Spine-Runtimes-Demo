.class public final Lg/bvs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/pa;

.field public final b:Ljava/util/LinkedList;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/bvs;->b:Ljava/util/LinkedList;

    iput p1, p0, Lg/bvs;->c:I

    iput p2, p0, Lg/bvs;->d:I

    new-instance p1, Lg/pa;

    invoke-direct {p1}, Lg/pa;-><init>()V

    iput-object p1, p0, Lg/bvs;->a:Lg/pa;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lg/bvs;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfhl;

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzfhl;->zzd:J

    sub-long/2addr v2, v4

    iget v1, p0, Lg/bvs;->d:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lg/bvs;->a:Lg/pa;

    iget v2, v1, Lg/pa;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lg/pa;->d:I

    iget-object v1, v1, Lg/pa;->e:Lcom/google/android/gms/internal/ads/zzfhz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzfhz;->zzb:I

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

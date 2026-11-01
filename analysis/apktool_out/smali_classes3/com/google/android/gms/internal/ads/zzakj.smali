.class public final Lcom/google/android/gms/internal/ads/zzakj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Lcom/google/android/gms/internal/ads/zzacu;

.field public final c:Lcom/google/android/gms/internal/ads/zzakg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->b:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakj;->c:Lcom/google/android/gms/internal/ads/zzakg;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final zzD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->b:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->b:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    return-void
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzadx;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->b:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakj;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dbu;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lg/dbu;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakj;->c:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v2, v0, v1}, Lg/dbu;-><init>(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzakg;)V

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

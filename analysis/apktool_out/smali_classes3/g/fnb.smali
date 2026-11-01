.class public final Lg/fnb;
.super Lcom/google/android/gms/internal/ads/zzgbv;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzfzo;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzb(IILjava/lang/String;)I

    iput v0, p0, Lg/fnb;->b:I

    iput p1, p0, Lg/fnb;->c:I

    iput-object p2, p0, Lg/fnb;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    return-void
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/fnb;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/fnb;->c:I

    iget v1, p0, Lg/fnb;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lg/fnb;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lg/fnb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/fnb;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/fnb;->c:I

    invoke-virtual {p0, v0}, Lg/fnb;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lg/fnb;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/fnb;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/fnb;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/fnb;->c:I

    invoke-virtual {p0, v0}, Lg/fnb;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lg/fnb;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

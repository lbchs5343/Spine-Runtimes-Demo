.class public final Lg/aqw;
.super Lcom/google/android/gms/internal/ads/zzhn;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final l:[Ljava/lang/Object;

.field public final m:I

.field public final n:[I

.field public final o:[I

.field public final p:Ljava/util/HashMap;

.field public final q:I

.field public final r:[Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwj;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/elv;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4}, Lg/elv;->zza()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/elv;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Lg/elv;->zzb()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lg/aqw;-><init>([Lcom/google/android/gms/internal/ads/zzbv;[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwj;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzbv;[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwj;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(ZLcom/google/android/gms/internal/ads/zzwj;)V

    iput-object p1, p0, Lg/aqw;->r:[Lcom/google/android/gms/internal/ads/zzbv;

    array-length p3, p1

    new-array v1, p3, [I

    iput-object v1, p0, Lg/aqw;->n:[I

    new-array p3, p3, [I

    iput-object p3, p0, Lg/aqw;->o:[I

    iput-object p2, p0, Lg/aqw;->l:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lg/aqw;->p:Ljava/util/HashMap;

    const/4 p3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lg/aqw;->r:[Lcom/google/android/gms/internal/ads/zzbv;

    aput-object v3, v4, v2

    iget-object v4, p0, Lg/aqw;->o:[I

    aput p3, v4, v2

    iget-object v4, p0, Lg/aqw;->n:[I

    aput v1, v4, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzc()I

    move-result v3

    add-int/2addr p3, v3

    iget-object v3, p0, Lg/aqw;->r:[Lcom/google/android/gms/internal/ads/zzbv;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzb()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lg/aqw;->p:Ljava/util/HashMap;

    aget-object v4, p2, v2

    add-int/lit8 v5, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    iput p3, p0, Lg/aqw;->q:I

    iput v1, p0, Lg/aqw;->m:I

    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lg/aqw;->n:[I

    aget p1, v0, p1

    return p1
.end method

.method public final e(I)I
    .locals 1

    iget-object v0, p0, Lg/aqw;->o:[I

    aget p1, v0, p1

    return p1
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lg/aqw;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final g(I)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 1

    iget-object v0, p0, Lg/aqw;->r:[Lcom/google/android/gms/internal/ads/zzbv;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lg/aqw;->n:[I

    invoke-static {v1, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzc([IIZZ)I

    move-result p1

    return p1
.end method

.method public final i(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lg/aqw;->o:[I

    invoke-static {v1, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzc([IIZZ)I

    move-result p1

    return p1
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/aqw;->l:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lg/aqw;->m:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lg/aqw;->q:I

    return v0
.end method

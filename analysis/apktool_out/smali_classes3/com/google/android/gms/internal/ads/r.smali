.class public final Lcom/google/android/gms/internal/ads/r;
.super Lcom/google/android/gms/internal/ads/zzfzt;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:Lcom/google/android/gms/internal/ads/r;


# instance fields
.field public final transient c:I

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:[Ljava/lang/Object;

.field public final transient l:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    sput-object v5, Lcom/google/android/gms/internal/ads/r;->a:[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/r;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/r;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/r;->b:Lcom/google/android/gms/internal/ads/r;

    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/r;->i:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/r;->j:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/r;->k:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/r;->l:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/r;->c:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r;->k:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lg/gs;->ak(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/r;->l:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->i:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/r;->c:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final f()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->i:[Ljava/lang/Object;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r;->c:I

    return v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r;->j:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzt;->zzd()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzu(I)Lcom/google/android/gms/internal/ads/zzgbv;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/zzfzo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->i:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/r;->c:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfzo;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r;->c:I

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgbu;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzt;->zzd()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzu(I)Lcom/google/android/gms/internal/ads/zzgbv;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzzi;

.field public static final b:Lcom/google/android/gms/internal/ads/zzzh;


# instance fields
.field public c:I

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field public f:I

.field public final g:[Lg/avq;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzl;->b:Lcom/google/android/gms/internal/ads/zzzh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzl;->a:Lcom/google/android/gms/internal/ads/zzzi;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    new-array p1, p1, [Lg/avq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->g:[Lg/avq;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->e:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    return-void
.end method


# virtual methods
.method public final zza(F)F
    .locals 6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzzl;->a:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    int-to-float p1, p1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/avq;

    iget v5, v4, Lg/avq;->b:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_1

    iget p1, v4, Lg/avq;->c:F

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/avq;

    iget p1, p1, Lg/avq;->c:F

    return p1
.end method

.method public final zzb(IF)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->e:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzzl;->b:Lcom/google/android/gms/internal/ads/zzzh;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->f:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->g:[Lg/avq;

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->f:I

    aget-object v0, v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lg/avq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzzl;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzzl;->c:I

    iput v3, v0, Lg/avq;->a:I

    iput p1, v0, Lg/avq;->b:I

    iput p2, v0, Lg/avq;->c:F

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    :cond_2
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    const/16 p2, 0x7d0

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x7d0

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/avq;

    iget v3, v0, Lg/avq;->b:I

    if-gt v3, p1, :cond_3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->f:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->f:I

    aput-object v0, v2, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p1

    iput v3, v0, Lg/avq;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->d:I

    return-void
.end method

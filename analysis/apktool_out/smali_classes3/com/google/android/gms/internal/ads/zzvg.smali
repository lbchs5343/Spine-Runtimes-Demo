.class public final Lcom/google/android/gms/internal/ads/zzvg;
.super Lcom/google/android/gms/internal/ads/zztz;
.source "SourceFile"


# static fields
.field public static final t:Lcom/google/android/gms/internal/ads/zzaw;


# instance fields
.field public final u:[Lcom/google/android/gms/internal/ads/zzut;

.field public v:[[J

.field public w:I

.field public final x:[Lcom/google/android/gms/internal/ads/zzbv;

.field public y:Lcom/google/android/gms/internal/ads/zzvf;

.field public final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzc()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvg;->t:Lcom/google/android/gms/internal/ads/zzaw;

    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/gms/internal/ads/zzuc;[Lcom/google/android/gms/internal/ads/zzut;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztz;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->z:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->w:I

    array-length p1, p4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->x:[Lcom/google/android/gms/internal/ads/zzbv;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->v:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgau;->zzb(I)Lcom/google/android/gms/internal/ads/zzgas;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgas;->zzb(I)Lcom/google/android/gms/internal/ads/zzgaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgaq;->zza()Lcom/google/android/gms/internal/ads/zzfzz;

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zztz;->k(Lcom/google/android/gms/internal/ads/zzhd;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zztz;->q(Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzut;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzut;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->y:Lcom/google/android/gms/internal/ads/zzvf;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->w:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbv;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->w:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbv;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->w:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvf;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzvf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->y:Lcom/google/android/gms/internal/ads/zzvf;

    return-void

    :cond_2
    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->v:[[J

    array-length v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvg;->x:[Lcom/google/android/gms/internal/ads/zzbv;

    if-nez v1, :cond_3

    array-length v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v0, v4, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->v:[[J

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v3, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v3, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zztq;->h(Lcom/google/android/gms/internal/ads/zzbv;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final bridge synthetic r(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzur;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 4

    check-cast p1, Lg/dol;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p1, Lg/dol;->f:[Lcom/google/android/gms/internal/ads/zzup;

    aget-object v2, v2, v0

    instance-of v3, v2, Lg/gva;

    if-eqz v3, :cond_0

    check-cast v2, Lg/gva;

    iget-object v2, v2, Lg/gva;->b:Lcom/google/android/gms/internal/ads/zzup;

    :cond_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzut;->zzG(Lcom/google/android/gms/internal/ads/zzup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzys;J)Lcom/google/android/gms/internal/ads/zzup;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzup;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvg;->x:[Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzf(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzur;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvg;->v:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v4

    sub-long v9, p3, v9

    invoke-interface {v7, v6, p2, v9, v10}, Lcom/google/android/gms/internal/ads/zzut;->zzI(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzys;J)Lcom/google/android/gms/internal/ads/zzup;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dol;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->v:[[J

    aget-object p2, p2, v5

    invoke-direct {p1, p2, v2}, Lg/dol;-><init>([J[Lcom/google/android/gms/internal/ads/zzup;)V

    return-object p1
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzaw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzut;->zzJ()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvg;->t:Lcom/google/android/gms/internal/ads/zzaw;

    return-object v0
.end method

.method public final zzq()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztz;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->x:[Lcom/google/android/gms/internal/ads/zzbv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->w:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->y:Lcom/google/android/gms/internal/ads/zzvf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzaw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->u:[Lcom/google/android/gms/internal/ads/zzut;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzut;->zzt(Lcom/google/android/gms/internal/ads/zzaw;)V

    return-void
.end method

.method public final zzz()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->y:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztz;->zzz()V

    return-void

    :cond_0
    throw v0
.end method

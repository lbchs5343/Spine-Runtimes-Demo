.class public final Lg/bdq;
.super Lg/cbw;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzxp;

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;IZLcom/google/android/gms/internal/ads/zzxc;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lg/cbw;-><init>(ILcom/google/android/gms/internal/ads/zzbw;I)V

    iput-object p4, p0, Lg/bdq;->a:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxp;->zzL:Z

    const/16 p2, 0x18

    const/4 p3, 0x1

    if-eq p3, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    iget-object v0, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyb;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/bdq;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lg/bdq;->n:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzn:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const v3, 0x7fffffff

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzn:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzyb;->i(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_2
    iput v1, p0, Lg/bdq;->i:I

    iput v2, p0, Lg/bdq;->g:I

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    if-eqz v1, :cond_3

    if-nez v1, :cond_3

    const v1, 0x7fffffff

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    :goto_3
    iput v1, p0, Lg/bdq;->h:I

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    if-eqz v2, :cond_4

    and-int/2addr v2, p3

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lg/bdq;->q:Z

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    and-int/2addr v2, p3

    if-eq p3, v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, p0, Lg/bdq;->b:Z

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    iput v2, p0, Lg/bdq;->p:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    iput v2, p0, Lg/bdq;->m:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    iput v2, p0, Lg/bdq;->k:I

    invoke-interface {p7, v1}, Lcom/google/android/gms/internal/ads/zzfwr;->zza(Ljava/lang/Object;)Z

    move-result p7

    iput-boolean p7, p0, Lg/bdq;->r:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v2, -0x1

    if-lt v1, p2, :cond_7

    invoke-static {p7}, Lg/o;->aa(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p2

    invoke-static {p2}, Lg/o;->u(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object p2

    const-string p7, ","

    invoke-virtual {p2, p7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_7
    new-array p2, p3, [Ljava/lang/String;

    iget-object p7, p7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p2, v0

    :goto_6
    const/4 p7, 0x0

    :goto_7
    array-length v1, p2

    if-ge p7, v1, :cond_8

    aget-object v1, p2, p7

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_7

    :cond_8
    const/4 p7, 0x0

    :goto_8
    array-length v1, p2

    if-ge p7, v1, :cond_a

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    aget-object v4, p2, p7

    invoke-static {v1, v4, v0}, Lcom/google/android/gms/internal/ads/zzyb;->i(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 p7, p7, 0x1

    goto :goto_8

    :cond_a
    const p7, 0x7fffffff

    const/4 v1, 0x0

    :goto_9
    iput p7, p0, Lg/bdq;->o:I

    iput v1, p0, Lg/bdq;->f:I

    const/4 p2, 0x0

    :goto_a
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzr:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p2, p7, :cond_c

    iget-object p7, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-eqz p7, :cond_b

    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzcb;->zzr:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_b

    move v3, p2

    goto :goto_b

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    iput v3, p0, Lg/bdq;->c:I

    and-int/lit16 p2, p5, 0x180

    const/16 p4, 0x80

    if-ne p2, p4, :cond_d

    const/4 p2, 0x1

    goto :goto_c

    :cond_d
    const/4 p2, 0x0

    :goto_c
    iput-boolean p2, p0, Lg/bdq;->j:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p4, 0x40

    if-ne p2, p4, :cond_e

    const/4 p2, 0x1

    goto :goto_d

    :cond_e
    const/4 p2, 0x0

    :goto_d
    iput-boolean p2, p0, Lg/bdq;->e:Z

    iget-object p2, p0, Lg/bdq;->a:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzxp;->zzN:Z

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p4

    if-nez p4, :cond_f

    :goto_e
    const/4 p3, 0x0

    goto :goto_f

    :cond_f
    iget-boolean p4, p0, Lg/bdq;->r:Z

    if-nez p4, :cond_10

    iget-boolean p7, p2, Lcom/google/android/gms/internal/ads/zzxp;->zzG:Z

    if-nez p7, :cond_10

    goto :goto_e

    :cond_10
    invoke-static {p5, v0}, Lcom/google/android/gms/internal/ads/zzlo;->zza(IZ)Z

    move-result p7

    if-eqz p7, :cond_12

    if-eqz p4, :cond_12

    iget-object p4, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    if-eq p4, v2, :cond_12

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzxp;->zzP:Z

    if-nez p2, :cond_11

    if-nez p6, :cond_12

    :cond_11
    and-int/2addr p1, p5

    if-eqz p1, :cond_12

    const/4 p3, 0x2

    :cond_12
    :goto_f
    iput p3, p0, Lg/bdq;->l:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/bdq;

    invoke-virtual {p0, p1}, Lg/bdq;->u(Lg/bdq;)I

    move-result p1

    return p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lg/bdq;->l:I

    return v0
.end method

.method public final bridge synthetic t(Lg/cbw;)Z
    .locals 5

    check-cast p1, Lg/bdq;

    iget-object v0, p1, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, p0, Lg/bdq;->a:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxp;->zzJ:Z

    iget-object v1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    if-eq v1, v3, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lg/bdq;->j:Z

    iget-boolean v1, p1, Lg/bdq;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lg/bdq;->e:Z

    iget-boolean p1, p1, Lg/bdq;->e:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final u(Lg/bdq;)I
    .locals 6

    iget-boolean v0, p0, Lg/bdq;->n:Z

    iget-boolean v1, p0, Lg/bdq;->r:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzyb;->a:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzd;->zzj()Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v3

    iget-boolean v4, p1, Lg/bdq;->n:Z

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v3, p0, Lg/bdq;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lg/bdq;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v3, p0, Lg/bdq;->g:I

    iget v4, p1, Lg/bdq;->g:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v3, p0, Lg/bdq;->h:I

    iget v4, p1, Lg/bdq;->h:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v3, p0, Lg/bdq;->b:Z

    iget-boolean v4, p1, Lg/bdq;->b:Z

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v3, p0, Lg/bdq;->q:Z

    iget-boolean v4, p1, Lg/bdq;->q:Z

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v3, p0, Lg/bdq;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lg/bdq;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v3, p0, Lg/bdq;->f:I

    iget v4, p1, Lg/bdq;->f:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v3, p1, Lg/bdq;->r:Z

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p0, Lg/bdq;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lg/bdq;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/android/gms/internal/ads/zzgaz;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-object v1, p0, Lg/bdq;->a:Lcom/google/android/gms/internal/ads/zzxp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcb;->zzy:Z

    iget-boolean v1, p0, Lg/bdq;->j:Z

    iget-boolean v3, p1, Lg/bdq;->j:Z

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-boolean v1, p0, Lg/bdq;->e:Z

    iget-boolean v3, p1, Lg/bdq;->e:Z

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfzd;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p0, Lg/bdq;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lg/bdq;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget v1, p0, Lg/bdq;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lg/bdq;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    iget-object v1, p0, Lg/bdq;->d:Ljava/lang/String;

    iget-object v3, p1, Lg/bdq;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lg/bdq;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lg/bdq;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfzd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzd;->zza()I

    move-result p1

    return p1
.end method

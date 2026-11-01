.class public final Lg/eac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/dee;

.field public b:I

.field public final c:Lcom/google/android/gms/internal/ads/zzjz;

.field public d:Ljava/util/ArrayList;

.field public final e:Lcom/google/android/gms/internal/ads/zzdm;

.field public f:Ljava/lang/Object;

.field public g:J

.field public final h:Lcom/google/android/gms/internal/ads/zzbt;

.field public i:I

.field public j:J

.field public k:Lg/dee;

.field public final l:Lcom/google/android/gms/internal/ads/zzbu;

.field public m:Lg/dee;

.field public final n:Lcom/google/android/gms/internal/ads/zzlw;

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzlw;Lcom/google/android/gms/internal/ads/zzdm;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zziq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eac;->n:Lcom/google/android/gms/internal/ads/zzlw;

    iput-object p2, p0, Lg/eac;->e:Lcom/google/android/gms/internal/ads/zzdm;

    iput-object p3, p0, Lg/eac;->c:Lcom/google/android/gms/internal/ads/zzjz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    iput-object p1, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    iput-object p1, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/eac;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static p(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzur;
    .locals 3

    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget v0, p7, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p6, v1, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzbt;->zzb()I

    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-wide v0, p2

    invoke-virtual {p7, v0, v1}, Lcom/google/android/gms/internal/ads/zzbt;->zzd(J)I

    move-result p2

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    invoke-virtual {p7, v0, v1}, Lcom/google/android/gms/internal/ads/zzbt;->zzc(J)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    :cond_0
    invoke-virtual {p7, p2}, Lcom/google/android/gms/internal/ads/zzbt;->zze(I)I

    move-result p3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method


# virtual methods
.method public final aa(Lcom/google/android/gms/internal/ads/zzbv;I)Z
    .locals 0

    iput p2, p0, Lg/eac;->i:I

    invoke-virtual {p0, p1}, Lg/eac;->ad(Lcom/google/android/gms/internal/ads/zzbv;)Z

    move-result p1

    return p1
.end method

.method public final ab(Lcom/google/android/gms/internal/ads/zzbv;Z)Z
    .locals 0

    iput-boolean p2, p0, Lg/eac;->o:Z

    invoke-virtual {p0, p1}, Lg/eac;->ad(Lcom/google/android/gms/internal/ads/zzbv;)Z

    move-result p1

    return p1
.end method

.method public final ac(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dee;

    iget-object v2, v1, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Lg/dee;->i:Lg/apg;

    iget-object p1, p1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final ad(Lcom/google/android/gms/internal/ads/zzbv;)Z
    .locals 7

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v0, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget v5, p0, Lg/eac;->i:I

    iget-boolean v6, p0, Lg/eac;->o:Z

    iget-object v3, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v4, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzi(ILcom/google/android/gms/internal/ads/zzbt;Lcom/google/android/gms/internal/ads/zzbu;IZ)I

    move-result v2

    :goto_1
    iget-object p1, v0, Lg/dee;->f:Lg/dee;

    if-eqz p1, :cond_1

    iget-object v3, v0, Lg/dee;->i:Lg/apg;

    iget-boolean v3, v3, Lg/apg;->e:Z

    if-nez v3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lg/eac;->ao(Lg/dee;)Z

    move-result p1

    iget-object v2, v0, Lg/dee;->i:Lg/apg;

    invoke-virtual {p0, v1, v2}, Lg/eac;->ag(Lcom/google/android/gms/internal/ads/zzbv;Lg/apg;)Lg/apg;

    move-result-object v1

    iput-object v1, v0, Lg/dee;->i:Lg/apg;

    if-nez p1, :cond_5

    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final ae()Z
    .locals 8

    iget-object v0, p0, Lg/eac;->m:Lg/dee;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lg/dee;->i:Lg/apg;

    iget-boolean v2, v2, Lg/apg;->a:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lg/dee;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/eac;->m:Lg/dee;

    iget-object v0, v0, Lg/dee;->i:Lg/apg;

    iget-wide v4, v0, Lg/apg;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget v0, p0, Lg/eac;->b:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public final af()V
    .locals 3

    iget-object v0, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dee;

    invoke-virtual {v2}, Lg/dee;->p()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lg/eac;->d:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final ag(Lcom/google/android/gms/internal/ads/zzbv;Lg/apg;)Lg/apg;
    .locals 13

    iget-object v1, p2, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lg/eac;->y(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result v11

    invoke-virtual {p0, p1, v1, v10}, Lg/eac;->w(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;Z)Z

    move-result v12

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result p1

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p1, :cond_1

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    if-ne p1, v2, :cond_2

    :cond_1
    move-wide v8, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    move-wide v8, v4

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzbt;->zzf(II)J

    move-result-wide v4

    :goto_2
    move-wide v6, v8

    move-wide v8, v4

    goto :goto_3

    :cond_3
    cmp-long p1, v8, v6

    if-eqz p1, :cond_4

    move-wide v6, v4

    move-wide v8, v6

    goto :goto_3

    :cond_4
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    goto :goto_4

    :cond_5
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    if-eq p1, v2, :cond_6

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    :cond_6
    :goto_4
    new-instance v0, Lg/apg;

    iget-wide v2, p2, Lg/apg;->f:J

    iget-wide v4, p2, Lg/apg;->g:J

    invoke-direct/range {v0 .. v12}, Lg/apg;-><init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V

    return-object v0
.end method

.method public final ah(Lg/apg;)Lg/dee;
    .locals 14

    iget-wide v0, p1, Lg/apg;->f:J

    iget-object v2, p0, Lg/eac;->m:Lg/dee;

    if-nez v2, :cond_0

    const-wide v2, 0xe8d4a51000L

    move-wide v7, v2

    goto :goto_0

    :cond_0
    iget-wide v3, v2, Lg/dee;->c:J

    iget-object v2, v2, Lg/dee;->i:Lg/apg;

    iget-wide v5, v2, Lg/apg;->c:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    move-wide v7, v3

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dee;

    iget-object v3, v3, Lg/dee;->i:Lg/apg;

    iget-wide v5, v3, Lg/apg;->c:J

    iget-wide v9, p1, Lg/apg;->c:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v5, v11

    if-eqz v13, :cond_1

    cmp-long v11, v5, v9

    if-nez v11, :cond_2

    :cond_1
    iget-wide v5, v3, Lg/apg;->f:J

    cmp-long v9, v5, v0

    if-nez v9, :cond_2

    iget-object v3, v3, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v5, p1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzur;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lg/eac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dee;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lg/eac;->c:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/s;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s;->h:Lcom/google/android/gms/internal/ads/zzkl;

    new-instance v5, Lg/dee;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/s;->z:Lcom/google/android/gms/internal/ads/zzyj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkl;->zzj()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v10

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/s;->at:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/s;->w:Lg/feh;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/s;->q:[Lcom/google/android/gms/internal/ads/zzlq;

    move-object v12, p1

    invoke-direct/range {v5 .. v13}, Lg/dee;-><init>([Lcom/google/android/gms/internal/ads/zzlq;JLcom/google/android/gms/internal/ads/zzyj;Lcom/google/android/gms/internal/ads/zzys;Lg/feh;Lg/apg;Lcom/google/android/gms/internal/ads/zzyk;)V

    move-object v0, v5

    goto :goto_3

    :cond_4
    move-object v12, p1

    iput-object v12, v0, Lg/dee;->i:Lg/apg;

    iput-wide v7, v0, Lg/dee;->c:J

    :goto_3
    iget-object p1, p0, Lg/eac;->m:Lg/dee;

    if-eqz p1, :cond_6

    iget-object v1, p1, Lg/dee;->f:Lg/dee;

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lg/dee;->q()V

    iput-object v0, p1, Lg/dee;->f:Lg/dee;

    goto :goto_4

    :cond_6
    iput-object v0, p0, Lg/eac;->a:Lg/dee;

    iput-object v0, p0, Lg/eac;->k:Lg/dee;

    :goto_4
    iput-object v4, p0, Lg/eac;->f:Ljava/lang/Object;

    iput-object v0, p0, Lg/eac;->m:Lg/dee;

    iget p1, p0, Lg/eac;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/eac;->b:I

    invoke-virtual {p0}, Lg/eac;->al()V

    return-object v0
.end method

.method public final ai()Lg/dee;
    .locals 1

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    return-object v0
.end method

.method public final aj(Lcom/google/android/gms/internal/ads/zziq;)V
    .locals 2

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    invoke-virtual {p0}, Lg/eac;->af()V

    return-void
.end method

.method public final ak(Lcom/google/android/gms/internal/ads/zzbv;JJ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/eac;->a:Lg/dee;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    iget-object v5, v2, Lg/dee;->i:Lg/apg;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Lg/eac;->ag(Lcom/google/android/gms/internal/ads/zzbv;Lg/apg;)Lg/apg;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p2

    invoke-virtual {v0, v1, v3, v7, v8}, Lg/eac;->am(Lcom/google/android/gms/internal/ads/zzbv;Lg/dee;J)Lg/apg;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {v0, v3}, Lg/eac;->ao(Lg/dee;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_2
    iget-wide v10, v5, Lg/apg;->f:J

    iget-wide v12, v9, Lg/apg;->f:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    iget-object v10, v5, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v11, v9, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzur;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v3, v9

    :goto_1
    iget-wide v9, v3, Lg/apg;->c:J

    iget-wide v13, v5, Lg/apg;->g:J

    iget-wide v11, v3, Lg/apg;->g:J

    cmp-long v15, v13, v11

    move-wide/from16 v17, v9

    if-nez v15, :cond_3

    const/16 v22, 0x0

    goto :goto_2

    :cond_3
    iget-object v10, v3, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v11, v3, Lg/apg;->f:J

    const/16 v22, 0x0

    iget-wide v6, v3, Lg/apg;->b:J

    iget-boolean v8, v3, Lg/apg;->e:Z

    iget-boolean v9, v3, Lg/apg;->h:Z

    iget-boolean v3, v3, Lg/apg;->a:Z

    move/from16 v20, v9

    new-instance v9, Lg/apg;

    move/from16 v21, v3

    move-wide v15, v6

    move/from16 v19, v8

    invoke-direct/range {v9 .. v21}, Lg/apg;-><init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V

    move-object v3, v9

    :goto_2
    iput-object v3, v2, Lg/dee;->i:Lg/apg;

    iget-wide v5, v5, Lg/apg;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    if-eqz v3, :cond_8

    cmp-long v3, v5, v17

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lg/dee;->v()V

    cmp-long v1, v17, v7

    if-nez v1, :cond_5

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_3

    :cond_5
    iget-wide v5, v2, Lg/dee;->c:J

    add-long v5, v17, v5

    :goto_3
    iget-object v1, v0, Lg/eac;->k:Lg/dee;

    if-ne v2, v1, :cond_7

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v1, p4, v7

    if-eqz v1, :cond_6

    cmp-long v1, p4, v5

    if-ltz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lg/eac;->ao(Lg/dee;)Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v1, :cond_a

    goto :goto_7

    :cond_8
    :goto_5
    iget-object v3, v2, Lg/dee;->f:Lg/dee;

    move-object/from16 v23, v3

    move-object v3, v2

    move-object/from16 v2, v23

    goto/16 :goto_0

    :cond_9
    const/16 v22, 0x0

    invoke-virtual {v0, v3}, Lg/eac;->ao(Lg/dee;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    return v22

    :cond_b
    :goto_7
    return v4
.end method

.method public final al()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    iget-object v1, p0, Lg/eac;->a:Lg/dee;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lg/dee;->i:Lg/apg;

    iget-object v2, v2, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v1, v1, Lg/dee;->f:Lg/dee;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/eac;->k:Lg/dee;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lg/dee;->i:Lg/apg;

    iget-object v1, v1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzks;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzks;-><init>(Lg/eac;Lcom/google/android/gms/internal/ads/zzfzl;Lcom/google/android/gms/internal/ads/zzur;)V

    iget-object v0, p0, Lg/eac;->e:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzh(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final am(Lcom/google/android/gms/internal/ads/zzbv;Lg/dee;J)Lg/apg;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v8, v9, Lg/dee;->i:Lg/apg;

    iget-wide v2, v9, Lg/dee;->c:J

    iget-wide v4, v8, Lg/apg;->c:J

    iget-wide v10, v8, Lg/apg;->g:J

    iget-object v12, v8, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    add-long/2addr v2, v4

    iget-boolean v4, v8, Lg/apg;->e:Z

    sub-long v13, v2, p3

    const/4 v7, -0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    iget-object v5, v0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    if-eqz v4, :cond_6

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v4

    move-object v6, v5

    iget v5, v0, Lg/eac;->i:I

    move-object v8, v6

    iget-boolean v6, v0, Lg/eac;->o:Z

    move-wide/from16 v17, v2

    move v2, v4

    iget-object v4, v0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    iget-object v3, v0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    move-wide/from16 v19, v10

    move-wide/from16 v10, v17

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzi(ILcom/google/android/gms/internal/ads/zzbt;Lcom/google/android/gms/internal/ads/zzbu;IZ)I

    move-result v2

    if-ne v2, v7, :cond_0

    :goto_0
    move-object v9, v0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzbt;->zzb:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v12, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iget-object v7, v0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {v1, v4, v7, v10, v11}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzbu;->zzn:I

    if-ne v7, v2, :cond_4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v8

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v3, v2

    iget-object v2, v0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    move-object v10, v3

    iget-object v3, v0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    move-object v13, v10

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbv;->zzm(Lcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v4, v9, Lg/dee;->f:Lg/dee;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lg/dee;->i:Lg/apg;

    iget-object v4, v4, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    :goto_1
    move-wide v10, v1

    move-object v2, v3

    move-wide v3, v10

    move-wide v10, v15

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Lg/eac;->ac(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    iget-wide v4, v0, Lg/eac;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v0, Lg/eac;->g:J

    :cond_3
    move-wide v5, v4

    goto :goto_1

    :cond_4
    move-object v13, v8

    move-object v2, v3

    move-wide v3, v10

    :goto_2
    iget-object v7, v0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    iget-object v8, v0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lg/eac;->p(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v2

    cmp-long v5, v10, v15

    if-eqz v5, :cond_5

    cmp-long v5, v19, v15

    if-eqz v5, :cond_5

    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v5, v13}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbt;->zzb()I

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzbt;->zzg:Lcom/google/android/gms/internal/ads/zzb;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzb;->zzd:I

    :cond_5
    move-wide v5, v3

    move-wide v3, v10

    invoke-virtual/range {v0 .. v6}, Lg/eac;->u(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJ)Lg/apg;

    move-result-object v1

    return-object v1

    :cond_6
    move-wide/from16 v19, v10

    move-wide v10, v2

    move-object v2, v5

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbt;->zza(I)I

    move-result v0

    if-ne v0, v7, :cond_7

    move-object/from16 v9, p0

    goto :goto_3

    :cond_7
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzg:Lcom/google/android/gms/internal/ads/zzb;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zza;->zza(I)I

    move-result v4

    if-gez v4, :cond_8

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-wide v5, v8, Lg/apg;->g:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lg/eac;->q(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;IIJJ)Lg/apg;

    move-result-object v1

    move-object v9, v0

    return-object v1

    :cond_8
    move-object/from16 v9, p0

    cmp-long v0, v19, v15

    if-nez v0, :cond_a

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v1, v9, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbv;->zzm(Lcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_4

    :cond_a
    move-object/from16 v0, p1

    move-wide/from16 v3, v19

    :goto_4
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzg:Lcom/google/android/gms/internal/ads/zzb;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zza;->zzg:J

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v8, Lg/apg;->g:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    move-object v1, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lg/eac;->z(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJJ)Lg/apg;

    move-result-object v1

    return-object v1

    :cond_b
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    if-eq v0, v7, :cond_c

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbt;->zzj(I)Z

    :cond_c
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbt;->zze(I)I

    move-result v4

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbt;->zza(I)I

    move-result v0

    if-eq v4, v0, :cond_d

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    iget-wide v5, v8, Lg/apg;->c:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lg/eac;->q(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;IIJJ)Lg/apg;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v1, p1

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzg:Lcom/google/android/gms/internal/ads/zzb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzb;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zza;->zzg:J

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-wide v5, v8, Lg/apg;->c:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lg/eac;->z(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJJ)Lg/apg;

    move-result-object v1

    return-object v1
.end method

.method public final an()Lg/dee;
    .locals 3

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lg/eac;->k:Lg/dee;

    if-ne v0, v2, :cond_1

    iget-object v2, v0, Lg/dee;->f:Lg/dee;

    iput-object v2, p0, Lg/eac;->k:Lg/dee;

    :cond_1
    invoke-virtual {v0}, Lg/dee;->p()V

    iget v0, p0, Lg/eac;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/eac;->b:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lg/eac;->m:Lg/dee;

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    iget-object v1, v0, Lg/dee;->l:Ljava/lang/Object;

    iput-object v1, p0, Lg/eac;->f:Ljava/lang/Object;

    iget-object v0, v0, Lg/dee;->i:Lg/apg;

    iget-object v0, v0, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iput-wide v0, p0, Lg/eac;->j:J

    :cond_2
    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    iget-object v0, v0, Lg/dee;->f:Lg/dee;

    iput-object v0, p0, Lg/eac;->a:Lg/dee;

    invoke-virtual {p0}, Lg/eac;->al()V

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    return-object v0
.end method

.method public final ao(Lg/dee;)Z
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/eac;->m:Lg/dee;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lg/eac;->m:Lg/dee;

    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lg/dee;->f:Lg/dee;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lg/eac;->k:Lg/dee;

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    iput-object v0, p0, Lg/eac;->k:Lg/dee;

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lg/dee;->p()V

    iget v2, p0, Lg/eac;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lg/eac;->b:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lg/eac;->m:Lg/dee;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lg/dee;->f:Lg/dee;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lg/dee;->q()V

    const/4 v2, 0x0

    iput-object v2, p1, Lg/dee;->f:Lg/dee;

    :goto_1
    iget-object v2, p1, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzyk;->zza:I

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zzb(I)Z

    iget-object v2, p1, Lg/dee;->d:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzyk;->zzc:[Lcom/google/android/gms/internal/ads/zzyd;

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lg/eac;->al()V

    return v0
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;IIJJ)Lg/apg;
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;IIJ)V

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    iget-object v3, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbt;->zzf(II)J

    move-result-wide v8

    move/from16 v2, p3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbt;->zze(I)I

    move-result p1

    move/from16 p2, p4

    if-ne p2, p1, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbt;->zzh()J

    :cond_0
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    cmp-long v3, v8, p1

    if-eqz v3, :cond_1

    cmp-long p1, v8, v1

    if-gtz p1, :cond_1

    const-wide/16 p1, -0x1

    add-long/2addr p1, v8

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    move-wide v2, v1

    move-object v1, v0

    new-instance v0, Lg/apg;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v12}, Lg/apg;-><init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V

    return-object v0
.end method

.method public final r()Lg/dee;
    .locals 1

    iget-object v0, p0, Lg/eac;->k:Lg/dee;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lg/dee;->f:Lg/dee;

    iput-object v0, p0, Lg/eac;->k:Lg/dee;

    invoke-virtual {p0}, Lg/eac;->al()V

    iget-object v0, p0, Lg/eac;->k:Lg/dee;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final s()Lg/dee;
    .locals 1

    iget-object v0, p0, Lg/eac;->k:Lg/dee;

    return-object v0
.end method

.method public final t()V
    .locals 3

    iget v0, p0, Lg/eac;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/eac;->a:Lg/dee;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lg/dee;->l:Ljava/lang/Object;

    iput-object v1, p0, Lg/eac;->f:Ljava/lang/Object;

    iget-object v1, v0, Lg/dee;->i:Lg/apg;

    iget-object v1, v1, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    iput-wide v1, p0, Lg/eac;->j:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/dee;->p()V

    iget-object v0, v0, Lg/dee;->f:Lg/dee;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lg/eac;->a:Lg/dee;

    iput-object v0, p0, Lg/eac;->m:Lg/dee;

    iput-object v0, p0, Lg/eac;->k:Lg/dee;

    const/4 v0, 0x0

    iput v0, p0, Lg/eac;->b:I

    invoke-virtual {p0}, Lg/eac;->al()V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJ)Lg/apg;
    .locals 10

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzur;->zzb:I

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzur;->zzc:I

    iget-wide v8, p2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v9}, Lg/eac;->q(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;IIJJ)Lg/apg;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    move-wide v3, p5

    invoke-virtual/range {v0 .. v8}, Lg/eac;->z(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJJ)Lg/apg;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzur;
    .locals 10

    iget-object v2, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v4, p0, Lg/eac;->f:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-virtual {p1, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    if-ne v4, v3, :cond_1

    iget-wide v3, p0, Lg/eac;->j:J

    :cond_0
    :goto_0
    move-wide v4, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lg/eac;->a:Lg/dee;

    :goto_1
    if-eqz v4, :cond_3

    iget-object v7, v4, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v3, v4, Lg/dee;->i:Lg/apg;

    iget-object v3, v3, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lg/dee;->f:Lg/dee;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lg/eac;->a:Lg/dee;

    :goto_2
    if-eqz v4, :cond_5

    iget-object v7, v4, Lg/dee;->l:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v6, :cond_4

    invoke-virtual {p1, v7, v2, v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    if-ne v7, v3, :cond_4

    iget-object v3, v4, Lg/dee;->i:Lg/apg;

    iget-object v3, v3, Lg/apg;->d:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzur;->zzd:J

    goto :goto_0

    :cond_4
    iget-object v4, v4, Lg/dee;->f:Lg/dee;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lg/eac;->ac(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v3, p0, Lg/eac;->g:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, p0, Lg/eac;->g:J

    iget-object v5, p0, Lg/eac;->a:Lg/dee;

    if-nez v5, :cond_0

    iput-object p2, p0, Lg/eac;->f:Ljava/lang/Object;

    iput-wide v3, p0, Lg/eac;->j:J

    goto :goto_0

    :goto_3
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual {p1, v3, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v3

    move-object v1, p2

    :goto_4
    iget v7, v9, Lcom/google/android/gms/internal/ads/zzbu;->zzn:I

    if-lt v3, v7, :cond_8

    const/4 v7, 0x1

    invoke-virtual {p1, v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbt;->zzb()I

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzbt;->zzd(J)I

    move-result v7

    if-eq v7, v6, :cond_7

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzbt;->zzb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    move-object v0, p1

    move-wide v2, p3

    move-object v6, v9

    invoke-static/range {v0 .. v7}, Lg/eac;->p(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbu;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;Z)Z
    .locals 7

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzd(ILcom/google/android/gms/internal/ads/zzbt;Z)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object v0, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbu;->zzi:Z

    if-nez p2, :cond_0

    iget v4, p0, Lg/eac;->i:I

    iget-boolean v5, p0, Lg/eac;->o:Z

    iget-object v2, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    iget-object v3, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzi(ILcom/google/android/gms/internal/ads/zzbt;Lcom/google/android/gms/internal/ads/zzbu;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method public final x(JLg/gzx;)Lg/apg;
    .locals 8

    iget-object v0, p0, Lg/eac;->m:Lg/dee;

    if-nez v0, :cond_0

    iget-object v2, p3, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v3, p3, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, p3, Lg/gzx;->r:J

    iget-wide v6, p3, Lg/gzx;->t:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lg/eac;->u(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJ)Lg/apg;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    iget-object p3, p3, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p0, p3, v0, p1, p2}, Lg/eac;->am(Lcom/google/android/gms/internal/ads/zzbv;Lg/dee;J)Lg/apg;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbt;->zzc:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->zza(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lg/eac;->l:Lcom/google/android/gms/internal/ads/zzbu;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbv;->zze(ILcom/google/android/gms/internal/ads/zzbu;J)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbu;->zzo:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final z(Lcom/google/android/gms/internal/ads/zzbv;Ljava/lang/Object;JJJ)Lg/apg;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lg/eac;->h:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbt;->zzc(J)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbt;->zzj(I)Z

    :cond_0
    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbt;->zzb()I

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    :goto_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzur;

    move-wide/from16 v10, p7

    invoke-direct {v9, v2, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v9, Lcom/google/android/gms/internal/ads/zzur;->zze:I

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v9}, Lg/eac;->y(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result v19

    invoke-virtual {v0, v1, v9, v2}, Lg/eac;->w(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;Z)Z

    move-result v20

    if-eq v6, v7, :cond_3

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbt;->zzk(I)Z

    :cond_3
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eq v6, v7, :cond_4

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbt;->zzg(I)J

    move-wide v6, v12

    goto :goto_2

    :cond_4
    move-wide v6, v10

    :goto_2
    cmp-long v1, v6, v10

    if-eqz v1, :cond_5

    move-wide v14, v12

    move-wide/from16 v16, v14

    goto :goto_3

    :cond_5
    iget-wide v14, v5, Lcom/google/android/gms/internal/ads/zzbt;->zzd:J

    move-wide/from16 v16, v14

    move-wide v14, v6

    :goto_3
    cmp-long v1, v16, v10

    if-eqz v1, :cond_6

    cmp-long v1, v3, v16

    if-ltz v1, :cond_6

    const-wide/16 v3, -0x1

    add-long v3, v16, v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_6
    move-wide v10, v3

    new-instance v8, Lg/apg;

    move-wide/from16 v12, p5

    move/from16 v18, v2

    invoke-direct/range {v8 .. v20}, Lg/apg;-><init>(Lcom/google/android/gms/internal/ads/zzur;JJJJZZZ)V

    return-object v8
.end method

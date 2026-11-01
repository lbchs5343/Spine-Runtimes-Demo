.class public final Lcom/google/android/gms/internal/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/Object;Lg/hj;)Z
    .locals 7

    iget-object v0, p2, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget v1, p2, Lg/hj;->d:I

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    const/4 p0, 0x5

    if-ne v1, p0, :cond_0

    invoke-virtual {p2, p0}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result p2

    shl-int/lit8 v0, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbo;

    or-int/2addr p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    return v4

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzl;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->g()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v0

    shl-int/lit8 v1, v2, 0x3

    add-int/2addr p0, v4

    const/16 v2, 0x64

    if-ge p0, v2, :cond_6

    :cond_3
    invoke-virtual {p2}, Lg/hj;->s()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_4

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/i;->a(ILjava/lang/Object;Lg/hj;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_4
    or-int/lit8 p0, v1, 0x4

    iget p2, p2, Lg/hj;->d:I

    if-ne p0, p2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->zzh()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbo;

    or-int/lit8 p0, v1, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    return v4

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p2}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    shl-int/lit8 p2, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbo;

    or-int/2addr p2, v6

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    return v4

    :cond_8
    invoke-virtual {p2, v4}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v0

    shl-int/lit8 p0, v2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbo;

    or-int/2addr p0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    return v4

    :cond_9
    invoke-virtual {p2, v3}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbo;

    shl-int/lit8 p0, v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    return v4
.end method

.method public static bridge b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->zzc()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->g()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {p0}, Lg/cxb;->l()V

    return-void
.end method

.method public static d(Lg/gli;Ljava/util/Map$Entry;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dmd;

    iget-boolean v1, v0, Lg/dmd;->a:Z

    iget-object v2, v0, Lg/dmd;->d:Lcom/google/android/gms/internal/ads/zzhca;

    iget-boolean v3, v0, Lg/dmd;->b:Z

    iget v0, v0, Lg/dmd;->c:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhca;->zza:Lcom/google/android/gms/internal/ads/zzhca;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->k(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->h(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->aa(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->v(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->n(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->ac(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/e;->p(ILjava/util/List;Lg/gli;)V

    return-void

    :pswitch_7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v3, Lg/gxd;->a:Lg/gxd;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lg/eub;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhai;

    iget-object v4, v4, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzgyc;->e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v3, Lg/gxd;->a:Lg/gxd;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lg/eub;

    invoke-virtual {v4, v0, v3, v1}, Lg/eub;->b(ILjava/lang/Object;Lg/ah;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/e;->q(ILjava/util/List;Lg/gli;)V

    return-void

    :pswitch_a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->o(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->b(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->y(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->n(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->c(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_f
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->l(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->i(ILjava/util/List;Lg/gli;Z)V

    return-void

    :pswitch_11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, p0, v3}, Lcom/google/android/gms/internal/ads/e;->ab(ILjava/util/List;Lg/gli;Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhca;->zza:Lcom/google/android/gms/internal/ads/zzhca;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_1
    :goto_2
    return-void

    :pswitch_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p0, Lg/eub;

    add-long v3, v1, v1

    const/16 p1, 0x3f

    shr-long/2addr v1, p1

    xor-long/2addr v1, v3

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    return-void

    :pswitch_13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    add-int v1, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v1

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    return-void

    :pswitch_14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    return-void

    :pswitch_15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    return-void

    :pswitch_16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    return-void

    :pswitch_17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    return-void

    :pswitch_18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    return-void

    :pswitch_19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lg/gxd;->a:Lg/gxd;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object p1

    check-cast p0, Lg/eub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhai;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V

    return-void

    :pswitch_1a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lg/gxd;->a:Lg/gxd;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object p1

    check-cast p0, Lg/eub;

    invoke-virtual {p0, v0, v1, p1}, Lg/eub;->b(ILjava/lang/Object;Lg/ah;)V

    return-void

    :pswitch_1b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzq(ILjava/lang/String;)V

    return-void

    :pswitch_1c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzM(IZ)V

    return-void

    :pswitch_1d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    return-void

    :pswitch_1e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    return-void

    :pswitch_1f
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    return-void

    :pswitch_20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    return-void

    :pswitch_21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    return-void

    :pswitch_22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    return-void

    :pswitch_23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    check-cast p0, Lg/eub;

    iget-object p0, p0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

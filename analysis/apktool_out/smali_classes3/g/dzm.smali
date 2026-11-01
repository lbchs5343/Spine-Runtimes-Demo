.class public abstract Lg/dzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lg/fvn;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Z

.field public static final h:Lg/hy;

.field public static i:Z

.field public static final j:Lg/hy;

.field public static volatile k:Lg/exu;

.field public static final l:Lg/hy;

.field public static m:Ljava/lang/reflect/Method;

.field public static final n:Lg/fhh;

.field public static final o:Lg/hy;

.field public static p:Lg/acq;

.field public static final q:Lg/hy;

.field public static final r:Lg/fvn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/hy;

    const-string v1, "COMPLETING_ALREADY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dzm;->o:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dzm;->q:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dzm;->h:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dzm;->j:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dzm;->l:Lg/hy;

    new-instance v0, Lg/fvn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/fvn;-><init>(Z)V

    sput-object v0, Lg/dzm;->r:Lg/fvn;

    new-instance v0, Lg/fvn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/fvn;-><init>(Z)V

    sput-object v0, Lg/dzm;->e:Lg/fvn;

    new-instance v0, Lg/fhh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dzm;->n:Lg/fhh;

    return-void
.end method

.method public static aa(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkq;
    .locals 1

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    const-string v0, "query_info_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzb:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "requester_type_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "requester_type_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_2
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_6
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_7
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_8
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzb:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzj:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzi:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzh:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzg:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzf:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zze:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzd:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzc:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfkq;->zza:Lcom/google/android/gms/internal/ads/zzfkq;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x67ecf68e
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;
    .locals 7

    if-nez p1, :cond_0

    iget v0, p0, Lg/brh;->az:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/brh;->ci:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lg/ic;->e:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ic;

    iget v5, v4, Lg/ic;->e:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, Lg/ic;->i(ILg/ic;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Lg/gbi;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Lg/gbi;

    const/4 v4, 0x0

    :goto_3
    iget v5, v3, Lg/gbi;->ev:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Lg/gbi;->ew:[Lg/brh;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Lg/brh;->az:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, Lg/brh;->ci:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    :goto_4
    if-eq v6, v2, :cond_a

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ic;

    iget v5, v4, Lg/ic;->e:I

    if-ne v5, v6, :cond_9

    move-object p3, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    new-instance p3, Lg/ic;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p3, Lg/ic;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p3, Lg/ic;->b:Ljava/util/ArrayList;

    iput v2, p3, Lg/ic;->c:I

    sget v2, Lg/ic;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lg/ic;->a:I

    iput v2, p3, Lg/ic;->e:I

    iput p1, p3, Lg/ic;->f:I

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v2, p3, Lg/ic;->e:I

    iget-object v3, p3, Lg/ic;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    return-object p3

    :cond_d
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, p0, Lg/aar;

    if-eqz v3, :cond_f

    move-object v3, p0

    check-cast v3, Lg/aar;

    iget-object v4, v3, Lg/aar;->b:Lg/hac;

    iget v3, v3, Lg/aar;->f:I

    if-nez v3, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {v4, v1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    :cond_f
    if-nez p1, :cond_10

    iput v2, p0, Lg/brh;->az:I

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    invoke-virtual {v0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    goto :goto_7

    :cond_10
    iput v2, p0, Lg/brh;->ci:I

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    iget-object v0, p0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {v0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    invoke-virtual {v0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    :goto_7
    iget-object p0, p0, Lg/brh;->cd:Lg/hac;

    invoke-virtual {p0, p1, p2, p3}, Lg/hac;->t(ILjava/util/ArrayList;Lg/ic;)V

    return-object p3
.end method

.method public static ac(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p2}, Lg/baf;->bc(ILjava/lang/Object;)V

    invoke-interface {p2, p1, p0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lg/wh;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    move-object p1, p2

    :goto_0
    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lg/fyw;->al(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lg/dzm;->q:Lg/hy;

    if-ne p0, p1, :cond_1

    goto :goto_3

    :cond_1
    instance-of p1, p0, Lg/wh;

    if-nez p1, :cond_5

    instance-of p1, p0, Lg/xk;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lg/xk;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p1, Lg/xk;->a:Lg/gpe;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p1

    goto :goto_3

    :cond_4
    :goto_2
    move-object p2, p0

    :goto_3
    return-object p2

    :cond_5
    check-cast p0, Lg/wh;

    iget-object p0, p0, Lg/wh;->c:Ljava/lang/Throwable;

    throw p0
.end method

.method public static ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v0

    iget-object v0, v0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v0, Lg/gpu;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/cgd;

    invoke-direct {v1, v0}, Lg/cgd;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "default_key"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lg/cgd;->d:Lg/faq;

    invoke-interface {p1, v0}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lg/gqx;

    if-eqz v0, :cond_5

    check-cast p1, Lg/gqx;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lg/gqx;->a:Ljava/lang/String;

    invoke-static {v1}, Lg/dzm;->aq(Ljava/lang/String;)Lg/cld;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lg/gqx;->b:[Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Lg/cld;->p(Lorg/json/JSONObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    return-object p0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    return-object p0
.end method

.method public static af(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static ag(Lg/aep;Lg/bwo;Ljava/util/ArrayList;I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    if-nez p3, :cond_0

    iget v2, v0, Lg/aep;->u:I

    iget-object v3, v0, Lg/aep;->p:[Lg/arf;

    const/4 v15, 0x0

    :goto_0
    move v13, v2

    move-object v14, v3

    goto :goto_1

    :cond_0
    iget v2, v0, Lg/aep;->n:I

    iget-object v3, v0, Lg/aep;->d:[Lg/arf;

    const/4 v15, 0x2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_70

    aget-object v3, v14, v2

    iget-boolean v4, v3, Lg/arf;->o:Z

    iget-object v5, v3, Lg/arf;->h:Lg/brh;

    const/16 v16, 0x0

    const/16 v6, 0x8

    if-nez v4, :cond_19

    iget v4, v3, Lg/arf;->f:I

    mul-int/lit8 v9, v4, 0x2

    move-object v7, v5

    move-object v12, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3
    if-nez v17, :cond_14

    const/16 v20, 0x1

    iget v8, v3, Lg/arf;->l:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lg/arf;->l:I

    iget-object v8, v7, Lg/brh;->cf:[Lg/brh;

    iget-object v11, v7, Lg/brh;->ax:[Lg/hac;

    aput-object v16, v8, v4

    iget-object v8, v7, Lg/brh;->at:[Lg/brh;

    aput-object v16, v8, v4

    iget v8, v7, Lg/brh;->aq:I

    if-eq v8, v6, :cond_e

    invoke-virtual {v7, v4}, Lg/brh;->ea(I)Lg/fol;

    sget-object v8, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    aget-object v22, v11, v9

    invoke-virtual/range {v22 .. v22}, Lg/hac;->n()I

    add-int/lit8 v22, v9, 0x1

    aget-object v23, v11, v22

    invoke-virtual/range {v23 .. v23}, Lg/hac;->n()I

    aget-object v23, v11, v9

    invoke-virtual/range {v23 .. v23}, Lg/hac;->n()I

    aget-object v22, v11, v22

    invoke-virtual/range {v22 .. v22}, Lg/hac;->n()I

    iget-object v6, v3, Lg/arf;->m:Lg/brh;

    if-nez v6, :cond_1

    iput-object v7, v3, Lg/arf;->m:Lg/brh;

    :cond_1
    iput-object v7, v3, Lg/arf;->e:Lg/brh;

    iget-object v6, v7, Lg/brh;->ch:[Lg/fol;

    aget-object v6, v6, v4

    if-ne v6, v8, :cond_e

    move/from16 v23, v2

    iget-object v2, v7, Lg/brh;->cm:[I

    aget v2, v2, v4

    move/from16 v24, v4

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v27, v9

    goto :goto_7

    :cond_3
    :goto_4
    iget v4, v3, Lg/arf;->n:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lg/arf;->n:I

    iget-object v4, v7, Lg/brh;->cu:[F

    aget v4, v4, v24

    cmpl-float v26, v4, v18

    if-lez v26, :cond_4

    move/from16 v26, v4

    iget v4, v3, Lg/arf;->b:F

    add-float v4, v4, v26

    iput v4, v3, Lg/arf;->b:F

    goto :goto_5

    :cond_4
    move/from16 v26, v4

    :goto_5
    iget v4, v7, Lg/brh;->aq:I

    move/from16 v27, v9

    const/16 v9, 0x8

    if-eq v4, v9, :cond_8

    if-ne v6, v8, :cond_8

    if-eqz v2, :cond_5

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    :cond_5
    cmpg-float v2, v26, v18

    if-gez v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v3, Lg/arf;->d:Z

    goto :goto_6

    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, v3, Lg/arf;->c:Z

    :goto_6
    iget-object v2, v3, Lg/arf;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lg/arf;->a:Ljava/util/ArrayList;

    :cond_7
    iget-object v2, v3, Lg/arf;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v3, Lg/arf;->i:Lg/brh;

    if-nez v2, :cond_9

    iput-object v7, v3, Lg/arf;->i:Lg/brh;

    :cond_9
    iget-object v2, v3, Lg/arf;->q:Lg/brh;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lg/brh;->at:[Lg/brh;

    aput-object v7, v2, v24

    :cond_a
    iput-object v7, v3, Lg/arf;->q:Lg/brh;

    :goto_7
    if-nez v24, :cond_c

    iget v2, v7, Lg/brh;->da:I

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    iget v2, v7, Lg/brh;->bl:I

    if-nez v2, :cond_f

    iget v2, v7, Lg/brh;->bs:I

    goto :goto_8

    :cond_c
    iget v2, v7, Lg/brh;->by:I

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    iget v2, v7, Lg/brh;->cy:I

    if-nez v2, :cond_f

    iget v2, v7, Lg/brh;->aw:I

    goto :goto_8

    :cond_e
    move/from16 v23, v2

    move/from16 v24, v4

    move/from16 v27, v9

    :cond_f
    :goto_8
    if-eq v12, v7, :cond_10

    iget-object v2, v12, Lg/brh;->cf:[Lg/brh;

    aput-object v7, v2, v24

    :cond_10
    add-int/lit8 v9, v27, 0x1

    aget-object v2, v11, v9

    iget-object v2, v2, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lg/hac;->b:Lg/brh;

    iget-object v4, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v4, v4, v27

    iget-object v4, v4, Lg/hac;->e:Lg/hac;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lg/hac;->b:Lg/brh;

    if-eq v4, v7, :cond_12

    :cond_11
    move-object/from16 v2, v16

    :cond_12
    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    move-object v2, v7

    const/16 v17, 0x1

    :goto_9
    move-object v12, v7

    move/from16 v4, v24

    move/from16 v9, v27

    const/16 v6, 0x8

    move-object v7, v2

    move/from16 v2, v23

    goto/16 :goto_3

    :cond_14
    move/from16 v23, v2

    move/from16 v24, v4

    move/from16 v27, v9

    iget-object v2, v3, Lg/arf;->m:Lg/brh;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v27

    invoke-virtual {v2}, Lg/hac;->n()I

    :cond_15
    iget-object v2, v3, Lg/arf;->e:Lg/brh;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v9, v27, 0x1

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lg/hac;->n()I

    :cond_16
    iput-object v7, v3, Lg/arf;->p:Lg/brh;

    if-nez v24, :cond_17

    iget-boolean v2, v3, Lg/arf;->k:Z

    if-eqz v2, :cond_17

    iput-object v7, v3, Lg/arf;->g:Lg/brh;

    goto :goto_a

    :cond_17
    iput-object v5, v3, Lg/arf;->g:Lg/brh;

    :goto_a
    iget-boolean v2, v3, Lg/arf;->c:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v3, Lg/arf;->d:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, v3, Lg/arf;->j:Z

    :goto_c
    const/4 v2, 0x1

    goto :goto_d

    :cond_19
    move/from16 v23, v2

    const/16 v18, 0x0

    goto :goto_c

    :goto_d
    iput-boolean v2, v3, Lg/arf;->o:Z

    if-eqz v10, :cond_1b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v33, v13

    move-object/from16 v37, v14

    const/16 v19, 0x0

    const/16 v26, 0x2

    goto/16 :goto_49

    :cond_1b
    :goto_e
    iget-object v11, v3, Lg/arf;->p:Lg/brh;

    iget-object v12, v3, Lg/arf;->m:Lg/brh;

    iget-object v2, v3, Lg/arf;->e:Lg/brh;

    iget-object v4, v3, Lg/arf;->g:Lg/brh;

    iget v6, v3, Lg/arf;->b:F

    iget-object v7, v0, Lg/brh;->ch:[Lg/fol;

    iget-object v8, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v7, v7, p3

    sget-object v9, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v7, v9, :cond_1c

    const/4 v7, 0x1

    goto :goto_f

    :cond_1c
    const/4 v7, 0x0

    :goto_f
    if-nez p3, :cond_20

    iget v9, v4, Lg/brh;->cs:I

    if-nez v9, :cond_1d

    const/16 v20, 0x1

    :goto_10
    move/from16 v17, v6

    const/4 v6, 0x1

    goto :goto_11

    :cond_1d
    const/16 v20, 0x0

    goto :goto_10

    :goto_11
    if-ne v9, v6, :cond_1e

    const/16 v21, 0x1

    :goto_12
    const/4 v6, 0x2

    goto :goto_13

    :cond_1e
    const/16 v21, 0x0

    goto :goto_12

    :goto_13
    if-ne v9, v6, :cond_1f

    const/4 v9, 0x1

    goto :goto_14

    :cond_1f
    const/4 v9, 0x0

    :goto_14
    move-object v6, v5

    move/from16 v27, v7

    move/from16 v24, v20

    :goto_15
    move/from16 v25, v21

    const/16 v21, 0x0

    goto :goto_1b

    :cond_20
    move/from16 v17, v6

    const/4 v6, 0x2

    iget v9, v4, Lg/brh;->bw:I

    if-nez v9, :cond_21

    const/16 v24, 0x1

    :goto_16
    const/4 v6, 0x1

    goto :goto_17

    :cond_21
    const/16 v24, 0x0

    goto :goto_16

    :goto_17
    if-ne v9, v6, :cond_22

    const/16 v21, 0x1

    :goto_18
    const/4 v6, 0x2

    goto :goto_19

    :cond_22
    const/16 v21, 0x0

    goto :goto_18

    :goto_19
    if-ne v9, v6, :cond_23

    const/4 v9, 0x1

    goto :goto_1a

    :cond_23
    const/4 v9, 0x0

    :goto_1a
    move-object v6, v5

    move/from16 v27, v7

    goto :goto_15

    :goto_1b
    if-nez v21, :cond_31

    iget-object v7, v6, Lg/brh;->ax:[Lg/hac;

    move-object/from16 v31, v7

    iget-object v7, v6, Lg/brh;->ch:[Lg/fol;

    move-object/from16 v32, v7

    aget-object v7, v31, v15

    if-eqz v9, :cond_24

    const/16 v29, 0x1

    goto :goto_1c

    :cond_24
    const/16 v29, 0x4

    :goto_1c
    invoke-virtual {v7}, Lg/hac;->n()I

    move-result v33

    move-object/from16 v34, v8

    aget-object v8, v32, p3

    move/from16 v35, v9

    sget-object v9, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v8, v9, :cond_25

    iget-object v8, v6, Lg/brh;->cm:[I

    aget v8, v8, p3

    if-nez v8, :cond_25

    const/16 v36, 0x1

    goto :goto_1d

    :cond_25
    const/16 v36, 0x0

    :goto_1d
    iget-object v8, v7, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_26

    if-eq v6, v5, :cond_26

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v8

    add-int v33, v8, v33

    :cond_26
    move/from16 v8, v33

    if-eqz v35, :cond_27

    if-eq v6, v5, :cond_27

    if-eq v6, v12, :cond_27

    const/16 v29, 0x8

    :cond_27
    iget-object v10, v7, Lg/hac;->e:Lg/hac;

    if-eqz v10, :cond_2b

    if-ne v6, v12, :cond_28

    move/from16 v33, v13

    iget-object v13, v7, Lg/hac;->f:Lg/crb;

    iget-object v10, v10, Lg/hac;->f:Lg/crb;

    move-object/from16 v37, v14

    const/4 v14, 0x6

    invoke-virtual {v1, v13, v10, v8, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_1e

    :cond_28
    move/from16 v33, v13

    move-object/from16 v37, v14

    iget-object v13, v7, Lg/hac;->f:Lg/crb;

    iget-object v10, v10, Lg/hac;->f:Lg/crb;

    const/16 v14, 0x8

    invoke-virtual {v1, v13, v10, v8, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :goto_1e
    if-eqz v36, :cond_29

    if-nez v35, :cond_29

    const/16 v29, 0x5

    :cond_29
    if-ne v6, v12, :cond_2a

    if-eqz v35, :cond_2a

    iget-object v10, v6, Lg/brh;->cq:[Z

    aget-boolean v10, v10, p3

    if-eqz v10, :cond_2a

    const/4 v10, 0x5

    goto :goto_1f

    :cond_2a
    move/from16 v10, v29

    :goto_1f
    iget-object v13, v7, Lg/hac;->f:Lg/crb;

    iget-object v7, v7, Lg/hac;->e:Lg/hac;

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    invoke-virtual {v1, v13, v7, v8, v10}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    goto :goto_20

    :cond_2b
    move/from16 v33, v13

    move-object/from16 v37, v14

    :goto_20
    if-eqz v27, :cond_2d

    iget v7, v6, Lg/brh;->aq:I

    const/16 v14, 0x8

    if-eq v7, v14, :cond_2c

    aget-object v7, v32, p3

    if-ne v7, v9, :cond_2c

    add-int/lit8 v7, v15, 0x1

    aget-object v7, v31, v7

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    aget-object v8, v31, v15

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v1, v7, v8, v9, v10}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_21

    :cond_2c
    const/4 v9, 0x0

    :goto_21
    aget-object v7, v31, v15

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    aget-object v8, v34, v15

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    const/16 v14, 0x8

    invoke-virtual {v1, v7, v8, v9, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_2d
    add-int/lit8 v7, v15, 0x1

    aget-object v7, v31, v7

    iget-object v7, v7, Lg/hac;->e:Lg/hac;

    if-eqz v7, :cond_2e

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    iget-object v8, v7, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v15

    iget-object v8, v8, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_2e

    iget-object v8, v8, Lg/hac;->b:Lg/brh;

    if-eq v8, v6, :cond_2f

    :cond_2e
    move-object/from16 v7, v16

    :cond_2f
    if-eqz v7, :cond_30

    move-object v6, v7

    goto :goto_22

    :cond_30
    const/16 v21, 0x1

    :goto_22
    move-object/from16 v10, p2

    move/from16 v13, v33

    move-object/from16 v8, v34

    move/from16 v9, v35

    move-object/from16 v14, v37

    goto/16 :goto_1b

    :cond_31
    move-object/from16 v34, v8

    move/from16 v35, v9

    move/from16 v33, v13

    move-object/from16 v37, v14

    if-eqz v2, :cond_34

    iget-object v6, v11, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lg/hac;->e:Lg/hac;

    if-eqz v6, :cond_34

    iget-object v6, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v6, v6, v7

    iget-object v8, v2, Lg/brh;->ch:[Lg/fol;

    aget-object v8, v8, p3

    sget-object v9, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v8, v9, :cond_32

    iget-object v8, v2, Lg/brh;->cm:[I

    aget v8, v8, p3

    if-nez v8, :cond_32

    if-nez v35, :cond_32

    iget-object v8, v6, Lg/hac;->e:Lg/hac;

    iget-object v9, v8, Lg/hac;->b:Lg/brh;

    if-ne v9, v0, :cond_32

    iget-object v9, v6, Lg/hac;->f:Lg/crb;

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v10

    neg-int v10, v10

    const/4 v13, 0x5

    invoke-virtual {v1, v9, v8, v10, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    goto :goto_23

    :cond_32
    const/4 v13, 0x5

    if-eqz v35, :cond_33

    iget-object v8, v6, Lg/hac;->e:Lg/hac;

    iget-object v9, v8, Lg/hac;->b:Lg/brh;

    if-ne v9, v0, :cond_33

    iget-object v9, v6, Lg/hac;->f:Lg/crb;

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v10

    neg-int v10, v10

    const/4 v14, 0x4

    invoke-virtual {v1, v9, v8, v10, v14}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_33
    :goto_23
    iget-object v8, v6, Lg/hac;->f:Lg/crb;

    iget-object v9, v11, Lg/brh;->ax:[Lg/hac;

    aget-object v7, v9, v7

    iget-object v7, v7, Lg/hac;->e:Lg/hac;

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v6

    neg-int v6, v6

    const/4 v14, 0x6

    invoke-virtual {v1, v8, v7, v6, v14}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    goto :goto_24

    :cond_34
    const/4 v13, 0x5

    :goto_24
    if-eqz v27, :cond_35

    add-int/lit8 v6, v15, 0x1

    aget-object v7, v34, v6

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    iget-object v8, v11, Lg/brh;->ax:[Lg/hac;

    aget-object v6, v8, v6

    iget-object v8, v6, Lg/hac;->f:Lg/crb;

    invoke-virtual {v6}, Lg/hac;->n()I

    move-result v6

    const/16 v14, 0x8

    invoke-virtual {v1, v7, v8, v6, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_35
    iget-object v6, v3, Lg/arf;->a:Ljava/util/ArrayList;

    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3f

    iget-boolean v9, v3, Lg/arf;->d:Z

    if-eqz v9, :cond_36

    iget-boolean v9, v3, Lg/arf;->j:Z

    if-nez v9, :cond_36

    iget v9, v3, Lg/arf;->n:I

    int-to-float v9, v9

    move/from16 v17, v9

    :cond_36
    move-object/from16 v10, v16

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_25
    if-ge v9, v7, :cond_3f

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lg/brh;

    iget-object v13, v8, Lg/brh;->cu:[F

    iget-object v0, v8, Lg/brh;->ax:[Lg/hac;

    aget v13, v13, p3

    move-object/from16 v20, v0

    cmpg-float v27, v13, v18

    if-gez v27, :cond_38

    iget-boolean v13, v3, Lg/arf;->j:Z

    if-eqz v13, :cond_37

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v20, v0

    iget-object v0, v0, Lg/hac;->f:Lg/crb;

    aget-object v8, v20, v15

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    move-object/from16 v27, v6

    const/4 v6, 0x4

    const/4 v13, 0x0

    invoke-virtual {v1, v0, v8, v13, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    move/from16 v19, v9

    const/4 v9, 0x0

    goto :goto_26

    :cond_37
    const/high16 v13, 0x3f800000    # 1.0f

    :cond_38
    move-object/from16 v27, v6

    const/4 v6, 0x4

    cmpl-float v28, v13, v18

    if-nez v28, :cond_39

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v20, v0

    iget-object v0, v0, Lg/hac;->f:Lg/crb;

    aget-object v8, v20, v15

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    move/from16 v19, v9

    const/4 v9, 0x0

    const/16 v13, 0x8

    invoke-virtual {v1, v0, v8, v9, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :goto_26
    move/from16 v20, v7

    goto/16 :goto_2b

    :cond_39
    move/from16 v19, v9

    const/4 v9, 0x0

    if-eqz v10, :cond_3e

    iget-object v10, v10, Lg/brh;->ax:[Lg/hac;

    aget-object v6, v10, v15

    iget-object v6, v6, Lg/hac;->f:Lg/crb;

    add-int/lit8 v31, v15, 0x1

    aget-object v10, v10, v31

    iget-object v10, v10, Lg/hac;->f:Lg/crb;

    aget-object v9, v20, v15

    iget-object v9, v9, Lg/hac;->f:Lg/crb;

    aget-object v0, v20, v31

    iget-object v0, v0, Lg/hac;->f:Lg/crb;

    move/from16 v20, v7

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v7

    move-object/from16 v31, v8

    const/4 v8, 0x0

    iput v8, v7, Lg/gz;->d:F

    const/16 v18, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v36, v17, v18

    if-eqz v36, :cond_3a

    cmpl-float v36, v14, v13

    if-nez v36, :cond_3b

    :cond_3a
    move/from16 v28, v13

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    goto :goto_28

    :cond_3b
    cmpl-float v36, v14, v18

    if-nez v36, :cond_3c

    iget-object v0, v7, Lg/gz;->a:Lg/fnf;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6, v9}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v0, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v0, v10, v8}, Lg/fnf;->r(Lg/crb;F)V

    :goto_27
    move/from16 v28, v13

    goto :goto_29

    :cond_3c
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v28, :cond_3d

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v6, v9, v8}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v0, v8}, Lg/fnf;->r(Lg/crb;F)V

    goto :goto_27

    :cond_3d
    div-float v14, v14, v17

    div-float v28, v13, v17

    div-float v14, v14, v28

    move/from16 v28, v13

    iget-object v13, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v13, v6, v8}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v6, v10, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v6, v0, v14}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v0, v7, Lg/gz;->a:Lg/fnf;

    neg-float v6, v14

    invoke-virtual {v0, v9, v6}, Lg/fnf;->r(Lg/crb;F)V

    goto :goto_29

    :goto_28
    iget-object v14, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v14, v6, v8}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v6, v10, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v6, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v6, v0, v8}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v0, v7, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v0, v9, v13}, Lg/fnf;->r(Lg/crb;F)V

    :goto_29
    invoke-virtual {v1, v7}, Lg/bwo;->ai(Lg/gz;)V

    goto :goto_2a

    :cond_3e
    move/from16 v20, v7

    move-object/from16 v31, v8

    move/from16 v28, v13

    :goto_2a
    move/from16 v14, v28

    move-object/from16 v10, v31

    :goto_2b
    add-int/lit8 v9, v19, 0x1

    move/from16 v7, v20

    move-object/from16 v6, v27

    const/4 v8, 0x1

    const/4 v13, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_25

    :cond_3f
    if-eqz v12, :cond_40

    if-eq v12, v2, :cond_41

    if-eqz v35, :cond_40

    goto :goto_2c

    :cond_40
    move-object v0, v2

    const/16 v19, 0x0

    const/16 v26, 0x2

    goto :goto_32

    :cond_41
    :goto_2c
    iget-object v0, v5, Lg/brh;->ax:[Lg/hac;

    aget-object v0, v0, v15

    iget-object v3, v11, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v5, v15, 0x1

    aget-object v3, v3, v5

    iget-object v0, v0, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lg/hac;->f:Lg/crb;

    goto :goto_2d

    :cond_42
    move-object/from16 v0, v16

    :goto_2d
    iget-object v6, v3, Lg/hac;->e:Lg/hac;

    if-eqz v6, :cond_43

    iget-object v6, v6, Lg/hac;->f:Lg/crb;

    goto :goto_2e

    :cond_43
    move-object/from16 v6, v16

    :goto_2e
    iget-object v7, v12, Lg/brh;->ax:[Lg/hac;

    aget-object v7, v7, v15

    if-eqz v2, :cond_44

    iget-object v3, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v3, v3, v5

    :cond_44
    if-eqz v0, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    iget v4, v4, Lg/brh;->cp:F

    :goto_2f
    move v5, v4

    goto :goto_30

    :cond_45
    iget v4, v4, Lg/brh;->ct:F

    goto :goto_2f

    :goto_30
    invoke-virtual {v7}, Lg/hac;->n()I

    move-result v4

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v8

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    iget-object v3, v3, Lg/hac;->f:Lg/crb;

    const/4 v9, 0x7

    move-object/from16 v19, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v7

    move-object/from16 v7, v19

    const/16 v19, 0x0

    const/16 v26, 0x2

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    goto :goto_31

    :cond_46
    move-object v0, v2

    const/16 v19, 0x0

    const/16 v26, 0x2

    :cond_47
    :goto_31
    move-object/from16 v1, p1

    goto/16 :goto_46

    :goto_32
    if-eqz v24, :cond_58

    if-eqz v12, :cond_58

    iget v1, v3, Lg/arf;->n:I

    if-lez v1, :cond_48

    iget v2, v3, Lg/arf;->l:I

    if-ne v2, v1, :cond_48

    const/16 v21, 0x1

    goto :goto_33

    :cond_48
    const/16 v21, 0x0

    :goto_33
    move-object v10, v12

    move-object v13, v10

    :goto_34
    if-eqz v10, :cond_47

    iget-object v1, v10, Lg/brh;->ax:[Lg/hac;

    iget-object v2, v10, Lg/brh;->cf:[Lg/brh;

    aget-object v2, v2, p3

    move-object v14, v2

    :goto_35
    if-eqz v14, :cond_49

    iget v2, v14, Lg/brh;->aq:I

    const/16 v9, 0x8

    if-ne v2, v9, :cond_4a

    iget-object v2, v14, Lg/brh;->cf:[Lg/brh;

    aget-object v14, v2, p3

    goto :goto_35

    :cond_49
    const/16 v9, 0x8

    :cond_4a
    if-nez v14, :cond_4c

    if-ne v10, v0, :cond_4b

    goto :goto_36

    :cond_4b
    move-object/from16 v38, v5

    move-object/from16 v17, v13

    const/16 v13, 0x8

    const/16 v30, 0x5

    goto/16 :goto_3c

    :cond_4c
    :goto_36
    aget-object v2, v1, v15

    iget-object v3, v2, Lg/hac;->f:Lg/crb;

    iget-object v4, v2, Lg/hac;->e:Lg/hac;

    if-eqz v4, :cond_4d

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    goto :goto_37

    :cond_4d
    move-object/from16 v4, v16

    :goto_37
    if-eq v13, v10, :cond_4e

    iget-object v4, v13, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v6, v15, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    goto :goto_38

    :cond_4e
    if-ne v10, v12, :cond_50

    iget-object v4, v5, Lg/brh;->ax:[Lg/hac;

    aget-object v4, v4, v15

    iget-object v4, v4, Lg/hac;->e:Lg/hac;

    if-eqz v4, :cond_4f

    iget-object v4, v4, Lg/hac;->f:Lg/crb;

    goto :goto_38

    :cond_4f
    move-object/from16 v4, v16

    :cond_50
    :goto_38
    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    add-int/lit8 v6, v15, 0x1

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lg/hac;->n()I

    move-result v7

    if-eqz v14, :cond_51

    iget-object v8, v14, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v15

    iget-object v9, v8, Lg/hac;->f:Lg/crb;

    goto :goto_39

    :cond_51
    iget-object v8, v11, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v6

    iget-object v8, v8, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_52

    iget-object v9, v8, Lg/hac;->f:Lg/crb;

    goto :goto_39

    :cond_52
    move-object/from16 v9, v16

    :goto_39
    aget-object v1, v1, v6

    iget-object v1, v1, Lg/hac;->f:Lg/crb;

    if-eqz v8, :cond_53

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v8

    add-int/2addr v7, v8

    :cond_53
    iget-object v8, v13, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v8

    add-int/2addr v8, v2

    if-eqz v3, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v9, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v10, v12, :cond_54

    iget-object v2, v12, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v8

    :cond_54
    if-ne v10, v0, :cond_55

    iget-object v2, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v7

    :cond_55
    move-object v6, v9

    if-eqz v21, :cond_56

    const/16 v9, 0x8

    :goto_3a
    move-object v2, v5

    goto :goto_3b

    :cond_56
    const/4 v9, 0x5

    goto :goto_3a

    :goto_3b
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v38, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v8

    move-object/from16 v17, v13

    const/16 v13, 0x8

    const/16 v30, 0x5

    move v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    :goto_3c
    iget v1, v10, Lg/brh;->aq:I

    if-eq v1, v13, :cond_57

    move-object/from16 v17, v10

    :cond_57
    move-object v10, v14

    move-object/from16 v13, v17

    move-object/from16 v5, v38

    goto/16 :goto_34

    :cond_58
    move-object/from16 v38, v5

    const/16 v13, 0x8

    if-eqz v25, :cond_47

    if-eqz v12, :cond_47

    iget v1, v3, Lg/arf;->n:I

    if-lez v1, :cond_59

    iget v2, v3, Lg/arf;->l:I

    if-ne v2, v1, :cond_59

    const/16 v21, 0x1

    goto :goto_3d

    :cond_59
    const/16 v21, 0x0

    :goto_3d
    move-object v10, v12

    move-object v14, v10

    :goto_3e
    if-eqz v10, :cond_64

    iget-object v1, v10, Lg/brh;->ax:[Lg/hac;

    iget-object v2, v10, Lg/brh;->cf:[Lg/brh;

    aget-object v2, v2, p3

    :goto_3f
    if-eqz v2, :cond_5a

    iget v3, v2, Lg/brh;->aq:I

    if-ne v3, v13, :cond_5a

    iget-object v2, v2, Lg/brh;->cf:[Lg/brh;

    aget-object v2, v2, p3

    goto :goto_3f

    :cond_5a
    if-eq v10, v12, :cond_62

    if-eq v10, v0, :cond_62

    if-eqz v2, :cond_62

    if-ne v2, v0, :cond_5b

    move-object/from16 v2, v16

    :cond_5b
    aget-object v3, v1, v15

    iget-object v4, v3, Lg/hac;->f:Lg/crb;

    iget-object v5, v14, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lg/hac;->f:Lg/crb;

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v3

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lg/hac;->n()I

    move-result v7

    if-eqz v2, :cond_5d

    iget-object v1, v2, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v15

    iget-object v8, v1, Lg/hac;->f:Lg/crb;

    iget-object v9, v1, Lg/hac;->e:Lg/hac;

    if-eqz v9, :cond_5c

    iget-object v9, v9, Lg/hac;->f:Lg/crb;

    goto :goto_41

    :cond_5c
    move-object/from16 v9, v16

    goto :goto_41

    :cond_5d
    iget-object v8, v0, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v15

    if-eqz v8, :cond_5e

    iget-object v9, v8, Lg/hac;->f:Lg/crb;

    goto :goto_40

    :cond_5e
    move-object/from16 v9, v16

    :goto_40
    aget-object v1, v1, v6

    iget-object v1, v1, Lg/hac;->f:Lg/crb;

    move-object/from16 v39, v9

    move-object v9, v1

    move-object v1, v8

    move-object/from16 v8, v39

    :goto_41
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v7, v1

    :cond_5f
    iget-object v1, v14, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v1, v3

    if-eqz v21, :cond_60

    const/16 v6, 0x8

    goto :goto_42

    :cond_60
    const/4 v6, 0x4

    :goto_42
    if-eqz v4, :cond_61

    if-eqz v5, :cond_61

    if-eqz v8, :cond_61

    if-eqz v9, :cond_61

    move-object v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v17, v9

    move v9, v6

    move-object v6, v8

    move v8, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v2

    move-object v2, v4

    const/16 v29, 0x4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    goto :goto_43

    :cond_61
    move-object/from16 v1, p1

    move-object/from16 v17, v2

    const/16 v29, 0x4

    :goto_43
    move-object/from16 v2, v17

    goto :goto_44

    :cond_62
    move-object/from16 v1, p1

    const/16 v29, 0x4

    :goto_44
    iget v3, v10, Lg/brh;->aq:I

    if-eq v3, v13, :cond_63

    move-object v14, v10

    :cond_63
    move-object v10, v2

    goto/16 :goto_3e

    :cond_64
    move-object/from16 v1, p1

    iget-object v2, v12, Lg/brh;->ax:[Lg/hac;

    aget-object v2, v2, v15

    move-object/from16 v3, v38

    iget-object v3, v3, Lg/brh;->ax:[Lg/hac;

    aget-object v3, v3, v15

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    iget-object v4, v0, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v5, v15, 0x1

    aget-object v10, v4, v5

    iget-object v4, v11, Lg/brh;->ax:[Lg/hac;

    aget-object v4, v4, v5

    iget-object v13, v4, Lg/hac;->e:Lg/hac;

    const/4 v9, 0x5

    if-eqz v3, :cond_66

    if-eq v12, v0, :cond_65

    iget-object v4, v2, Lg/hac;->f:Lg/crb;

    iget-object v3, v3, Lg/hac;->f:Lg/crb;

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    invoke-virtual {v1, v4, v3, v2, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    goto :goto_45

    :cond_65
    if-eqz v13, :cond_66

    move-object v4, v2

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    iget-object v3, v3, Lg/hac;->f:Lg/crb;

    invoke-virtual {v4}, Lg/hac;->n()I

    move-result v4

    iget-object v6, v10, Lg/hac;->f:Lg/crb;

    iget-object v7, v13, Lg/hac;->f:Lg/crb;

    invoke-virtual {v10}, Lg/hac;->n()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    :cond_66
    :goto_45
    if-eqz v13, :cond_67

    if-eq v12, v0, :cond_67

    iget-object v2, v10, Lg/hac;->f:Lg/crb;

    iget-object v3, v13, Lg/hac;->f:Lg/crb;

    invoke-virtual {v10}, Lg/hac;->n()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_67
    :goto_46
    if-nez v24, :cond_68

    if-eqz v25, :cond_6f

    :cond_68
    if-eqz v12, :cond_6f

    if-eq v12, v0, :cond_6f

    iget-object v2, v12, Lg/brh;->ax:[Lg/hac;

    aget-object v3, v2, v15

    if-nez v0, :cond_69

    move-object v0, v12

    :cond_69
    iget-object v4, v0, Lg/brh;->ax:[Lg/hac;

    add-int/lit8 v5, v15, 0x1

    aget-object v6, v4, v5

    iget-object v7, v3, Lg/hac;->e:Lg/hac;

    if-eqz v7, :cond_6a

    iget-object v7, v7, Lg/hac;->f:Lg/crb;

    goto :goto_47

    :cond_6a
    move-object/from16 v7, v16

    :goto_47
    iget-object v8, v6, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_6b

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    goto :goto_48

    :cond_6b
    move-object/from16 v8, v16

    :goto_48
    if-eq v11, v0, :cond_6d

    iget-object v8, v11, Lg/brh;->ax:[Lg/hac;

    aget-object v8, v8, v5

    iget-object v8, v8, Lg/hac;->e:Lg/hac;

    if-eqz v8, :cond_6c

    iget-object v8, v8, Lg/hac;->f:Lg/crb;

    move-object/from16 v16, v8

    :cond_6c
    move-object/from16 v8, v16

    :cond_6d
    if-ne v12, v0, :cond_6e

    aget-object v6, v2, v5

    :cond_6e
    if-eqz v7, :cond_6f

    if-eqz v8, :cond_6f

    move-object v0, v4

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v4

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    iget-object v2, v3, Lg/hac;->f:Lg/crb;

    iget-object v3, v6, Lg/hac;->f:Lg/crb;

    const/4 v9, 0x5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v8

    move v8, v0

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    :cond_6f
    :goto_49
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v13, v33

    move-object/from16 v14, v37

    goto/16 :goto_2

    :cond_70
    return-void
.end method

.method public static ah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/dzm;->p:Lg/acq;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lg/acq;->br(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, p1, v0}, Lg/acq;->br(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static ai(IILjava/lang/String;)I
    .locals 7

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const p1, 0x1ffffe

    :goto_0
    int-to-long v1, p0

    const/4 p0, 0x1

    int-to-long v3, p0

    int-to-long v5, p1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lg/dzm;->aj(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static final aj(Ljava/lang/String;JJJ)J
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    sget v5, Lg/fst;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_0

    return-wide p1

    :cond_0
    const/16 v7, 0xa

    invoke-static {v7}, Lg/egh;->al(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v19, v6

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Lg/bff;->ad(II)I

    move-result v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v11, :cond_6

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    goto :goto_1

    :cond_3
    const/16 v14, 0x2b

    if-eq v10, v14, :cond_5

    const/16 v9, 0x2d

    if-eq v10, v9, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v12, -0x8000000000000000L

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    :cond_6
    const/4 v11, 0x0

    :goto_2
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const-wide p1, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :goto_3
    if-ge v9, v8, :cond_b

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Character;->digit(II)I

    move-result v10

    if-gez v10, :cond_7

    goto :goto_1

    :cond_7
    cmp-long v18, v14, v16

    if-gez v18, :cond_8

    cmp-long v18, v16, p1

    if-nez v18, :cond_1

    move-object/from16 v19, v6

    int-to-long v5, v7

    div-long v16, v12, v5

    cmp-long v5, v14, v16

    if-gez v5, :cond_9

    goto :goto_4

    :cond_8
    move-object/from16 v19, v6

    :cond_9
    int-to-long v5, v7

    mul-long v14, v14, v5

    int-to-long v5, v10

    add-long v20, v12, v5

    cmp-long v10, v14, v20

    if-gez v10, :cond_a

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    sub-long/2addr v14, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v19

    goto :goto_3

    :cond_b
    move-object/from16 v19, v6

    if-eqz v11, :cond_c

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_5

    :cond_c
    neg-long v5, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_5
    const/16 v6, 0x27

    const-string v7, "System property \'"

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v1, v8

    if-gtz v5, :cond_d

    cmp-long v5, v8, v3

    if-gtz v5, :cond_d

    return-wide v8

    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static ak(Lg/gwa;Lg/dpa;Ljava/util/ArrayList;Z)Lg/gey;
    .locals 10

    const/4 v0, 0x1

    const-string v1, "reduce"

    invoke-static {v0, v1, p2}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x2

    invoke-static {v1, v2, p2}, Lg/byh;->ba(Ljava/lang/String;ILjava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    iget-object v4, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, p1, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    instance-of v4, v3, Lg/fdk;

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    iget-object v4, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    invoke-virtual {v4, p1, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    instance-of v4, p2, Lg/enl;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    :goto_0
    check-cast v3, Lg/fdk;

    invoke-virtual {p0}, Lg/gwa;->s()I

    move-result v4

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, -0x1

    :goto_1
    const/4 v6, -0x1

    if-eqz p3, :cond_3

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eq v0, p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_3
    if-nez p2, :cond_5

    invoke-virtual {p0, v5}, Lg/gwa;->g(I)Lg/gey;

    move-result-object p2

    goto :goto_5

    :cond_5
    :goto_4
    sub-int p3, v4, v5

    mul-int p3, p3, v6

    if-ltz p3, :cond_8

    invoke-virtual {p0, v5}, Lg/gwa;->f(I)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, v5}, Lg/gwa;->g(I)Lg/gey;

    move-result-object p3

    new-instance v7, Lg/hbz;

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v7, v8}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x4

    new-array v8, v8, [Lg/gey;

    aput-object p2, v8, v1

    aput-object p3, v8, v0

    aput-object v7, v8, v2

    const/4 p2, 0x3

    aput-object p0, v8, p2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lg/fdk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object p2

    instance-of p3, p2, Lg/enl;

    if-nez p3, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    add-int/2addr v5, v6

    goto :goto_4

    :cond_8
    return-object p2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static al(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static am(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lg/dzm;->am(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    instance-of v0, p0, Lg/ai;

    if-eqz v0, :cond_2

    check-cast p0, Lg/ai;

    check-cast p0, Lg/brt;

    iget-object p0, p0, Lg/brt;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lg/dzm;->am(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lg/dzm;->am(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static an(Lg/gwa;Lg/dpa;Lg/dxk;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lg/gwa;
    .locals 7

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    invoke-virtual {p0}, Lg/gwa;->t()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lg/gwa;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v3

    new-instance v4, Lg/hbz;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lg/gey;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v3, 0x2

    aput-object p0, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lg/dxk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {v3}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v0, v2, v3}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static ao(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/dzm;->p:Lg/acq;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lg/acq;->br(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static ap(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/id;->y(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lg/dzm;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "getLayoutDirection"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lg/dzm;->m:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v0, Lg/dzm;->g:Z

    :cond_1
    sget-object v0, Lg/dzm;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    sput-object v1, Lg/dzm;->m:Ljava/lang/reflect/Method;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static aq(Ljava/lang/String;)Lg/cld;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "isDigit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "translate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "exist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "find"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const/16 p0, 0x10

    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance v0, Lg/fbc;

    invoke-direct {v0, p0}, Lg/fbc;-><init>(I)V

    return-object v0

    :pswitch_1
    new-instance p0, Lg/cuf;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lg/cuf;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lg/cuf;

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lg/cuf;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance v0, Lg/cfg;

    invoke-direct {v0, p0}, Lg/cfg;-><init>(I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff5b9 -> :sswitch_3
        0x5c76af7 -> :sswitch_2
        0x3ec0f14e -> :sswitch_1
        0x7a9b2623 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ar(Ljava/lang/String;)[Lg/jv;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_f

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x45

    const/16 v8, 0x65

    if-ge v4, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v9, v6, -0x41

    add-int/lit8 v10, v6, -0x5a

    mul-int v10, v10, v9

    if-lez v10, :cond_0

    add-int/lit8 v9, v6, -0x61

    add-int/lit8 v10, v6, -0x7a

    mul-int v10, v10, v9

    if-gtz v10, :cond_1

    :cond_0
    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x7a

    if-eq v6, v9, :cond_d

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x5a

    if-ne v6, v9, :cond_3

    goto/16 :goto_c

    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    new-array v6, v6, [F

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_3
    if-ge v10, v9, :cond_c

    move v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_9

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x20

    if-eq v3, v2, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v8, :cond_6

    packed-switch v3, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v14, :cond_4

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_7

    :cond_4
    :goto_5
    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    goto :goto_7

    :pswitch_1
    if-eq v12, v10, :cond_5

    if-nez v13, :cond_5

    goto :goto_5

    :cond_5
    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    :pswitch_2
    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    :goto_8
    if-ge v10, v12, :cond_a

    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v6, v11

    move v11, v2

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_a
    :goto_9
    if-eqz v16, :cond_b

    move v10, v12

    :goto_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    add-int/lit8 v10, v12, 0x1

    goto :goto_a

    :cond_c
    invoke-static {v6, v11}, Lg/dzm;->t([FI)[F

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_d

    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    invoke-static {v2, v5, v3}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    :goto_c
    new-array v3, v2, [F

    :goto_d
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-instance v2, Lg/jv;

    invoke-direct {v2, v5, v3}, Lg/jv;-><init>(C[F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v5, v4

    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    sub-int/2addr v4, v5

    const/4 v2, 0x1

    if-ne v4, v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v5, v2, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v3, v2, [F

    new-instance v4, Lg/jv;

    invoke-direct {v4, v0, v3}, Lg/jv;-><init>(C[F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    const/4 v2, 0x0

    :goto_e
    new-array v0, v2, [Lg/jv;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/jv;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static as(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lg/dzm;->ar(Ljava/lang/String;)[Lg/jv;

    move-result-object v1

    :try_start_0
    invoke-static {v1, v0}, Lg/jv;->d([Lg/jv;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final at(Landroid/content/Context;)Z
    .locals 15

    invoke-static {p0}, Lg/hca;->e(Landroid/content/Context;)Lg/gez;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lg/gez;

    invoke-direct {v0, v1}, Lg/gez;-><init>(Z)V

    :cond_0
    iget-object v0, v0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v2, :cond_18

    aget-object v6, v0, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/16 v8, 0x57

    const/16 v9, 0x30

    const/16 v10, 0x45

    const/16 v11, 0xd

    const/4 v12, 0x2

    if-ne v7, v12, :cond_d

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :try_start_0
    aget-char v7, v6, v1

    const/16 v13, 0x24

    aget-char v13, v6, v13

    if-eq v7, v13, :cond_3

    goto/16 :goto_3

    :cond_3
    aget-char v7, v6, v3

    const/16 v13, 0x18

    aget-char v13, v6, v13

    if-eq v7, v13, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    :cond_5
    if-ge v7, v11, :cond_6

    mul-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-char v13, v6, v13

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v12

    aget-char v14, v6, v14

    if-eq v13, v14, :cond_5

    goto/16 :goto_3

    :cond_6
    aget-char v5, v6, v5

    const/16 v7, 0x1c

    aget-char v7, v6, v7

    if-eq v5, v7, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v5, 0x2e

    aget-char v5, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eq v5, v10, :cond_8

    goto/16 :goto_3

    :cond_8
    :try_start_1
    aget-char v5, v6, v9

    if-lez v5, :cond_9

    goto/16 :goto_3

    :cond_9
    aget-char v5, v6, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v5, :cond_a

    goto/16 :goto_3

    :catch_0
    :cond_a
    array-length v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v5, :cond_b

    aget-char v9, v6, v7

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 v5, v8, -0x38

    const/16 v6, 0xadb

    if-gt v8, v6, :cond_17

    const/16 v6, 0xad7

    if-ge v8, v6, :cond_c

    goto :goto_3

    :cond_c
    const/16 v6, 0xaa3

    if-eq v5, v6, :cond_16

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    :try_start_2
    aget-char v6, v5, v1

    const/16 v7, 0x19

    aget-char v7, v5, v7

    if-eq v6, v7, :cond_f

    goto :goto_3

    :cond_f
    aget-char v6, v5, v3

    const/16 v7, 0xa

    aget-char v7, v5, v7

    if-eq v6, v7, :cond_10

    goto :goto_3

    :cond_10
    const/4 v6, 0x0

    :cond_11
    if-ge v6, v11, :cond_12

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v7, v12

    aget-char v7, v5, v7

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    aget-char v13, v5, v13

    if-eq v7, v13, :cond_11

    goto :goto_3

    :cond_12
    const/4 v6, 0x7

    aget-char v6, v5, v6

    const/16 v7, 0x2d

    aget-char v7, v5, v7

    if-eq v6, v7, :cond_13

    goto :goto_3

    :cond_13
    const/16 v6, 0x2b

    aget-char v6, v5, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v6, v10, :cond_14

    goto :goto_3

    :cond_14
    :try_start_3
    aget-char v6, v5, v9

    if-lez v6, :cond_15

    goto :goto_3

    :cond_15
    aget-char v5, v5, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lez v5, :cond_16

    goto :goto_3

    :catch_1
    :cond_16
    :goto_2
    return v3

    :catch_2
    :cond_17
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_18
    sget-object p0, Lg/hca;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x3b

    invoke-static {v5, v0}, Lg/buj;->be(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1
.end method

.method public static au(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static av(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/dzm;->p:Lg/acq;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lg/acq;->br(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static aw(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lg/djx;

    if-nez v0, :cond_2

    new-instance v0, Lg/brt;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {v0}, Lg/brt;->n()Lg/fq;

    move-result-object v1

    iput-object v1, v0, Lg/brt;->d:Lg/fq;

    invoke-virtual {v0, p0}, Lg/brt;->p(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lg/brt;->a:Ljava/lang/reflect/Method;

    if-nez p0, :cond_1

    :try_start_0
    const-class p0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lg/brt;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static ax(Lcom/google/android/gms/internal/ads/zzffo;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzr:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v0, p0, Lg/aeh;->zzs:Lg/acl;

    if-nez v0, :cond_2

    iget-object v1, p0, Lg/aeh;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object p0, p0, Lg/aeh;->zzx:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method public static ay([Lg/jv;[Lg/jv;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-char v3, v2, Lg/jv;->a:C

    aget-object v4, p1, v1

    iget-char v5, v4, Lg/jv;->a:C

    if-ne v3, v5, :cond_3

    iget-object v2, v2, Lg/jv;->b:[F

    array-length v2, v2

    iget-object v3, v4, Lg/jv;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static az(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "unspecified"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "requester_type_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "requester_type_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_2
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_6
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_7
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_8
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_9
    const-string p0, "8"

    return-object p0

    :pswitch_a
    const-string p0, "7"

    return-object p0

    :pswitch_b
    const-string p0, "6"

    return-object p0

    :pswitch_c
    const-string p0, "5"

    return-object p0

    :pswitch_d
    const-string p0, "4"

    return-object p0

    :pswitch_e
    const-string p0, "3"

    return-object p0

    :pswitch_f
    const-string p0, "2"

    return-object p0

    :pswitch_10
    const-string p0, "1"

    return-object p0

    :pswitch_11
    const-string p0, "0"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x67ecf68e
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static ba(Lg/fol;Lg/fol;Lg/fol;Lg/fol;)Z
    .locals 5

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    sget-object v3, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq p2, v3, :cond_1

    sget-object v4, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne p2, v4, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v0, :cond_3

    sget-object p2, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq p3, p2, :cond_3

    sget-object v0, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne p3, v0, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v1
.end method

.method public static bb(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lg/id;->o(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lg/dzm;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lg/dzm;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v2, Lg/dzm;->i:Z

    :cond_1
    sget-object v0, Lg/dzm;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    const/4 p0, 0x0

    sput-object p0, Lg/dzm;->f:Ljava/lang/reflect/Method;

    :cond_2
    return v1
.end method

.method public static bc()Z
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7e6

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public static final bd(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lg/dzm;->bc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/dzm;->at(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x8c5

    invoke-static {v1, p0}, Lg/buj;->be(II)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xcd9

    invoke-static {v1, p0}, Lg/buj;->be(II)I

    move-result p0

    add-int/lit16 p0, p0, 0x8c6

    return p0
.end method

.method public static s(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static t([FI)[F
    .locals 2

    if-ltz p1, :cond_1

    array-length v0, p0

    if-ltz v0, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p1, p1, [F

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static u([Lg/jv;)[Lg/jv;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Lg/jv;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Lg/jv;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lg/jv;-><init>(Lg/jv;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static v(JLjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Lg/aeh;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    iget-object p0, p0, Lg/aeh;->zzc:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "query_info_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "unspecified"

    return-object p0
.end method

.method public static final x(Lg/aas;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lg/hcp;

    invoke-interface {p0}, Lg/hcp;->e()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    return-object p0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    return-object p0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    return-object p0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    return-object p0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    return-object p0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    return-object p0

    :cond_9
    const-class p0, Ljava/lang/Double;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static y(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static varargs z(Lcom/google/android/gms/internal/ads/zzdsr;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzgO:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x17

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public be(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lg/cdl;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/cdl;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract c(I)V
.end method

.method public abstract d(Landroid/graphics/Typeface;)V
.end method

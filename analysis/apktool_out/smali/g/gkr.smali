.class public final Lg/gkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/btp;
.implements Lg/dbn;
.implements Lg/ccc;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lcom/google/android/gms/internal/ads/zzdto;
.implements Lcom/google/android/gms/internal/ads/zzdgv;
.implements Lcom/google/android/gms/internal/ads/zzfps;
.implements Lcom/google/android/gms/internal/ads/zzvb;
.implements Lcom/google/android/gms/internal/ads/zzrl;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    new-instance p1, Lg/bcp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x3

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gkr;->a:Ljava/lang/Object;

    new-instance v3, Lg/ftn;

    invoke-direct {v3, p1}, Lg/ftn;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lg/gkr;->e:Ljava/lang/Object;

    new-instance v0, Lg/fc;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object v0, v3, Lg/ftn;->h:Lg/egz;

    new-instance v1, Lg/byn;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v6, 0x7f040401

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lg/byn;-><init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;ZII)V

    iput-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v1, Lg/byn;->f:I

    new-instance p1, Lg/awq;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lg/awq;-><init>(ILjava/lang/Object;)V

    iput-object p1, v1, Lg/byn;->i:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkr;->e:Ljava/lang/Object;

    new-instance v0, Lg/sw;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lg/sw;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/gkr;->a:Ljava/lang/Object;

    new-instance v0, Lg/bnh;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lg/bnh;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    new-instance v0, Lg/bnh;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lg/bnh;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapb;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapg;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkr;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzbrf;Lg/bme;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/gkr;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztz;Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0xc

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzva;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzva;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v0

    iput-object v0, p0, Lg/gkr;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztq;->a:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzrk;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzrk;

    move-result-object p1

    iput-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/bxr;Lg/gud;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkr;->e:Ljava/lang/Object;

    iput-object p4, p0, Lg/gkr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/gkr;->d:I

    iput-object p1, p0, Lg/gkr;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkr;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/gkr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p5, p0, Lg/gkr;->d:I

    iput-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkr;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/gkr;->a:Ljava/lang/Object;

    iput-object p4, p0, Lg/gkr;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lg/gkr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    new-instance v0, Lg/bxc;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg/bxc;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    new-instance v0, Lg/aqv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/aqv;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-static {v0}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object p1

    iput-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    return-void
.end method

.method public static f([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatp;->zza()Lcom/google/android/gms/internal/ads/zzato;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzato;->zzc(I)Lcom/google/android/gms/internal/ads/zzato;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzato;->zza(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzatp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwy;->zzaV()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public aa(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->al()V

    iget-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lg/bnh;

    invoke-virtual {v1}, Lg/fze;->i()Lg/cap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lg/cap;->h()I

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lg/gac;->am()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Lg/fze;->h(Lg/cap;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Lg/gac;->am()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v1, v2}, Lg/fze;->h(Lg/cap;)V

    throw p1
.end method

.method public ab(I)Lg/dpb;
    .locals 3

    invoke-virtual {p0, p1}, Lg/gkr;->k(I)V

    iget-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->ap()I

    move-result v0

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown method handle type: "

    invoke-static {v0, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v0, Lg/ecx;->INVOKE_INTERFACE:Lg/ecx;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lg/ecx;->INVOKE_CONSTRUCTOR:Lg/ecx;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lg/ecx;->INVOKE_DIRECT:Lg/ecx;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lg/ecx;->INVOKE_INSTANCE:Lg/ecx;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lg/ecx;->INSTANCE_GET:Lg/ecx;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lg/ecx;->INSTANCE_PUT:Lg/ecx;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lg/ecx;->STATIC_GET:Lg/ecx;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lg/ecx;->STATIC_PUT:Lg/ecx;

    :goto_0
    invoke-virtual {v0}, Lg/ecx;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg/dpb;

    invoke-virtual {p0, p1}, Lg/gkr;->z(I)Lg/gps;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lg/dpb;-><init>(Lg/ecx;Ljava/lang/Object;I)V

    return-object v1

    :cond_0
    new-instance v1, Lg/dpb;

    invoke-virtual {p0, p1}, Lg/gkr;->j(I)Lg/efh;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lg/dpb;-><init>(Lg/ecx;Ljava/lang/Object;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method public ac()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v1

    iget v2, v0, Lg/gqc;->ab:I

    add-int/2addr v1, v2

    iput v1, v0, Lg/gqc;->ab:I

    iget-object v0, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v1, v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    aget-byte v5, v0, v4

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    aget-byte v5, v0, v4

    and-int/lit16 v7, v5, 0xff

    and-int/lit16 v8, v5, 0x80

    if-nez v8, :cond_0

    int-to-char v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_7

    aget-byte v9, v0, v8

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0xc0

    if-ne v7, v11, :cond_1

    if-ne v10, v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_2
    move v4, v8

    goto/16 :goto_3

    :cond_1
    and-int/lit16 v10, v5, 0xe0

    if-ne v10, v11, :cond_2

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v6, :cond_2

    and-int/lit8 v4, v5, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v5, v9, 0x3f

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v4, 0x2

    if-ge v8, v1, :cond_6

    aget-byte v10, v0, v8

    and-int/lit16 v11, v5, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_3

    and-int/lit16 v11, v9, 0xc0

    if-ne v11, v6, :cond_3

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v6, :cond_3

    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v9, 0x3f

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    and-int/lit8 v5, v10, 0x3f

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v4, 0x5

    if-ge v5, v1, :cond_5

    const/16 v8, 0xed

    if-ne v7, v8, :cond_5

    and-int/lit16 v7, v9, 0xf0

    const/16 v11, 0xa0

    if-ne v7, v11, :cond_5

    add-int/lit8 v7, v4, 0x3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v8, :cond_5

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v12, v4, 0xf0

    if-ne v12, v11, :cond_5

    aget-byte v13, v0, v5

    if-ne v7, v8, :cond_4

    if-ne v12, v11, :cond_4

    and-int/lit8 v7, v9, 0xf

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0x10000

    add-int/2addr v7, v8

    and-int/lit8 v8, v10, 0x3f

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v7, v4

    and-int/lit8 v4, v13, 0x3f

    add-int/2addr v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_3

    :cond_4
    new-instance v0, Lg/cyf;

    const-string v1, "Inconsistent byte array structure: invalid 6 bytes char"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lg/cyf;

    const-string v1, "Inconsistent byte array structure: unexpected char"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lg/cyf;

    const-string v1, "Inconsistent byte array structure: too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public ad(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapv;)V
    .locals 5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzapv;->zzb:Lcom/google/android/gms/internal/ads/zzaoy;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaoy;->zze:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzj()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Releasing %d waiting requests for cacheKey=%s."

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapp;

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapg;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapv;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lg/gkr;->ag(Lcom/google/android/gms/internal/ads/zzapp;)V

    return-void
.end method

.method public declared-synchronized ae()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "close"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xbb9

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrm;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfrm;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public af(Lg/gtg;)Lg/dcz;
    .locals 5

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dcz;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lg/dcz;->b:Lg/gtg;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/dcz;

    iget-object v2, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lg/dcz;-><init>(Landroid/content/Context;Lg/gtg;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public declared-synchronized ag(Lcom/google/android/gms/internal/ads/zzapp;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object p1, v4, v2

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaqb;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapp;

    iget-object v4, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzapp;->s(Lg/gkr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Couldn\'t add request to queue. %s"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapb;->zzb()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized g()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrm;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfrm;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lg/gkr;->k(I)V

    iget-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Lg/x;)V
    .locals 7

    iget-object v0, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/efc;

    iget-object v2, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "a"

    iput-object v2, v1, Lg/efc;->e:Ljava/lang/String;

    iput-object v0, v1, Lg/efc;->b:Lg/fpd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lg/fdy;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lg/fdy;-><init>(IZ)V

    iput-object p1, v3, Lg/fdy;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lg/x;->j()Lg/dzn;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lg/x;->j()Lg/dzn;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/x;->j()Lg/dzn;

    move-result-object p1

    iget-object p1, p1, Lg/dzn;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    iput-object p1, v3, Lg/fdy;->a:Ljava/lang/Object;

    :cond_1
    iget-object p1, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lg/x;

    if-eqz p1, :cond_d

    new-instance p1, Lg/aab;

    invoke-direct {p1, v3}, Lg/aab;-><init>(Lg/fdy;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/aab;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ProductDetailsParams cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v3, Lg/dxb;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aab;

    iget-object v2, v2, Lg/aab;->a:Lg/x;

    iget-object v2, v2, Lg/x;->g:Lorg/json/JSONObject;

    const-string v6, "packageName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v3, Lg/dxb;->b:Z

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    new-instance v2, Lg/bmr;

    const/16 v4, 0x19

    invoke-direct {v2, v4}, Lg/bmr;-><init>(I)V

    iput-object v2, v3, Lg/dxb;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lg/dxb;->a:Ljava/lang/Object;

    invoke-static {p1}, Lg/fkz;->n(Ljava/util/ArrayList;)Lg/fkz;

    move-result-object p1

    iput-object p1, v3, Lg/dxb;->d:Ljava/lang/Object;

    iget-object p1, v1, Lg/efc;->d:Lg/tq;

    iget-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lg/elf;

    invoke-virtual {p1, v1, v3}, Lg/tq;->bf(Lg/elf;Lg/dxb;)Lg/ejd;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v1, p1, Lg/ejd;->a:I

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    return-void

    :cond_a
    :goto_5
    if-nez p1, :cond_b

    const/16 p1, 0x7d0

    goto :goto_6

    :cond_b
    iget p1, p1, Lg/ejd;->a:I

    invoke-static {p1}, Lg/cdy;->j(I)I

    move-result p1

    :goto_6
    invoke-virtual {v0, p1}, Lg/fpd;->o(I)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Details of the products must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ProductDetails is required for constructing ProductDetailsParams."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(I)Lg/efh;
    .locals 6

    invoke-virtual {p0, p1}, Lg/gkr;->k(I)V

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v2

    invoke-virtual {p0, v2}, Lg/gkr;->k(I)V

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v2

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    new-instance v3, Lg/efh;

    invoke-direct {v3}, Lg/dnp;-><init>()V

    iget-object v4, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v4, Lg/bpt;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p1, v5}, Lg/efh;->k(Lg/bpt;IZ)V

    invoke-virtual {p0, v1}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lg/efh;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lg/efh;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lg/efh;->i:Ljava/lang/String;

    return-object v3
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Lg/gqc;

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/adr;

    iget-object v1, v1, Lg/adr;->b:[I

    aget p1, v1, p1

    iput p1, v0, Lg/gqc;->ab:I

    return-void
.end method

.method public l(Lcom/google/android/gms/internal/ads/zzur;)Z
    .locals 4

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zztz;

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zztz;->r(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztz;->s(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzva;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzva;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzva;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzva;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzva;

    move-result-object v1

    iput-object v1, p0, Lg/gkr;->a:Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrk;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzrk;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrk;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztq;->a:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzrk;->zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzrk;

    move-result-object p1

    iput-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public m(Lg/gtg;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bcp;

    invoke-virtual {v1, p2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Lg/bvc;

    iget-object v3, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lg/ftn;

    invoke-direct {v2, v3, v4}, Lg/bvc;-><init>(Landroid/content/Context;Lg/ftn;)V

    invoke-virtual {v1, p2, v2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized n(Ljava/util/Map;)[B
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "xss"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lg/gkr;->e:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object p1, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v3, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0x7d7

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lg/efc;

    iget-object v1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v1, Lg/fpd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Lg/fpd;->o(I)V

    return-void
.end method

.method public p(Lg/gtg;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bcp;

    invoke-virtual {v1, p2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Lg/bvc;

    iget-object v3, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lg/ftn;

    invoke-direct {v2, v3, v4}, Lg/bvc;-><init>(Landroid/content/Context;Lg/ftn;)V

    invoke-virtual {v1, p2, v2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public q(Lg/gtg;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    new-instance v1, Lg/hcv;

    iget-object v2, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    check-cast p2, Lg/buc;

    invoke-direct {v1, v2, p2}, Lg/hcv;-><init>(Landroid/content/Context;Lg/buc;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public r(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lg/gkr;->k(I)V

    invoke-virtual {p0}, Lg/gkr;->ac()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    invoke-virtual {v0, p1}, Lg/aqv;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized t(Lcom/google/android/gms/internal/ads/zzapp;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v4, "waiting-for-response"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    if-eqz p1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzapp;->s(Lg/gkr;)V

    sget-boolean p1, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v0, "new request, sending to network %s"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public u(Lg/gtg;)V
    .locals 1

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lg/gkr;->af(Lg/gtg;)Lg/dcz;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public declared-synchronized v()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lcs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrm;

    const/16 v2, 0x7d6

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfrm;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;
    .locals 10

    iget-object p2, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zztz;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzun;->zzc:J

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {p2, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zztz;->o(JLjava/lang/Object;)V

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzun;->zzd:J

    invoke-virtual {p2, v8, v9, v0}, Lcom/google/android/gms/internal/ads/zztz;->o(JLjava/lang/Object;)V

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzun;->zzc:J

    cmp-long p2, v6, v0

    if-nez p2, :cond_0

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzun;->zzd:J

    cmp-long p2, v8, v0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzun;->zza:I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzun;->zzb:Lcom/google/android/gms/internal/ads/zzad;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzun;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public x(I)Lg/ghr;
    .locals 8

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Lg/gqc;

    invoke-virtual {p0, p1}, Lg/gkr;->y(I)Lg/fha;

    move-result-object v1

    sget-object v2, Lg/gls;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p1, Lg/cyf;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t encode constant "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as encoded value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_METHOD_HANDLE:Lg/dnd;

    invoke-virtual {p0, p1}, Lg/gkr;->ab(I)Lg/dpb;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_METHOD_TYPE:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    invoke-virtual {p0, v0}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lg/dnp;

    invoke-direct {v2}, Lg/dnp;-><init>()V

    new-instance v3, Lg/erd;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lg/erd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Lg/erd;->c(Lg/dnp;)V

    invoke-direct {p1, v1, v2}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_2
    new-instance v0, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_TYPE:Lg/dnd;

    invoke-virtual {p0, p1}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object v0

    :pswitch_3
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_DOUBLE:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->ax()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_LONG:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lg/gqc;->bc()I

    move-result v0

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_FLOAT:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->bc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_INT:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lg/ghr;

    sget-object v1, Lg/dnd;->ENCODED_STRING:Lg/dnd;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    invoke-virtual {p0, v0}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lg/ghr;

    sget-object v0, Lg/dnd;->ENCODED_STRING:Lg/dnd;

    invoke-virtual {p0}, Lg/gkr;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
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
.end method

.method public y(I)Lg/fha;
    .locals 2

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v0, Lg/gqc;

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/adr;

    iget-object v1, v1, Lg/adr;->b:[I

    aget p1, v1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result p1

    sget-object v0, Lg/fha;->a:[Lg/fha;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/cyf;

    const-string v1, "Unknown constant pool tag: "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(I)Lg/gps;
    .locals 3

    invoke-virtual {p0, p1}, Lg/gkr;->k(I)V

    iget-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v0

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {p0, v1}, Lg/gkr;->k(I)V

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result p1

    new-instance v2, Lg/gps;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lg/gps;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lg/gps;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lg/gps;->g:Ljava/lang/String;

    return-object v2
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzdty;
    .locals 8

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gud;

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lg/gud;->c:Landroid/content/Context;

    iget-object v0, v0, Lg/gud;->e:Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdts;->zzc(Lcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzdtr;

    move-result-object v5

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg/bxr;

    iget-object v0, p0, Lg/gkr;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdtz;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtr;Lcom/google/android/gms/internal/ads/zzchk;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdty;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfro;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfro;->zza()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "c"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cs"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lg/gkr;->n(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {p1}, Lg/gkr;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 5

    iget v0, p0, Lg/gkr;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfH:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/agd;->h()Z

    :cond_0
    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqh;->zzd()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcsy;->zza(Ljava/lang/Throwable;)Lg/abz;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbf;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqh;->zzf()Lcom/google/android/gms/internal/ads/zzcwo;

    move-result-object v1

    iget-object v2, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcwo;->zzdB(Lg/abz;)V

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    iget v1, v1, Lg/abz;->zza:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfgl;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbf;->p()V

    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzcze;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbf;->m:Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzc()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcze;->zzd(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zzc(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v3, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfbf;->k:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v4, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfka;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbf;->d:Lg/abz;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzfka;->zza(Lg/abz;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    iget-object p1, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to parse gmsg params for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwz;)V
    .locals 2

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrf;

    :try_start_0
    iget-object p3, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p3, Lg/bme;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_1

    if-eq p3, v1, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_4

    new-instance p3, Lg/bpp;

    invoke-direct {p3, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbrf;->zzr(Lg/bjq;)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p3, Lg/bpp;

    invoke-direct {p3, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbrf;->zzt(Lg/bjq;)Z

    move-result p1

    goto :goto_0

    :cond_1
    new-instance p3, Lg/bpp;

    invoke-direct {p3, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbrf;->zzs(Lg/bjq;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxe;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzbC:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfet;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfet;->zzY:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgu;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdgu;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public zzaf(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/gkr;->l(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {p0, p3, p2}, Lg/gkr;->w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzva;->zzc(Lcom/google/android/gms/internal/ads/zzun;)V

    :cond_0
    return-void
.end method

.method public zzag(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/gkr;->l(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {p0, p4, p2}, Lg/gkr;->w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzva;->zzd(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    :cond_0
    return-void
.end method

.method public zzah(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/gkr;->l(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {p0, p4, p2}, Lg/gkr;->w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzva;->zze(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    :cond_0
    return-void
.end method

.method public zzai(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/gkr;->l(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {p0, p4, p2}, Lg/gkr;->w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzva;->zzf(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public zzaj(ILcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/gkr;->l(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {p0, p4, p2}, Lg/gkr;->w(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzun;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzva;->zzg(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    :cond_0
    return-void
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzduc;
    .locals 8

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gud;

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lg/gud;->c:Landroid/content/Context;

    iget-object v0, v0, Lg/gud;->e:Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdts;->zzc(Lcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzdtr;

    move-result-object v5

    iget-object v0, p0, Lg/gkr;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg/bxr;

    iget-object v0, p0, Lg/gkr;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdud;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtr;Lcom/google/android/gms/internal/ads/zzchk;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzduc;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfro;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfro;->zzc()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "v"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lg/gkr;->n(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {p1}, Lg/gkr;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lg/gkr;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcpd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfbf;->j:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbf;->zzr()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzc:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfkl;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzq()Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfkl;->zzg(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zza(Lcom/google/android/gms/internal/ads/zzfka;)Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzh()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbf;->k:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v3, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzq()Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfka;->zzb(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzm()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfka;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfs;

    sget v3, Lcom/google/android/gms/internal/ads/zzcfs;->zzb:I

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfs;->al(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfro;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfro;->zzb()Ljava/util/Map;

    move-result-object p2

    const-string v0, "f"

    const-string v1, "q"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lg/gkr;->n(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {p1}, Lg/gkr;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "t"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aid"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "evt"

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/gkr;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "he"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v2, p0, Lg/gkr;->e:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p2, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 p2, 0xbbb

    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzd(IJ)Lg/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfrm;

    const/16 v0, 0x7d5

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfrm;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

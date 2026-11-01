.class public synthetic Lg/gqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cx;
.implements Lg/yt;
.implements Lg/atc;
.implements Lg/dle;
.implements Lg/btp;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lg/fbf;
.implements Lg/gpw;


# instance fields
.field public final synthetic aa:I

.field public ab:I

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lg/gqc;->aa:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3fff

    iput p1, p0, Lg/gqc;->ab:I

    const/16 p1, 0x4000

    new-array p1, p1, [Lg/dsg;

    iput-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    const/4 p1, 0x4

    const v0, 0x1215ef

    const-string v1, "$ref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lg/gqc;->az(Ljava/lang/String;III)Ljava/lang/String;

    const/4 p1, 0x5

    const v0, 0x3bc6f7a

    const-string v1, "@type"

    invoke-virtual {p0, v1, v2, p1, v0}, Lg/gqc;->az(Ljava/lang/String;III)Ljava/lang/String;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3ff

    iput p1, p0, Lg/gqc;->ab:I

    const/16 p1, 0x400

    new-array p1, p1, [Lg/fpd;

    iput-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/gqc;->aa:I

    iput-object p2, p0, Lg/gqc;->z:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/gqc;->aa:I

    iput p1, p0, Lg/gqc;->ab:I

    iput-object p2, p0, Lg/gqc;->z:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/gqc;->aa:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/fpl;->k(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lg/gqc;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lg/gqc;->aa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/die;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lg/fpl;->k(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lg/die;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    iput p2, p0, Lg/gqc;->ab:I

    return-void
.end method

.method public constructor <init>(Lg/nk;I)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lg/gqc;->aa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    iput p2, p0, Lg/gqc;->ab:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lg/gqc;->aa:I

    iput-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    iput p2, p0, Lg/gqc;->ab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lg/gqc;->aa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput v0, p0, Lg/gqc;->ab:I

    return-void
.end method

.method public static ac(I)I
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    new-instance v0, Lg/gck;

    const-string v1, "Unexpected visibility flag: "

    invoke-static {p0, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static ad()Lg/gqc;
    .locals 2

    new-instance v0, Lg/gqc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/gqc;-><init>(I)V

    sget-object v1, Lg/bld;->DEFAULT:Lg/bld;

    iput-object v1, v0, Lg/gqc;->z:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public _bt(Lg/ggu;)V
    .locals 11

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/cqf;

    iget-object v1, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->ar()I

    move-result v2

    iget v3, p0, Lg/gqc;->ab:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v5}, Lg/gqc;->at(I)V

    :cond_0
    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iput v2, v1, Lg/fce;->w:I

    sget-object v2, Lg/cqf;->INVOKE_CUSTOM:Lg/cqf;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lg/fce;->j()Lg/dkb;

    move-result-object v0

    iput-object v0, v1, Lg/fce;->q:Lg/gqi;

    iget-object v0, v0, Lg/dkb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ghr;

    iget-object v0, v0, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v0, Lg/fw;

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lg/fce;->d()Lg/ful;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lg/efh;

    invoke-virtual {v6}, Lg/efh;->m()V

    iput-object v2, v1, Lg/fce;->q:Lg/gqi;

    sget-object v6, Lg/cqf;->INVOKE_STATIC:Lg/cqf;

    if-eq v0, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object v10, v2

    move v2, v0

    move-object v0, v10

    :goto_1
    invoke-interface {v0}, Lg/fw;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v2, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v6}, Lg/fce;->ad(I)V

    iget-object v6, v1, Lg/fce;->x:[I

    if-eqz v2, :cond_4

    aput v4, v6, v3

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Lg/fw;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x4a

    if-eq v8, v9, :cond_6

    const/16 v9, 0x44

    if-ne v8, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x2

    :goto_5
    add-int/lit8 v9, v2, 0x1

    aput v4, v6, v2

    if-ne v8, v5, :cond_7

    add-int/lit8 v2, v2, 0x2

    aput v3, v6, v9

    goto :goto_3

    :cond_7
    move v2, v9

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v2}, Lg/fce;->ad(I)V

    sub-int/2addr v2, v4

    :goto_6
    if-ltz v2, :cond_a

    aget v3, v6, v2

    if-ne v3, v4, :cond_9

    invoke-virtual {p1, v2}, Lg/ggu;->n(I)V

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_a
    invoke-interface {v0}, Lg/fw;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object p1, p1, Lg/ggu;->a:Lg/cpd;

    const-string v2, "J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v0, Lg/cqz;->WIDE:Lg/cqz;

    :goto_8
    invoke-virtual {p1, v0}, Lg/cpd;->d(Lg/cqz;)I

    move-result p1

    iput p1, v1, Lg/fce;->z:I

    return-void

    :cond_d
    const/4 p1, -0x1

    iput p1, v1, Lg/fce;->z:I

    return-void
.end method

.method public synthetic _ct(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method public _cu(Lg/esv;)V
    .locals 11

    new-instance v0, Lg/akh;

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/dsg;

    invoke-virtual {v1}, Lg/dsg;->u()Lg/dsg;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lg/akh;-><init>(Lg/gqc;Lg/dsg;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lg/dsg;->j(I)V

    iget-object v2, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v6

    sget-object v7, Lg/fbm;->a:[Lg/fbm;

    and-int/lit16 v7, v6, 0xff

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    sget-object v7, Lg/fbm;->b:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fbm;

    goto :goto_1

    :cond_0
    sget-object v8, Lg/fbm;->a:[Lg/fbm;

    aget-object v7, v8, v7

    :goto_1
    iput v5, v0, Lg/akh;->o:I

    iput-object v7, v0, Lg/akh;->r:Lg/fbm;

    iput v6, v0, Lg/akh;->v:I

    const/4 v6, 0x0

    iput-object v6, v0, Lg/akh;->q:Lg/gqi;

    iput-boolean v4, v0, Lg/akh;->t:Z

    const/4 v6, 0x1

    if-eqz v7, :cond_1

    iget-object v7, v7, Lg/fbm;->f:Lg/fcn;

    iget v8, v7, Lg/fcn;->ae:I

    iput v8, v0, Lg/akh;->z:I

    iget v7, v7, Lg/fcn;->ad:I

    iput v7, v0, Lg/akh;->ab:I

    goto :goto_2

    :cond_1
    iput v4, v0, Lg/akh;->z:I

    iput v6, v0, Lg/akh;->ab:I

    :goto_2
    invoke-virtual {p1, v0}, Lg/esv;->accept(Ljava/lang/Object;)V

    iget-boolean v7, v0, Lg/akh;->t:Z

    if-nez v7, :cond_4

    iget-object v7, v0, Lg/akh;->r:Lg/fbm;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lg/fbm;->f:Lg/fcn;

    iget-object v8, v0, Lg/akh;->u:Lg/gqc;

    iget-object v8, v8, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v8, Lg/dsg;

    iget v9, v7, Lg/fcn;->af:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    iget v7, v7, Lg/fcn;->ad:I

    if-ne v7, v6, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v8, v7}, Lg/dsg;->x(I)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v8}, Lg/dsg;->q()I

    move-result v7

    iget-object v9, v8, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    if-ne v7, v6, :cond_3

    rem-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v9

    invoke-virtual {v8, v10}, Lg/dsg;->x(I)V

    goto :goto_3

    :cond_3
    mul-int v10, v9, v7

    invoke-virtual {v8, v10}, Lg/dsg;->x(I)V

    :goto_3
    mul-int v9, v9, v7

    add-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    iput v9, v0, Lg/akh;->ab:I

    goto :goto_4

    :pswitch_2
    invoke-virtual {v8}, Lg/dsg;->q()I

    move-result v6

    mul-int/lit8 v7, v6, 0x8

    invoke-virtual {v8, v7}, Lg/dsg;->x(I)V

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x2

    iput v6, v0, Lg/akh;->ab:I

    goto :goto_4

    :pswitch_3
    invoke-virtual {v8}, Lg/dsg;->q()I

    move-result v6

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v8, v7}, Lg/dsg;->x(I)V

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    iput v6, v0, Lg/akh;->ab:I

    :cond_4
    :goto_4
    iget v6, v0, Lg/akh;->ab:I

    add-int/2addr v5, v6

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lg/dkp;)V
    .locals 1

    iget p1, p0, Lg/gqc;->ab:I

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/haz;

    iget v0, v0, Lg/haz;->m:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/haz;

    invoke-virtual {p1}, Lg/haz;->aa()V

    :cond_0
    return-void
.end method

.method public ae()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public af()I
    .locals 6

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    add-int/lit8 v4, v0, 0x2

    aget-byte v2, v1, v2

    add-int/lit8 v5, v0, 0x3

    aget-byte v4, v1, v4

    add-int/lit8 v0, v0, 0x4

    aget-byte v1, v1, v5

    iput v0, p0, Lg/gqc;->ab:I

    shl-int/lit8 v0, v3, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public ag()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ah(I)Lg/gqc;
    .locals 3

    iget v0, p0, Lg/gqc;->ab:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    new-instance v1, Lg/gqc;

    not-int p1, p1

    and-int/2addr p1, v0

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/frh;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public ai()I
    .locals 4

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x2

    aget-byte v1, v1, v2

    iput v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public aj(Z)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/gqc;->ab:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/gqc;->an()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lg/gqc;->al()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "private "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lg/gqc;->ao()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "protected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lg/gqc;->be()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lg/gqc;->ae()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_5

    const-string v2, "abstract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_6

    const-string v2, "native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v2, Lg/cuy;->a:[I

    iget-object v3, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/frh;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    goto :goto_0

    :cond_7
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    const-string v2, "strict "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p1, :cond_e

    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    const-string v2, "/* data */ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    const-string v0, "/* module-info */ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_b

    const-string v2, "volatile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const-string v0, "transient "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    const v2, 0x20020

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    const-string v2, "synchronized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    if-eqz p1, :cond_e

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    const-string v0, "/* bridge */ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_0
    invoke-virtual {p0}, Lg/gqc;->bb()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    const-string p1, "/* synthetic */ "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ak()Lg/fpl;
    .locals 1

    invoke-virtual {p0}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public al()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public am(I)Lg/gqc;
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v1, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lg/die;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public an()Z
    .locals 2

    iget v0, p0, Lg/gqc;->ab:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ao()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ap()I
    .locals 2

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v1, 0xff

    return v0
.end method

.method public aq(Lg/ewi;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/bpy;

    iget v1, p0, Lg/gqc;->ab:I

    :try_start_0
    iget-object v2, v0, Lg/bpy;->bl:Lg/exa;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v0, Lg/bpy;->bl:Lg/exa;

    iget-object v4, v0, Lg/bpy;->bj:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    const/4 v5, 0x6

    if-eq v1, v5, :cond_0

    const-string v1, "QUERY_PRODUCT_DETAILS_ASYNC"

    goto :goto_0

    :cond_0
    const-string v1, "START_CONNECTION"

    goto :goto_0

    :cond_1
    const-string v1, "IS_FEATURE_SUPPORTED"

    goto :goto_0

    :cond_2
    const-string v1, "CONSUME_ASYNC"

    goto :goto_0

    :cond_3
    const-string v1, "ACKNOWLEDGE_PURCHASE"

    goto :goto_0

    :cond_4
    const-string v1, "LAUNCH_BILLING_FLOW"

    :goto_0
    new-instance v5, Lg/kw;

    invoke-direct {v5, p1}, Lg/kw;-><init>(Lg/ewi;)V

    check-cast v2, Lg/gld;

    invoke-virtual {v2}, Lg/ob;->_cc()Landroid/os/Parcel;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v1, Lg/kz;->a:I

    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v2, Lg/ob;->_cb:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v6, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_5
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    sget-object v1, Lg/hm;->zzaQ:Lg/hm;

    const/16 v2, 0x1c

    sget-object v3, Lg/edc;->r:Lg/ejd;

    invoke-virtual {v0, v1, v2, v3}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    sget v0, Lg/gbs;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/ewi;->e(Ljava/lang/Object;)V

    :goto_1
    const-string p1, "billingOverrideService.getBillingOverride"

    return-object p1
.end method

.method public ar()I
    .locals 4

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x2

    aget-byte v1, v1, v2

    iput v0, p0, Lg/gqc;->ab:I

    shl-int/lit8 v0, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public as(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lg/gqc;->ab:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [Lg/fpd;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lg/fpd;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public at(I)V
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    add-int/2addr v0, p1

    iput v0, p0, Lg/gqc;->ab:I

    return-void
.end method

.method public au()Z
    .locals 2

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public av(Lg/gkr;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lg/gqc;->ai()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p1, v3}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public aw(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v1, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public ax()J
    .locals 6

    invoke-virtual {p0}, Lg/gqc;->bc()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lg/gqc;->bc()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v1, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lg/die;->x:Ljava/lang/CharSequence;

    iput-object p2, v0, Lg/die;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public az(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/gqc;->ab:I

    and-int/2addr v0, p4

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [Lg/dsg;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, v2, Lg/dsg;->d:I

    if-ne p4, v1, :cond_0

    iget-object p4, v2, Lg/dsg;->b:Ljava/lang/Object;

    check-cast p4, [C

    array-length p4, p4

    if-ne p3, p4, :cond_0

    invoke-virtual {p1, p2, v0, v3, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_0

    return-object v0

    :cond_0
    new-array p4, p3, [C

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3, p4, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p3, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v2, p3, [C

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/dsg;

    invoke-direct {p2, p1, p4}, Lg/dsg;-><init>(Ljava/lang/String;I)V

    aput-object p2, v1, v0

    return-object p1
.end method

.method public b(Landroid/util/JsonWriter;)V
    .locals 5

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "params"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "firstline"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p1, v1}, Lg/dzz;->f(Landroid/util/JsonWriter;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public ba()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bb()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bc()I
    .locals 6

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [B

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v1, v0

    add-int/lit8 v4, v0, 0x2

    aget-byte v2, v1, v2

    add-int/lit8 v5, v0, 0x3

    aget-byte v4, v1, v4

    add-int/lit8 v0, v0, 0x4

    aget-byte v1, v1, v5

    iput v0, p0, Lg/gqc;->ab:I

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public bd(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 9

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lg/gqc;->ab:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, [Lg/fpd;

    aget-object v2, v1, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    iput-object p2, v2, Lg/fpd;->c:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, Lg/fpd;

    goto :goto_0

    :cond_1
    new-instance v3, Lg/fpd;

    aget-object v6, v1, v0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    aput-object v3, v1, v0

    return-void
.end method

.method public be()Z
    .locals 1

    iget v0, p0, Lg/gqc;->ab:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bf()Z
    .locals 2

    iget v0, p0, Lg/gqc;->ab:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bg()Lg/bnd;
    .locals 3

    new-instance v0, Lg/bnd;

    iget v1, p0, Lg/gqc;->ab:I

    iget-object v2, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/bld;

    invoke-direct {v0, v1, v2}, Lg/bnd;-><init>(ILg/bld;)V

    return-object v0
.end method

.method public bh(Lcom/google/android/gms/internal/ads/zzacs;)J
    .locals 8

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    const/16 v4, 0x80

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    and-int v7, v1, v4

    if-nez v7, :cond_0

    shr-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    not-int v4, v4

    and-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-virtual {p1, v4, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    :goto_1
    if-ge v2, v5, :cond_1

    shl-int/lit8 p1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lg/gqc;->ab:I

    add-int/2addr p1, v6

    iput p1, p0, Lg/gqc;->ab:I

    int-to-long v0, v1

    return-wide v0

    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Lg/gqc;->ab:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bz(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/dsg;

    iget-object v2, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lg/dsg;->j(I)V

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lg/gqc;->l()I

    move-result v4

    rem-int/lit8 v8, v4, 0x2

    const/4 v9, 0x2

    if-ne v8, v7, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v8

    :goto_1
    if-ne v4, v6, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    :cond_2
    invoke-virtual {v1, v3}, Lg/dsg;->j(I)V

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v3

    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v4

    invoke-virtual {v1}, Lg/dsg;->u()Lg/dsg;

    move-result-object v9

    invoke-virtual {v1, v8}, Lg/dsg;->j(I)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-static {v1}, Lg/byh;->u(Lg/dsg;)I

    move-result v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v10}, Ljava/util/HashMap;-><init>(I)V

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_5

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v1}, Lg/dsg;->r()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    new-array v5, v15, [I

    new-array v6, v15, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v16, 0x1

    :goto_3
    if-ge v7, v15, :cond_3

    invoke-static {v1}, Lg/byh;->u(Lg/dsg;)I

    move-result v0

    invoke-virtual {v9, v0}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Lg/byh;->u(Lg/dsg;)I

    move-result v0

    aput v0, v5, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_3
    if-gtz v14, :cond_4

    invoke-static {v1}, Lg/byh;->u(Lg/dsg;)I

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lg/avx;

    invoke-direct {v13, v0, v6, v5}, Lg/avx;-><init>(I[Ljava/lang/String;[I)V

    invoke-virtual {v11, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/16 v16, 0x1

    invoke-virtual {v1, v4}, Lg/dsg;->j(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v6

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/avx;

    if-eqz v8, :cond_6

    new-instance v7, Lg/dwc;

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v7, v4, v6, v8}, Lg/dwc;-><init>(IILg/avx;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Lg/beo;

    const-string v1, "Catch handler not found by byte offset: "

    invoke-static {v7, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/dsg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/dsg;->j(I)V

    invoke-virtual {v0}, Lg/dsg;->q()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public i(Lg/x;)V
    .locals 1

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/dmr;->k(Lg/dmr;Z)V

    return-void
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/dsg;

    iget v0, v0, Lg/dsg;->d:I

    return v0
.end method

.method public k()Lg/atc;
    .locals 3

    new-instance v0, Lg/gqc;

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/dsg;

    invoke-virtual {v1}, Lg/dsg;->u()Lg/dsg;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lg/gqc;-><init>(ILjava/lang/Object;)V

    iget v1, p0, Lg/gqc;->ab:I

    iput v1, v0, Lg/gqc;->ab:I

    return-object v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/dsg;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lg/dsg;->j(I)V

    iget-object v0, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public m()Lg/gtb;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/dsg;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lg/dsg;->j(I)V

    iget-object v3, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    if-ltz v4, :cond_b

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-gt v4, v6, :cond_b

    invoke-virtual {v0}, Lg/gqc;->f()I

    move-result v6

    new-instance v7, Lg/ke;

    invoke-virtual {v0}, Lg/gqc;->l()I

    move-result v8

    invoke-direct {v7, v1, v6, v8}, Lg/ke;-><init>(Lg/dsg;II)V

    iget v8, v7, Lg/ke;->g:I

    iget v9, v0, Lg/gqc;->ab:I

    iget-object v10, v1, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v10, Lg/eyc;

    iget-object v10, v10, Lg/eyc;->a:Lg/asu;

    iget v11, v10, Lg/asu;->i:I

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v11

    const/4 v11, 0x2

    add-int/2addr v9, v11

    invoke-virtual {v1, v9}, Lg/dsg;->m(I)V

    invoke-virtual {v1}, Lg/dsg;->q()I

    move-result v9

    iget v10, v10, Lg/asu;->e:I

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    invoke-virtual {v1, v9}, Lg/dsg;->m(I)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Lg/dsg;->w()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v7, Lg/ke;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v10, v2, [I

    sub-int/2addr v2, v9

    :goto_1
    if-ltz v2, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x44

    if-eq v12, v13, :cond_3

    const/16 v13, 0x4a

    if-eq v12, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x2

    :goto_2
    sub-int/2addr v6, v12

    aput v6, v10, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    iput-object v10, v7, Lg/ke;->f:Ljava/lang/Object;

    iput-object v1, v7, Lg/ke;->a:Ljava/lang/Object;

    :goto_3
    iget-object v1, v7, Lg/ke;->c:Ljava/lang/Object;

    check-cast v1, Lg/dsg;

    iget-object v2, v7, Lg/ke;->e:Ljava/io/Serializable;

    check-cast v2, [Lg/baw;

    iget-object v6, v7, Lg/ke;->b:Ljava/lang/Object;

    check-cast v6, Lg/dsg;

    invoke-virtual {v6, v4}, Lg/dsg;->m(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v7, Lg/ke;->h:Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lg/ke;->i:Ljava/lang/Object;

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v4

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v10

    iget-object v11, v7, Lg/ke;->a:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v10, :cond_6

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v14

    sub-int/2addr v14, v9

    invoke-virtual {v1, v14}, Lg/dsg;->z(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    if-ge v12, v11, :cond_5

    new-instance v13, Lg/baw;

    iget-object v15, v7, Lg/ke;->f:Ljava/lang/Object;

    check-cast v15, [I

    aget v15, v15, v12

    const/16 v16, 0x1

    iget-object v9, v7, Lg/ke;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v13, v15, v14, v9, v5}, Lg/baw;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13, v3}, Lg/ke;->p(Lg/baw;I)V

    const/4 v9, -0x1

    iput v9, v13, Lg/baw;->d:I

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x1

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x1

    const/4 v5, 0x0

    :goto_6
    :pswitch_0
    invoke-virtual {v6}, Lg/dsg;->aa()I

    move-result v9

    if-nez v9, :cond_9

    if-eqz v13, :cond_8

    array-length v1, v2

    :goto_7
    if-ge v3, v1, :cond_8

    aget-object v4, v2, v3

    if-eqz v4, :cond_7

    iget-boolean v5, v4, Lg/baw;->b:Z

    if-nez v5, :cond_7

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v7, v4, v5}, Lg/ke;->j(Lg/baw;I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    new-instance v1, Lg/gtb;

    iget-object v2, v7, Lg/ke;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v7, Lg/ke;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v3}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v1

    :cond_9
    packed-switch v9, :pswitch_data_0

    add-int/lit8 v9, v9, -0xa

    div-int/lit8 v10, v9, 0xf

    add-int/2addr v10, v5

    add-int/lit8 v5, v8, -0x1

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    rem-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, -0x4

    add-int/2addr v9, v4

    iget-object v4, v7, Lg/ke;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move v4, v9

    goto :goto_6

    :pswitch_1
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Lg/dsg;->z(I)Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    aget-object v10, v2, v9

    if-eqz v10, :cond_a

    invoke-virtual {v7, v10, v5}, Lg/ke;->j(Lg/baw;I)V

    new-instance v11, Lg/baw;

    iget-object v12, v10, Lg/baw;->e:Ljava/lang/String;

    iget-object v13, v10, Lg/baw;->f:Ljava/lang/String;

    iget-object v10, v10, Lg/baw;->a:Ljava/lang/String;

    invoke-direct {v11, v9, v12, v13, v10}, Lg/baw;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11, v5}, Lg/ke;->p(Lg/baw;I)V

    :cond_a
    :goto_9
    const/4 v13, 0x1

    goto :goto_6

    :pswitch_3
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    aget-object v9, v2, v9

    if-eqz v9, :cond_a

    invoke-virtual {v7, v9, v5}, Lg/ke;->j(Lg/baw;I)V

    goto :goto_9

    :pswitch_4
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v12

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v13, v9, -0x1

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v14, v9, -0x1

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v15, v9, -0x1

    new-instance v10, Lg/baw;

    iget-object v9, v7, Lg/ke;->c:Ljava/lang/Object;

    move-object v11, v9

    check-cast v11, Lg/dsg;

    invoke-direct/range {v10 .. v15}, Lg/baw;-><init>(Lg/dsg;IIII)V

    invoke-virtual {v7, v10, v5}, Lg/ke;->p(Lg/baw;I)V

    goto :goto_9

    :pswitch_5
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v19

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v20, v9, -0x1

    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/lit8 v21, v9, -0x1

    new-instance v17, Lg/baw;

    iget-object v9, v7, Lg/ke;->c:Ljava/lang/Object;

    move-object/from16 v18, v9

    check-cast v18, Lg/dsg;

    const/16 v22, -0x1

    invoke-direct/range {v17 .. v22}, Lg/baw;-><init>(Lg/dsg;IIII)V

    move-object/from16 v9, v17

    invoke-virtual {v7, v9, v5}, Lg/ke;->p(Lg/baw;I)V

    goto :goto_9

    :pswitch_6
    invoke-virtual {v6}, Lg/dsg;->r()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_8

    :pswitch_7
    invoke-static {v6}, Lg/byh;->u(Lg/dsg;)I

    move-result v9

    add-int/2addr v9, v5

    add-int/lit8 v5, v8, -0x1

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_6

    :cond_b
    new-instance v1, Lg/gqp;

    const-string v2, "Invalid debug info offset"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    iget v1, p0, Lg/gqc;->ab:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lg/dmr;->j(Lg/dmr;ZI)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lg/gqc;->ab:I

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/haz;

    iget v0, v0, Lg/haz;->m:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/haz;

    invoke-virtual {p1}, Lg/haz;->aa()V

    :cond_0
    return-void
.end method

.method public r()Lg/fpl;
    .locals 12

    new-instance v0, Lg/fpl;

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/die;

    iget-object v1, v3, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    iget-object v4, v3, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    iget v2, p0, Lg/gqc;->ab:I

    invoke-direct {v0, v1, v2}, Lg/fpl;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v1, v3, Lg/die;->h:Landroid/view/View;

    iget-object v8, v0, Lg/fpl;->j:Lg/bgn;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    iput-object v1, v8, Lg/bgn;->af:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v3, Lg/die;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, v8, Lg/bgn;->i:Ljava/lang/CharSequence;

    iget-object v2, v8, Lg/bgn;->q:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v3, Lg/die;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, v8, Lg/bgn;->ab:Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lg/bgn;->n:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lg/bgn;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, v3, Lg/die;->m:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iput-object v1, v8, Lg/bgn;->l:Ljava/lang/CharSequence;

    iget-object v2, v8, Lg/bgn;->r:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v3, Lg/die;->x:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    iget-object v5, v3, Lg/die;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v2, v5, v1}, Lg/bgn;->al(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v3, Lg/die;->q:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, -0x2

    iget-object v5, v3, Lg/die;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v2, v5, v1}, Lg/bgn;->al(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v3, Lg/die;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, -0x3

    iget-object v5, v3, Lg/die;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v2, v5, v1}, Lg/bgn;->al(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, v3, Lg/die;->o:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_7

    iget-object v1, v3, Lg/die;->t:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_f

    :cond_7
    iget-object v1, v3, Lg/die;->r:Landroid/view/LayoutInflater;

    iget v2, v8, Lg/bgn;->j:I

    invoke-virtual {v1, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v3, Lg/die;->k:Z

    if-eqz v1, :cond_8

    new-instance v2, Lg/nv;

    iget v5, v8, Lg/bgn;->p:I

    iget-object v6, v3, Lg/die;->o:[Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v7}, Lg/nv;-><init>(Lg/die;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    :cond_8
    iget-boolean v1, v3, Lg/die;->l:Z

    if-eqz v1, :cond_9

    iget v1, v8, Lg/bgn;->o:I

    goto :goto_4

    :cond_9
    iget v1, v8, Lg/bgn;->ae:I

    :goto_4
    iget-object v2, v3, Lg/die;->t:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v2, Lg/ayd;

    const v5, 0x1020014

    iget-object v6, v3, Lg/die;->o:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_5
    iput-object v2, v8, Lg/bgn;->f:Landroid/widget/ListAdapter;

    iget v1, v3, Lg/die;->w:I

    iput v1, v8, Lg/bgn;->a:I

    iget-object v1, v3, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_b

    new-instance v1, Lg/gmd;

    invoke-direct {v1, v3, v8}, Lg/gmd;-><init>(Lg/die;Lg/bgn;)V

    invoke-virtual {v7, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    :cond_b
    iget-object v1, v3, Lg/die;->d:Lg/gnt;

    if-eqz v1, :cond_c

    new-instance v1, Lg/eke;

    invoke-direct {v1, v3, v7, v8}, Lg/eke;-><init>(Lg/die;Landroidx/appcompat/app/AlertController$RecycleListView;Lg/bgn;)V

    invoke-virtual {v7, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_c
    :goto_6
    iget-boolean v1, v3, Lg/die;->l:Z

    if-eqz v1, :cond_d

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_7

    :cond_d
    iget-boolean v1, v3, Lg/die;->k:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_e
    :goto_7
    iput-object v7, v8, Lg/bgn;->s:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_f
    iget-object v1, v3, Lg/die;->u:Landroid/view/View;

    if-eqz v1, :cond_10

    iput-object v1, v8, Lg/bgn;->ag:Landroid/view/View;

    iput v9, v8, Lg/bgn;->b:I

    iput-boolean v9, v8, Lg/bgn;->w:Z

    goto :goto_8

    :cond_10
    iget v1, v3, Lg/die;->n:I

    if-eqz v1, :cond_11

    iput-object v11, v8, Lg/bgn;->ag:Landroid/view/View;

    iput v1, v8, Lg/bgn;->b:I

    iput-boolean v9, v8, Lg/bgn;->w:Z

    :cond_11
    :goto_8
    iget-boolean v1, v3, Lg/die;->p:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v1, v3, Lg/die;->p:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_12
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, v3, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v3, Lg/die;->c:Lg/dgg;

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/gqc;->aa:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/frh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/gqc;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lg/gqc;->aj(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public x(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v1, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lg/die;->q:Ljava/lang/CharSequence;

    iput-object p2, v0, Lg/die;->s:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public zza()I
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    iget v0, p0, Lg/gqc;->ab:I

    new-instance v1, Landroid/media/MediaCodecList;

    invoke-direct {v1, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "BufferingUrlPinger.attributionReportingManager"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(I)Landroid/media/MediaCodecInfo;
    .locals 2

    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    iget v0, p0, Lg/gqc;->ab:I

    new-instance v1, Landroid/media/MediaCodecList;

    invoke-direct {v1, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lg/gqc;->ab:I

    iget-object v1, p0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfga;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfga;->zzb(Ljava/lang/String;I)V

    return-void
.end method

.method public zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

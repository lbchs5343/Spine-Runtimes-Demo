.class public final Lg/akh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/yu;


# instance fields
.field public final aa:Lg/dsg;

.field public ab:I

.field public o:I

.field public p:J

.field public q:Lg/gqi;

.field public r:Lg/fbm;

.field public s:I

.field public t:Z

.field public final u:Lg/gqc;

.field public v:I

.field public w:I

.field public x:[I

.field public final y:Lg/dsg;

.field public z:I


# direct methods
.method public constructor <init>(Lg/gqc;Lg/dsg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lg/akh;->x:[I

    iput-object p1, p0, Lg/akh;->u:Lg/gqc;

    iput-object p2, p0, Lg/akh;->y:Lg/dsg;

    invoke-virtual {p2}, Lg/dsg;->u()Lg/dsg;

    move-result-object p1

    iput-object p1, p0, Lg/akh;->aa:Lg/dsg;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lg/akh;->p:J

    return-wide v0
.end method

.method public final b()V
    .locals 10

    iget-object v0, p0, Lg/akh;->r:Lg/fbm;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lg/akh;->t:Z

    if-nez v1, :cond_b

    iget-object v0, v0, Lg/fbm;->f:Lg/fcn;

    iget v1, p0, Lg/akh;->v:I

    iget-object v2, p0, Lg/akh;->u:Lg/gqc;

    iget-object v2, v2, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/dsg;

    iget v0, v0, Lg/fcn;->af:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget v0, p0, Lg/akh;->o:I

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_8

    :pswitch_1
    iget v0, p0, Lg/akh;->o:I

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_2
    iget v0, p0, Lg/akh;->o:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_3
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v2, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v2

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v2, 0x0

    invoke-static {v1}, Lg/fcn;->ak(I)I

    move-result v3

    aput v3, v0, v2

    shr-int/lit8 v0, v1, 0xc

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x1c

    int-to-long v0, v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v7, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    new-array v2, v3, [J

    :goto_0
    if-ge v6, v3, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    aput-wide v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lg/beo;

    const-string v2, "Unexpected element size in FILL_ARRAY_DATA_PAYLOAD: "

    invoke-static {v0, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v2, v3, [I

    :goto_1
    if-ge v6, v3, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-array v2, v3, [S

    :goto_2
    if-ge v6, v3, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    int-to-short v8, v8

    aput-short v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    new-array v6, v3, [B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lg/dsg;->aa()I

    :cond_4
    move-object v2, v6

    goto :goto_3

    :cond_5
    new-array v2, v6, [B

    :cond_6
    :goto_3
    mul-int v1, v3, v0

    add-int/2addr v1, v7

    div-int/2addr v1, v5

    add-int/2addr v1, v4

    iput v1, p0, Lg/akh;->ab:I

    new-instance v1, Lg/cor;

    invoke-direct {v1, v3, v0, v2}, Lg/cor;-><init>(IILjava/lang/Object;)V

    iput-object v1, p0, Lg/akh;->q:Lg/gqi;

    goto/16 :goto_8

    :pswitch_6
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v2, 0x0

    invoke-static {v1}, Lg/fcn;->ak(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Lg/fcn;->ag(I)I

    move-result v1

    aput v1, v0, v2

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-array v4, v0, [I

    :goto_5
    if-ge v3, v0, :cond_8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    new-instance v1, Lg/ddo;

    invoke-direct {v1, v0, v2, v4}, Lg/ddo;-><init>(I[I[I)V

    iput-object v1, p0, Lg/akh;->q:Lg/gqi;

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/akh;->ab:I

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v3, v0, [I

    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v4, v5

    add-int v6, v2, v5

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    new-instance v1, Lg/ddo;

    invoke-direct {v1, v0, v3, v4}, Lg/ddo;-><init>(I[I[I)V

    iput-object v1, p0, Lg/akh;->q:Lg/gqi;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg/akh;->ab:I

    goto/16 :goto_8

    :pswitch_9
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto/16 :goto_8

    :pswitch_a
    invoke-static {p0, v1, v2}, Lg/fcn;->aj(Lg/akh;ILg/dsg;)V

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iput v0, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_b
    invoke-static {p0, v1, v2}, Lg/fcn;->ah(Lg/akh;ILg/dsg;)V

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iput v0, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_c
    invoke-static {p0, v1, v2}, Lg/fcn;->aj(Lg/akh;ILg/dsg;)V

    goto/16 :goto_8

    :pswitch_d
    invoke-static {p0, v1, v2}, Lg/fcn;->ah(Lg/akh;ILg/dsg;)V

    goto/16 :goto_8

    :pswitch_e
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lg/akh;->w:I

    goto/16 :goto_8

    :pswitch_f
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget v0, p0, Lg/akh;->o:I

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_10
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto/16 :goto_8

    :pswitch_11
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v1, 0x0

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_8

    :pswitch_12
    iget v0, p0, Lg/akh;->o:I

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_13
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ak(I)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x1

    invoke-static {v1}, Lg/fcn;->ag(I)I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iput v0, p0, Lg/akh;->w:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/akh;->p:J

    goto/16 :goto_8

    :pswitch_14
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ak(I)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x1

    invoke-static {v1}, Lg/fcn;->ag(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto/16 :goto_8

    :pswitch_15
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ak(I)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x1

    invoke-static {v1}, Lg/fcn;->ag(I)I

    move-result v1

    aput v1, v0, v3

    iget v0, p0, Lg/akh;->o:I

    iget-object v1, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/akh;->s:I

    goto/16 :goto_8

    :pswitch_16
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x1

    aput v2, v0, v3

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto :goto_8

    :pswitch_17
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v2

    goto :goto_8

    :pswitch_18
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {v2}, Lg/dsg;->q()I

    move-result v0

    iput v0, p0, Lg/akh;->w:I

    goto :goto_8

    :pswitch_19
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v2, v0

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x15

    if-ne v0, v1, :cond_a

    const/16 v0, 0x10

    goto :goto_7

    :cond_a
    const/16 v0, 0x30

    :goto_7
    shl-long v0, v2, v0

    iput-wide v0, p0, Lg/akh;->p:J

    goto :goto_8

    :pswitch_1a
    iget-object v0, p0, Lg/akh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1}, Lg/fcn;->ai(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, v2, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/akh;->p:J

    :goto_8
    :pswitch_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/akh;->t:Z

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_1b
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
.end method

.method public final c(I)Lg/fw;
    .locals 1

    iget-object v0, p0, Lg/akh;->y:Lg/dsg;

    invoke-virtual {v0, p1}, Lg/dsg;->p(I)Lg/dnp;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lg/ful;
    .locals 5

    iget v0, p0, Lg/akh;->w:I

    new-instance v1, Lg/esi;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lg/akh;->y:Lg/dsg;

    iget-object v3, v2, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v3, Lg/eyc;

    iget v3, v3, Lg/eyc;->b:I

    const v4, 0xffff

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    iput v3, v1, Lg/esi;->e:I

    iput v0, v1, Lg/esi;->f:I

    iput-object v2, v1, Lg/esi;->i:Lg/dsg;

    return-object v1
.end method

.method public final e()Lg/enn;
    .locals 1

    iget-object v0, p0, Lg/akh;->r:Lg/fbm;

    iget-object v0, v0, Lg/fbm;->c:Lg/enn;

    return-object v0
.end method

.method public final f()Lg/cba;
    .locals 3

    iget v0, p0, Lg/akh;->w:I

    new-instance v1, Lg/flq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/flq;-><init>(Lg/ctw;)V

    iget-object v2, p0, Lg/akh;->y:Lg/dsg;

    invoke-virtual {v2, v1, v0}, Lg/dsg;->l(Lg/flq;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lg/flq;->g:Ljava/lang/String;

    return-object v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/akh;->y:Lg/dsg;

    iget v1, p0, Lg/akh;->w:I

    invoke-virtual {v0, v1}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lg/akh;->o:I

    return v0
.end method

.method public final getTarget()I
    .locals 1

    iget v0, p0, Lg/akh;->s:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/akh;->y:Lg/dsg;

    iget v1, p0, Lg/akh;->w:I

    invoke-virtual {v0, v1}, Lg/dsg;->z(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lg/akh;->z:I

    return v0
.end method

.method public final j()Lg/dkb;
    .locals 3

    iget v0, p0, Lg/akh;->w:I

    iget-object v1, p0, Lg/akh;->y:Lg/dsg;

    iget-object v2, v1, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v2, Lg/eyc;

    iget-object v2, v2, Lg/eyc;->a:Lg/asu;

    iget v2, v2, Lg/asu;->a:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lg/dsg;->m(I)V

    iget-object v0, v1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lg/dsg;->m(I)V

    new-instance v0, Lg/dkb;

    iget-object v2, p0, Lg/akh;->aa:Lg/dsg;

    invoke-static {v1, v2}, Lg/fso;->j(Lg/dsg;Lg/dsg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/dkb;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final l()Lg/gqi;
    .locals 1

    iget-object v0, p0, Lg/akh;->q:Lg/gqi;

    return-object v0
.end method

.method public final m(I)I
    .locals 1

    iget-object v0, p0, Lg/akh;->x:[I

    aget p1, v0, p1

    return p1
.end method

.method public final n()Lg/cqf;
    .locals 1

    iget-object v0, p0, Lg/akh;->r:Lg/fbm;

    if-nez v0, :cond_0

    sget-object v0, Lg/cqf;->UNKNOWN:Lg/cqf;

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/fbm;->e:Lg/cqf;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/akh;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "0x%04X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/akh;->n()Lg/cqf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/akh;->r:Lg/fbm;

    if-nez v1, :cond_0

    iget v1, p0, Lg/akh;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "(0x%04X)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v1, p0, Lg/akh;->z:I

    iget-boolean v2, p0, Lg/akh;->t:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v4, v1, :cond_2

    if-eqz v4, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/akh;->x:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

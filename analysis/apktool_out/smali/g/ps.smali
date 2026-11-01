.class public final Lg/ps;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $arrayFactory:Lg/cvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cvw;"
        }
    .end annotation
.end field

.field final synthetic $flows:[Lg/dqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lg/dqx;"
        }
    .end annotation
.end field

.field final synthetic $this_combineInternal:Lg/fjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fjs;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lg/bnk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bnk;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>([Lg/dqx;Lg/cvw;Lg/bnk;Lg/fjs;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/ps;->$flows:[Lg/dqx;

    iput-object p2, p0, Lg/ps;->$arrayFactory:Lg/cvw;

    iput-object p3, p0, Lg/ps;->$transform:Lg/bnk;

    iput-object p4, p0, Lg/ps;->$this_combineInternal:Lg/fjs;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lg/ckd;->a:Lg/hy;

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v3, v0, Lg/ps;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v3, v0, Lg/ps;->I$1:I

    iget v9, v0, Lg/ps;->I$0:I

    iget-object v10, v0, Lg/ps;->L$2:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v0, Lg/ps;->L$1:Ljava/lang/Object;

    check-cast v11, Lg/bfl;

    iget-object v12, v0, Lg/ps;->L$0:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V

    move-object/from16 v18, v12

    move v12, v3

    move-object v3, v10

    move-object/from16 v10, v18

    goto :goto_2

    :cond_2
    iget v3, v0, Lg/ps;->I$1:I

    iget v9, v0, Lg/ps;->I$0:I

    iget-object v10, v0, Lg/ps;->L$2:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v0, Lg/ps;->L$1:Ljava/lang/Object;

    check-cast v11, Lg/bfl;

    iget-object v12, v0, Lg/ps;->L$0:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Lg/clw;

    iget-object v13, v13, Lg/clw;->b:Ljava/lang/Object;

    move-object/from16 v18, v12

    move v12, v3

    move-object v3, v10

    move-object/from16 v10, v18

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object v3, v0, Lg/ps;->L$0:Ljava/lang/Object;

    check-cast v3, Lg/hcc;

    iget-object v9, v0, Lg/ps;->$flows:[Lg/dqx;

    array-length v9, v9

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v10, v1, v4, v9}, Lg/fuv;->be([Ljava/lang/Object;Ljava/lang/Object;II)V

    const/4 v11, 0x6

    invoke-static {v9, v7, v11}, Lg/eg;->r(ILg/bqt;I)Lg/djo;

    move-result-object v16

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v15, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_5

    new-instance v12, Lg/ehu;

    iget-object v13, v0, Lg/ps;->$flows:[Lg/dqx;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lg/ehu;-><init>([Lg/dqx;ILjava/util/concurrent/atomic/AtomicInteger;Lg/bfl;Lg/bdp;)V

    invoke-static {v3, v7, v7, v12, v5}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    new-array v3, v9, [B

    move-object/from16 v11, v16

    const/4 v12, 0x0

    :cond_6
    :goto_2
    add-int/2addr v12, v8

    int-to-byte v12, v12

    iput-object v10, v0, Lg/ps;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lg/ps;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lg/ps;->L$2:Ljava/lang/Object;

    iput v9, v0, Lg/ps;->I$0:I

    iput v12, v0, Lg/ps;->I$1:I

    iput v8, v0, Lg/ps;->label:I

    invoke-interface {v11, v0}, Lg/biu;->g(Lg/ps;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_7

    goto/16 :goto_7

    :cond_7
    :goto_3
    instance-of v14, v13, Lg/dmq;

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    move-object v13, v7

    :goto_4
    check-cast v13, Lg/eay;

    if-nez v13, :cond_9

    :goto_5
    sget-object v1, Lg/dgi;->a:Lg/dgi;

    return-object v1

    :cond_9
    iget v14, v13, Lg/eay;->a:I

    aget-object v15, v10, v14

    iget-object v13, v13, Lg/eay;->b:Ljava/lang/Object;

    aput-object v13, v10, v14

    if-ne v15, v1, :cond_a

    add-int/lit8 v9, v9, -0x1

    :cond_a
    aget-byte v13, v3, v14

    if-eq v13, v12, :cond_c

    int-to-byte v13, v12

    aput-byte v13, v3, v14

    invoke-interface {v11}, Lg/biu;->h()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lg/dmq;

    if-nez v14, :cond_b

    goto :goto_6

    :cond_b
    move-object v13, v7

    :goto_6
    check-cast v13, Lg/eay;

    if-nez v13, :cond_9

    :cond_c
    if-nez v9, :cond_6

    iget-object v13, v0, Lg/ps;->$arrayFactory:Lg/cvw;

    invoke-interface {v13}, Lg/cvw;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    if-nez v13, :cond_d

    iget-object v13, v0, Lg/ps;->$transform:Lg/bnk;

    iget-object v14, v0, Lg/ps;->$this_combineInternal:Lg/fjs;

    iput-object v10, v0, Lg/ps;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lg/ps;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lg/ps;->L$2:Ljava/lang/Object;

    iput v9, v0, Lg/ps;->I$0:I

    iput v12, v0, Lg/ps;->I$1:I

    iput v6, v0, Lg/ps;->label:I

    invoke-interface {v13, v14, v10, v0}, Lg/bnk;->b(Ljava/lang/Object;Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_6

    goto :goto_7

    :cond_d
    const/16 v14, 0xe

    invoke-static {v4, v4, v14, v10, v13}, Lg/fuv;->bi(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v14, v0, Lg/ps;->$transform:Lg/bnk;

    iget-object v15, v0, Lg/ps;->$this_combineInternal:Lg/fjs;

    iput-object v10, v0, Lg/ps;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lg/ps;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lg/ps;->L$2:Ljava/lang/Object;

    iput v9, v0, Lg/ps;->I$0:I

    iput v12, v0, Lg/ps;->I$1:I

    iput v5, v0, Lg/ps;->label:I

    invoke-interface {v14, v15, v13, v0}, Lg/bnk;->b(Ljava/lang/Object;Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_6

    :goto_7
    return-object v2
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/ps;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/ps;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/ps;

    iget-object v1, p0, Lg/ps;->$flows:[Lg/dqx;

    iget-object v2, p0, Lg/ps;->$arrayFactory:Lg/cvw;

    iget-object v3, p0, Lg/ps;->$transform:Lg/bnk;

    iget-object v4, p0, Lg/ps;->$this_combineInternal:Lg/fjs;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/ps;-><init>([Lg/dqx;Lg/cvw;Lg/bnk;Lg/fjs;Lg/bdp;)V

    iput-object p1, v0, Lg/ps;->L$0:Ljava/lang/Object;

    return-object v0
.end method

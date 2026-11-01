.class public final Lg/fkj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:I

.field public final c:J

.field public d:J

.field public final e:Ljava/lang/String;

.field public final f:Lg/ay;

.field public g:Lg/dwa;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:I

.field public final k:I

.field public final l:Lg/dwa;

.field public final m:I

.field public final n:J

.field public final o:J

.field public p:J

.field public q:Lg/gys;

.field public r:Lg/bho;

.field public s:Z

.field public final t:I

.field public final u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public final w:J

.field public final x:Lg/ahc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IIJIILjava/lang/String;)V
    .locals 4

    move-object/from16 v0, p13

    move-object/from16 v1, p15

    move-object/from16 v2, p25

    const-string v3, "id"

    invoke-static {p1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {p2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "workerClassName"

    invoke-static {p3, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inputMergerClassName"

    invoke-static {p4, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p5, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {p6, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "constraints"

    invoke-static {v0, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backoffPolicy"

    invoke-static {v1, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outOfQuotaPolicy"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fkj;->h:Ljava/lang/String;

    iput-object p2, p0, Lg/fkj;->q:Lg/gys;

    iput-object p3, p0, Lg/fkj;->u:Ljava/lang/String;

    iput-object p4, p0, Lg/fkj;->e:Ljava/lang/String;

    iput-object p5, p0, Lg/fkj;->g:Lg/dwa;

    iput-object p6, p0, Lg/fkj;->l:Lg/dwa;

    iput-wide p7, p0, Lg/fkj;->w:J

    iput-wide p9, p0, Lg/fkj;->a:J

    move-wide p1, p11

    iput-wide p1, p0, Lg/fkj;->p:J

    iput-object v0, p0, Lg/fkj;->r:Lg/bho;

    move/from16 p1, p14

    iput p1, p0, Lg/fkj;->b:I

    iput-object v1, p0, Lg/fkj;->f:Lg/ay;

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lg/fkj;->o:J

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lg/fkj;->d:J

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lg/fkj;->c:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lg/fkj;->n:J

    move/from16 p1, p24

    iput-boolean p1, p0, Lg/fkj;->s:Z

    iput-object v2, p0, Lg/fkj;->x:Lg/ahc;

    move/from16 p1, p26

    iput p1, p0, Lg/fkj;->m:I

    move/from16 p1, p27

    iput p1, p0, Lg/fkj;->t:I

    move-wide/from16 p1, p28

    iput-wide p1, p0, Lg/fkj;->i:J

    move/from16 p1, p30

    iput p1, p0, Lg/fkj;->j:I

    move/from16 p1, p31

    iput p1, p0, Lg/fkj;->k:I

    move-object/from16 p1, p32

    iput-object p1, p0, Lg/fkj;->v:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IJIILjava/lang/String;I)V
    .locals 35

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lg/gys;->ENQUEUED:Lg/gys;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const-class v1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    sget-object v1, Lg/dwa;->a:Lg/dwa;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    sget-object v1, Lg/dwa;->a:Lg/dwa;

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-wide v9, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v11, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v13, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    sget-object v1, Lg/bho;->a:Lg/bho;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    sget-object v1, Lg/ay;->EXPONENTIAL:Lg/ay;

    move-object/from16 v17, v1

    goto :goto_9

    :cond_9
    move-object/from16 v17, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v18, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    const-wide/16 v20, -0x1

    if-eqz v1, :cond_b

    move-wide/from16 v22, v20

    goto :goto_b

    :cond_b
    move-wide/from16 v22, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move-wide/from16 v2, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-wide/from16 v24, v20

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    const/16 v26, 0x0

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    sget-object v1, Lg/ahc;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Lg/ahc;

    move-object/from16 v27, v1

    goto :goto_f

    :cond_f
    move-object/from16 v27, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    const/16 v28, 0x0

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v30, v20

    goto :goto_11

    :cond_11
    move-wide/from16 v30, p27

    :goto_11
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    const/16 v32, 0x0

    goto :goto_12

    :cond_12
    move/from16 v32, p29

    :goto_12
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    const/16 v1, -0x100

    const/16 v33, -0x100

    goto :goto_13

    :cond_13
    move/from16 v33, p30

    :goto_13
    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    move-object/from16 v34, v0

    goto :goto_14

    :cond_14
    move-object/from16 v34, p31

    :goto_14
    const/16 v29, 0x0

    move-object/from16 v5, p3

    move-wide/from16 v20, v22

    move-wide/from16 v22, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v34}, Lg/fkj;-><init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IIJIILjava/lang/String;)V

    return-void
.end method

.method public static y(Lg/fkj;Ljava/lang/String;Lg/gys;Ljava/lang/String;Lg/dwa;IJIIJII)Lg/fkj;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lg/fkj;->h:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lg/fkj;->q:Lg/gys;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lg/fkj;->u:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    iget-object v7, v0, Lg/fkj;->e:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, v0, Lg/fkj;->g:Lg/dwa;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    iget-object v9, v0, Lg/fkj;->l:Lg/dwa;

    iget-wide v10, v0, Lg/fkj;->w:J

    iget-wide v12, v0, Lg/fkj;->a:J

    iget-wide v14, v0, Lg/fkj;->p:J

    iget-object v2, v0, Lg/fkj;->r:Lg/bho;

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_4

    iget v3, v0, Lg/fkj;->b:I

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    move/from16 v17, p5

    :goto_4
    iget-object v3, v0, Lg/fkj;->f:Lg/ay;

    move-wide/from16 v18, v10

    iget-wide v10, v0, Lg/fkj;->o:J

    move-wide/from16 v20, v10

    and-int/lit16 v10, v1, 0x2000

    if-eqz v10, :cond_5

    iget-wide v10, v0, Lg/fkj;->d:J

    move-wide/from16 p1, v10

    goto :goto_5

    :cond_5
    move-wide/from16 p1, p6

    :goto_5
    iget-wide v10, v0, Lg/fkj;->c:J

    move-wide/from16 v23, v10

    iget-wide v10, v0, Lg/fkj;->n:J

    iget-boolean v1, v0, Lg/fkj;->s:Z

    move/from16 v27, v1

    iget-object v1, v0, Lg/fkj;->x:Lg/ahc;

    const/high16 v16, 0x40000

    and-int v16, p13, v16

    move-wide/from16 v25, v10

    if-eqz v16, :cond_6

    iget v10, v0, Lg/fkj;->m:I

    move/from16 v29, v10

    goto :goto_6

    :cond_6
    move/from16 v29, p8

    :goto_6
    const/high16 v10, 0x80000

    and-int v10, p13, v10

    if-eqz v10, :cond_7

    iget v10, v0, Lg/fkj;->t:I

    move/from16 v30, v10

    goto :goto_7

    :cond_7
    move/from16 v30, p9

    :goto_7
    const/high16 v10, 0x100000

    and-int v10, p13, v10

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lg/fkj;->i:J

    move-wide/from16 v31, v10

    goto :goto_8

    :cond_8
    move-wide/from16 v31, p10

    :goto_8
    const/high16 v10, 0x200000

    and-int v10, p13, v10

    if-eqz v10, :cond_9

    iget v10, v0, Lg/fkj;->j:I

    move/from16 v33, v10

    goto :goto_9

    :cond_9
    move/from16 v33, p12

    :goto_9
    iget v10, v0, Lg/fkj;->k:I

    iget-object v11, v0, Lg/fkj;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-static {v4, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {v5, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {v6, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMergerClassName"

    invoke-static {v7, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v8, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {v9, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {v2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    invoke-static {v3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    invoke-static {v1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v10, v18

    move-object/from16 v18, v3

    new-instance v3, Lg/fkj;

    move-object/from16 v28, v1

    move-object/from16 v16, v2

    move-wide/from16 v19, v20

    move-wide/from16 v21, p1

    invoke-direct/range {v3 .. v35}, Lg/fkj;-><init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IIJIILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final aa()J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/fkj;->q:Lg/gys;

    sget-object v2, Lg/gys;->ENQUEUED:Lg/gys;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lg/fkj;->b:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-wide v4, v0, Lg/fkj;->d:J

    invoke-virtual {v0}, Lg/fkj;->z()Z

    move-result v2

    iget-wide v6, v0, Lg/fkj;->p:J

    iget-wide v8, v0, Lg/fkj;->a:J

    iget-wide v10, v0, Lg/fkj;->i:J

    const-string v12, "backoffPolicy"

    iget-object v13, v0, Lg/fkj;->f:Lg/ay;

    invoke-static {v13, v12}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v0, Lg/fkj;->m:I

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v16, v10, v14

    if-eqz v16, :cond_3

    if-eqz v2, :cond_3

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v1, 0xdbba0

    add-long/2addr v4, v1

    cmp-long v1, v10, v4

    if-gez v1, :cond_2

    return-wide v4

    :cond_2
    :goto_1
    return-wide v10

    :cond_3
    if-eqz v1, :cond_6

    sget-object v1, Lg/ay;->LINEAR:Lg/ay;

    iget v2, v0, Lg/fkj;->b:I

    iget-wide v6, v0, Lg/fkj;->o:J

    if-ne v13, v1, :cond_4

    int-to-long v1, v2

    mul-long v6, v6, v1

    goto :goto_2

    :cond_4
    long-to-float v1, v6

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->scalb(FI)F

    move-result v1

    float-to-long v6, v1

    :goto_2
    const-wide/32 v1, 0x112a880

    cmp-long v3, v6, v1

    if-lez v3, :cond_5

    move-wide v6, v1

    :cond_5
    add-long/2addr v4, v6

    return-wide v4

    :cond_6
    iget-wide v10, v0, Lg/fkj;->w:J

    if-eqz v2, :cond_9

    if-nez v12, :cond_7

    add-long/2addr v4, v10

    goto :goto_3

    :cond_7
    add-long/2addr v4, v8

    :goto_3
    cmp-long v1, v6, v8

    if-eqz v1, :cond_8

    if-nez v12, :cond_8

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    return-wide v8

    :cond_8
    return-wide v4

    :cond_9
    const-wide/16 v1, -0x1

    cmp-long v3, v4, v1

    if-nez v3, :cond_a

    return-wide v14

    :cond_a
    add-long/2addr v4, v10

    return-wide v4
.end method

.method public final ab()Z
    .locals 2

    sget-object v0, Lg/bho;->a:Lg/bho;

    iget-object v1, p0, Lg/fkj;->r:Lg/bho;

    invoke-static {v0, v1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/fkj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/fkj;

    iget-object v1, p0, Lg/fkj;->h:Ljava/lang/String;

    iget-object v3, p1, Lg/fkj;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lg/fkj;->q:Lg/gys;

    iget-object v3, p1, Lg/fkj;->q:Lg/gys;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lg/fkj;->u:Ljava/lang/String;

    iget-object v3, p1, Lg/fkj;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lg/fkj;->e:Ljava/lang/String;

    iget-object v3, p1, Lg/fkj;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lg/fkj;->g:Lg/dwa;

    iget-object v3, p1, Lg/fkj;->g:Lg/dwa;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lg/fkj;->l:Lg/dwa;

    iget-object v3, p1, Lg/fkj;->l:Lg/dwa;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lg/fkj;->w:J

    iget-wide v5, p1, Lg/fkj;->w:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lg/fkj;->a:J

    iget-wide v5, p1, Lg/fkj;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lg/fkj;->p:J

    iget-wide v5, p1, Lg/fkj;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lg/fkj;->r:Lg/bho;

    iget-object v3, p1, Lg/fkj;->r:Lg/bho;

    invoke-static {v1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lg/fkj;->b:I

    iget v3, p1, Lg/fkj;->b:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lg/fkj;->f:Lg/ay;

    iget-object v3, p1, Lg/fkj;->f:Lg/ay;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lg/fkj;->o:J

    iget-wide v5, p1, Lg/fkj;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lg/fkj;->d:J

    iget-wide v5, p1, Lg/fkj;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lg/fkj;->c:J

    iget-wide v5, p1, Lg/fkj;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lg/fkj;->n:J

    iget-wide v5, p1, Lg/fkj;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lg/fkj;->s:Z

    iget-boolean v3, p1, Lg/fkj;->s:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lg/fkj;->x:Lg/ahc;

    iget-object v3, p1, Lg/fkj;->x:Lg/ahc;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lg/fkj;->m:I

    iget v3, p1, Lg/fkj;->m:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lg/fkj;->t:I

    iget v3, p1, Lg/fkj;->t:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lg/fkj;->i:J

    iget-wide v5, p1, Lg/fkj;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lg/fkj;->j:I

    iget v3, p1, Lg/fkj;->j:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lg/fkj;->k:I

    iget v3, p1, Lg/fkj;->k:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lg/fkj;->v:Ljava/lang/String;

    iget-object p1, p1, Lg/fkj;->v:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fkj;->q:Lg/gys;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lg/fkj;->u:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lg/tn;->k(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg/fkj;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg/tn;->k(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg/fkj;->g:Lg/dwa;

    invoke-virtual {v2}, Lg/dwa;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lg/fkj;->l:Lg/dwa;

    invoke-virtual {v0}, Lg/dwa;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->w:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->a:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->p:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fkj;->r:Lg/bho;

    invoke-virtual {v2}, Lg/bho;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/fkj;->b:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lg/fkj;->f:Lg/ay;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->o:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->d:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->c:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fkj;->n:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fkj;->s:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fkj;->x:Lg/ahc;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/fkj;->m:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/fkj;->t:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v5, p0, Lg/fkj;->i:J

    ushr-long v3, v5, v4

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/fkj;->j:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/fkj;->k:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lg/fkj;->v:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 5

    iget-wide v0, p0, Lg/fkj;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

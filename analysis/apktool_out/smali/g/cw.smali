.class public abstract Lg/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lg/dlv;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cw;->a:Ljava/lang/Object;

    iput-object p1, p0, Lg/cw;->b:Ljava/lang/Object;

    const-string p1, "type"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/cw;->c:Ljava/io/Serializable;

    invoke-virtual {p0}, Lg/cw;->i()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lg/cw;->a:Ljava/lang/Object;

    new-instance v3, Lg/fkj;

    iget-object v1, v0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "id.toString()"

    invoke-static {v4, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v34, 0x0

    const v35, 0xfffffa

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v3 .. v35}, Lg/fkj;-><init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IJIILjava/lang/String;I)V

    iput-object v3, v0, Lg/cw;->b:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x1

    invoke-static {v3}, Lg/fhj;->av(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lg/cw;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public abstract d(II)V
.end method

.method public abstract e(Landroid/graphics/Canvas;)V
.end method

.method public f()Lg/dze;
    .locals 42

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lg/cw;->h()Lg/dze;

    move-result-object v1

    iget-object v2, v0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v2, Lg/fkj;

    iget-object v2, v2, Lg/fkj;->r:Lg/bho;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lg/bho;->l()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-boolean v4, v2, Lg/bho;->d:Z

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lg/bho;->i:Z

    if-nez v4, :cond_2

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    iget-boolean v2, v2, Lg/bho;->c:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, v0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v3, Lg/fkj;

    iget-boolean v4, v3, Lg/fkj;->s:Z

    if-eqz v4, :cond_5

    if-nez v2, :cond_4

    iget-wide v7, v3, Lg/fkj;->w:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gtz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expedited jobs cannot be delayed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expedited jobs only support network and storage constraints"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v2, v3, Lg/fkj;->v:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, v3, Lg/fkj;->u:Ljava/lang/String;

    const-string v4, "."

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "<this>"

    invoke-static {v2, v7}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v4}, Lg/fuv;->bf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lg/jl;

    new-instance v8, Lg/cnl;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v4}, Lg/cnl;-><init>(ILjava/lang/Object;)V

    invoke-direct {v7, v2, v8}, Lg/jl;-><init>(Ljava/lang/CharSequence;Lg/bto;)V

    new-instance v4, Lg/fgr;

    invoke-direct {v4, v7}, Lg/fgr;-><init>(Lg/jl;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Lg/fgr;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    move-object v8, v4

    check-cast v8, Lg/fdz;

    invoke-virtual {v8}, Lg/fdz;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lg/fdz;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gex;

    const-string v9, "range"

    invoke-static {v8, v9}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v8, Lg/fqr;->b:I

    iget v8, v8, Lg/fqr;->c:I

    add-int/2addr v8, v5

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v2, v7}, Lg/dcv;->bj(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_8

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_8
    invoke-static {v7}, Lg/gsv;->bg(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v5, v2}, Lg/dcv;->bu(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, v3, Lg/fkj;->v:Ljava/lang/String;

    :cond_a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "randomUUID()"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lg/cw;->a:Ljava/lang/Object;

    new-instance v4, Lg/fkj;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "id.toString()"

    invoke-static {v5, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v2, Lg/fkj;

    const-string v3, "other"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v2, Lg/fkj;->u:Ljava/lang/String;

    iget-object v6, v2, Lg/fkj;->q:Lg/gys;

    iget-object v8, v2, Lg/fkj;->e:Ljava/lang/String;

    new-instance v9, Lg/dwa;

    iget-object v3, v2, Lg/fkj;->g:Lg/dwa;

    invoke-direct {v9, v3}, Lg/dwa;-><init>(Lg/dwa;)V

    new-instance v10, Lg/dwa;

    iget-object v3, v2, Lg/fkj;->l:Lg/dwa;

    invoke-direct {v10, v3}, Lg/dwa;-><init>(Lg/dwa;)V

    iget-wide v11, v2, Lg/fkj;->w:J

    iget-wide v13, v2, Lg/fkj;->a:J

    move-object v15, v4

    iget-wide v3, v2, Lg/fkj;->p:J

    move-object/from16 v37, v1

    new-instance v1, Lg/bho;

    move-wide/from16 v16, v3

    iget-object v3, v2, Lg/fkj;->r:Lg/bho;

    invoke-direct {v1, v3}, Lg/bho;-><init>(Lg/bho;)V

    iget v3, v2, Lg/fkj;->b:I

    iget-object v4, v2, Lg/fkj;->f:Lg/ay;

    move/from16 v18, v3

    move-object/from16 v19, v4

    iget-wide v3, v2, Lg/fkj;->o:J

    move-wide/from16 v20, v3

    iget-wide v3, v2, Lg/fkj;->d:J

    move-wide/from16 v22, v3

    iget-wide v3, v2, Lg/fkj;->c:J

    move-wide/from16 v24, v3

    iget-wide v3, v2, Lg/fkj;->n:J

    move-object/from16 v26, v1

    iget-boolean v1, v2, Lg/fkj;->s:Z

    move/from16 v28, v1

    iget-object v1, v2, Lg/fkj;->x:Lg/ahc;

    move-object/from16 v29, v1

    iget v1, v2, Lg/fkj;->m:I

    move-wide/from16 v30, v3

    iget-wide v3, v2, Lg/fkj;->i:J

    move/from16 v27, v1

    iget v1, v2, Lg/fkj;->j:I

    move/from16 v33, v1

    iget v1, v2, Lg/fkj;->k:I

    iget-object v2, v2, Lg/fkj;->v:Ljava/lang/String;

    const/high16 v36, 0x80000

    move/from16 v34, v1

    move-object/from16 v35, v2

    move-wide/from16 v38, v3

    move-object v4, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v26

    move-wide/from16 v40, v30

    move/from16 v30, v27

    move-wide/from16 v31, v38

    move-wide/from16 v26, v40

    invoke-direct/range {v4 .. v36}, Lg/fkj;-><init>(Ljava/lang/String;Lg/gys;Ljava/lang/String;Ljava/lang/String;Lg/dwa;Lg/dwa;JJJLg/bho;ILg/ay;JJJJZLg/ahc;IJIILjava/lang/String;I)V

    move-object v15, v4

    iput-object v15, v0, Lg/cw;->b:Ljava/lang/Object;

    return-object v37
.end method

.method public abstract g()Ljava/util/ArrayList;
.end method

.method public abstract h()Lg/dze;
.end method

.method public abstract i()V
.end method

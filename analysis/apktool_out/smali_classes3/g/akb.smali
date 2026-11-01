.class public final Lg/akb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/dqg;

.field public final b:Ljava/util/BitSet;

.field public final c:Ljava/util/BitSet;

.field public final d:Ljava/lang/String;

.field public final e:Lg/tl;

.field public final f:Z

.field public final g:Lg/gpz;

.field public final h:Lg/tl;


# direct methods
.method public constructor <init>(Lg/dqg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/akb;->a:Lg/dqg;

    iput-object p2, p0, Lg/akb;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/akb;->f:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lg/akb;->b:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lg/akb;->c:Ljava/util/BitSet;

    new-instance p1, Lg/tl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/akb;->e:Lg/tl;

    new-instance p1, Lg/tl;

    invoke-direct {p1, p2}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/akb;->h:Lg/tl;

    return-void
.end method

.method public constructor <init>(Lg/dqg;Ljava/lang/String;Lg/gpz;Ljava/util/BitSet;Ljava/util/BitSet;Lg/tl;Lg/tl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/akb;->a:Lg/dqg;

    iput-object p2, p0, Lg/akb;->d:Ljava/lang/String;

    iput-object p4, p0, Lg/akb;->b:Ljava/util/BitSet;

    iput-object p5, p0, Lg/akb;->c:Ljava/util/BitSet;

    iput-object p6, p0, Lg/akb;->e:Lg/tl;

    new-instance p1, Lg/tl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/bcp;-><init>(I)V

    iput-object p1, p0, Lg/akb;->h:Lg/tl;

    invoke-virtual {p7}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lg/bxl;

    invoke-virtual {p1}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p7, p4}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p6, p0, Lg/akb;->h:Lg/tl;

    invoke-virtual {p6, p4, p5}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lg/akb;->f:Z

    iput-object p3, p0, Lg/akb;->g:Lg/gpz;

    return-void
.end method


# virtual methods
.method public final i(I)Lg/ajk;
    .locals 9

    invoke-static {}, Lg/ajk;->d()Lg/bum;

    move-result-object v0

    iget-boolean v1, v0, Lg/crf;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/crf;->p()V

    iput-boolean v2, v0, Lg/crf;->i:Z

    :cond_0
    iget-object v1, v0, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/ajk;

    invoke-static {v1, p1}, Lg/ajk;->c(Lg/ajk;I)V

    iget-boolean p1, v0, Lg/crf;->i:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lg/crf;->p()V

    iput-boolean v2, v0, Lg/crf;->i:Z

    :cond_1
    iget-object p1, v0, Lg/crf;->k:Lg/cys;

    check-cast p1, Lg/ajk;

    iget-boolean v1, p0, Lg/akb;->f:Z

    invoke-static {p1, v1}, Lg/ajk;->b(Lg/ajk;Z)V

    iget-object p1, p0, Lg/akb;->g:Lg/gpz;

    if-eqz p1, :cond_3

    iget-boolean v1, v0, Lg/crf;->i:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/crf;->p()V

    iput-boolean v2, v0, Lg/crf;->i:Z

    :cond_2
    iget-object v1, v0, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/ajk;

    invoke-static {v1, p1}, Lg/ajk;->f(Lg/ajk;Lg/gpz;)V

    :cond_3
    invoke-static {}, Lg/gpz;->h()Lg/gxg;

    move-result-object p1

    iget-object v1, p0, Lg/akb;->b:Ljava/util/BitSet;

    invoke-static {v1}, Lg/fit;->v(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v3, p1, Lg/crf;->i:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v2, p1, Lg/crf;->i:Z

    :cond_4
    iget-object v3, p1, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/gpz;

    invoke-static {v3, v1}, Lg/gpz;->b(Lg/gpz;Ljava/util/List;)V

    iget-object v1, p0, Lg/akb;->c:Ljava/util/BitSet;

    invoke-static {v1}, Lg/fit;->v(Ljava/util/BitSet;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v3, p1, Lg/crf;->i:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v2, p1, Lg/crf;->i:Z

    :cond_5
    iget-object v3, p1, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/gpz;

    invoke-static {v3, v1}, Lg/gpz;->l(Lg/gpz;Ljava/lang/Iterable;)V

    iget-object v1, p0, Lg/akb;->e:Lg/tl;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v1, Lg/bcp;->g:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Lg/bxl;

    invoke-virtual {v4}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v5}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_7

    invoke-static {}, Lg/bvd;->c()Lg/cas;

    move-result-object v7

    iget-boolean v8, v7, Lg/crf;->i:Z

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Lg/crf;->p()V

    iput-boolean v2, v7, Lg/crf;->i:Z

    :cond_8
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bvd;

    invoke-static {v8, v6}, Lg/bvd;->b(Lg/bvd;I)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-boolean v8, v7, Lg/crf;->i:Z

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lg/crf;->p()V

    iput-boolean v2, v7, Lg/crf;->i:Z

    :cond_9
    iget-object v8, v7, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/bvd;

    invoke-static {v8, v5, v6}, Lg/bvd;->d(Lg/bvd;J)V

    invoke-virtual {v7}, Lg/crf;->o()Lg/cys;

    move-result-object v5

    check-cast v5, Lg/bvd;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_c

    iget-boolean v3, p1, Lg/crf;->i:Z

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v2, p1, Lg/crf;->i:Z

    :cond_b
    iget-object v3, p1, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/gpz;

    invoke-static {v3, v1}, Lg/gpz;->e(Lg/gpz;Ljava/util/ArrayList;)V

    :cond_c
    iget-object v1, p0, Lg/akb;->h:Lg/tl;

    if-nez v1, :cond_d

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v1, Lg/bcp;->g:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Lg/bxl;

    invoke-virtual {v4}, Lg/bxl;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {}, Lg/ezy;->b()Lg/bds;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v8, v6, Lg/crf;->i:Z

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lg/crf;->p()V

    iput-boolean v2, v6, Lg/crf;->i:Z

    :cond_e
    iget-object v8, v6, Lg/crf;->k:Lg/cys;

    check-cast v8, Lg/ezy;

    invoke-static {v8, v7}, Lg/ezy;->c(Lg/ezy;I)V

    invoke-virtual {v1, v5}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_10

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-boolean v7, v6, Lg/crf;->i:Z

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Lg/crf;->p()V

    iput-boolean v2, v6, Lg/crf;->i:Z

    :cond_f
    iget-object v7, v6, Lg/crf;->k:Lg/cys;

    check-cast v7, Lg/ezy;

    invoke-static {v7, v5}, Lg/ezy;->d(Lg/ezy;Ljava/util/List;)V

    :cond_10
    invoke-virtual {v6}, Lg/crf;->o()Lg/cys;

    move-result-object v5

    check-cast v5, Lg/ezy;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    move-object v1, v3

    :goto_3
    iget-boolean v3, p1, Lg/crf;->i:Z

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Lg/crf;->p()V

    iput-boolean v2, p1, Lg/crf;->i:Z

    :cond_12
    iget-object v3, p1, Lg/crf;->k:Lg/cys;

    check-cast v3, Lg/gpz;

    invoke-static {v3, v1}, Lg/gpz;->k(Lg/gpz;Ljava/lang/Iterable;)V

    iget-boolean v1, v0, Lg/crf;->i:Z

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lg/crf;->p()V

    iput-boolean v2, v0, Lg/crf;->i:Z

    :cond_13
    iget-object v1, v0, Lg/crf;->k:Lg/cys;

    check-cast v1, Lg/ajk;

    invoke-virtual {p1}, Lg/crf;->o()Lg/cys;

    move-result-object p1

    check-cast p1, Lg/gpz;

    invoke-static {v1, p1}, Lg/ajk;->e(Lg/ajk;Lg/gpz;)V

    invoke-virtual {v0}, Lg/crf;->o()Lg/cys;

    move-result-object p1

    check-cast p1, Lg/ajk;

    return-object p1
.end method

.method public final j(Lg/gmf;)V
    .locals 11

    iget-object v0, p0, Lg/akb;->a:Lg/dqg;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget v1, p1, Lg/gmf;->i:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p1, Lg/gmf;->f:Lg/cys;

    check-cast v1, Lg/dfx;

    invoke-virtual {v1}, Lg/dfx;->e()I

    move-result v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Lg/gmf;->f:Lg/cys;

    check-cast v1, Lg/azv;

    invoke-virtual {v1}, Lg/azv;->m()I

    move-result v1

    :goto_0
    iget-object v2, p1, Lg/gmf;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lg/akb;->c:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v2, p1, Lg/gmf;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lg/akb;->b:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v2, p1, Lg/gmf;->c:Ljava/lang/Long;

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, p0, Lg/akb;->e:Lg/tl;

    invoke-virtual {v5, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-object v7, p1, Lg/gmf;->c:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v3

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-lez v6, :cond_3

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p1, Lg/gmf;->e:Ljava/lang/Long;

    if-eqz v2, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lg/akb;->h:Lg/tl;

    invoke-virtual {v2, v1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v5}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p1, Lg/gmf;->i:I

    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_5
    invoke-static {}, Lg/fdd;->c()V

    iget-object v1, v0, Lg/cyg;->e:Lg/dsd;

    sget-object v2, Lg/gad;->aj:Lg/tw;

    iget-object v6, p0, Lg/akb;->d:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lg/gmf;->i:I

    packed-switch v1, :pswitch_data_2

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_2
    iget-object v1, p1, Lg/gmf;->f:Lg/cys;

    check-cast v1, Lg/azv;

    invoke-virtual {v1}, Lg/azv;->o()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_6
    invoke-static {}, Lg/fdd;->c()V

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0, v6, v2}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lg/gmf;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lg/gmf;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

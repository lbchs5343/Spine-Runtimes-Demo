.class public final synthetic Lg/hal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/fkj;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/work/impl/WorkDatabase;

.field public final synthetic f:Lg/fkj;

.field public final synthetic g:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Lg/fkj;Lg/fkj;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hal;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Lg/hal;->f:Lg/fkj;

    iput-object p3, p0, Lg/hal;->b:Lg/fkj;

    iput-object p4, p0, Lg/hal;->c:Ljava/util/List;

    iput-object p5, p0, Lg/hal;->d:Ljava/lang/String;

    iput-object p6, p0, Lg/hal;->g:Ljava/util/Set;

    iput-boolean p7, p0, Lg/hal;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/hal;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Lg/dzh;

    move-result-object v3

    iget-object v4, v1, Lg/hal;->f:Lg/fkj;

    iget-object v7, v4, Lg/fkj;->q:Lg/gys;

    iget v10, v4, Lg/fkj;->b:I

    iget-wide v11, v4, Lg/fkj;->d:J

    iget v5, v4, Lg/fkj;->t:I

    const/4 v6, 0x1

    add-int/lit8 v14, v5, 0x1

    iget v13, v4, Lg/fkj;->m:I

    iget-wide v8, v4, Lg/fkj;->i:J

    iget v4, v4, Lg/fkj;->j:I

    move-wide v15, v8

    const/4 v9, 0x0

    const v18, 0xc3dbfd

    iget-object v5, v1, Lg/hal;->b:Lg/fkj;

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v17, 0x1

    const/4 v8, 0x0

    move/from16 v17, v4

    const/4 v4, 0x1

    invoke-static/range {v5 .. v18}, Lg/fkj;->y(Lg/fkj;Ljava/lang/String;Lg/gys;Ljava/lang/String;Lg/dwa;IJIIJII)Lg/fkj;

    move-result-object v6

    iget v7, v5, Lg/fkj;->j:I

    if-ne v7, v4, :cond_0

    iget-wide v7, v5, Lg/fkj;->i:J

    iput-wide v7, v6, Lg/fkj;->i:J

    iget v5, v6, Lg/fkj;->j:I

    add-int/2addr v5, v4

    iput v5, v6, Lg/fkj;->j:I

    :cond_0
    iget-object v5, v1, Lg/hal;->c:Ljava/util/List;

    invoke-static {v5, v6}, Lg/cro;->am(Ljava/util/List;Lg/fkj;)Lg/fkj;

    move-result-object v5

    iget-object v6, v2, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Lg/gac;->al()V

    invoke-virtual {v6}, Lg/gac;->an()V

    :try_start_0
    iget-object v7, v2, Lg/gg;->n:Lg/bnh;

    invoke-virtual {v7}, Lg/fze;->i()Lg/cap;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v7, v8, v5}, Lg/bnh;->b(Lg/cap;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lg/cap;->h()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v7, v8}, Lg/fze;->h(Lg/cap;)V

    invoke-virtual {v6}, Lg/gac;->ah()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v6}, Lg/gac;->am()V

    iget-object v5, v3, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Lg/gac;->al()V

    iget-object v6, v3, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v6, Lg/bnh;

    invoke-virtual {v6}, Lg/fze;->i()Lg/cap;

    move-result-object v7

    iget-object v8, v1, Lg/hal;->d:Ljava/lang/String;

    invoke-interface {v7, v4, v8}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_3
    invoke-virtual {v5}, Lg/gac;->an()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7}, Lg/cap;->h()I

    invoke-virtual {v5}, Lg/gac;->ah()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Lg/gac;->am()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6, v7}, Lg/fze;->h(Lg/cap;)V

    iget-object v4, v1, Lg/hal;->g:Ljava/util/Set;

    invoke-virtual {v3, v8, v4}, Lg/dzh;->ah(Ljava/lang/String;Ljava/util/Set;)V

    iget-boolean v3, v1, Lg/hal;->a:Z

    if-nez v3, :cond_1

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4, v8}, Lg/gg;->ab(JLjava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Lg/gkr;

    move-result-object v0

    invoke-virtual {v0, v8}, Lg/gkr;->aa(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Lg/gac;->am()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-virtual {v6, v7}, Lg/fze;->h(Lg/cap;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v7, v8}, Lg/fze;->h(Lg/cap;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    invoke-virtual {v6}, Lg/gac;->am()V

    throw v0
.end method

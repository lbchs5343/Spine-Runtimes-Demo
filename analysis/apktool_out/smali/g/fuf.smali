.class public final Lg/fuf;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $db:Lg/gac;

.field final synthetic $observer:Lg/aol;

.field final synthetic $observerChannel:Lg/bfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bfl;"
        }
    .end annotation
.end field

.field final synthetic $resultChannel:Lg/bfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bfl;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lg/gac;Lg/aol;Lg/bfl;Ljava/util/concurrent/Callable;Lg/bfl;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/fuf;->$db:Lg/gac;

    iput-object p2, p0, Lg/fuf;->$observer:Lg/aol;

    iput-object p3, p0, Lg/fuf;->$observerChannel:Lg/bfl;

    iput-object p4, p0, Lg/fuf;->$callable:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lg/fuf;->$resultChannel:Lg/bfl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v1, Lg/fuf;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lg/fuf;->L$0:Ljava/lang/Object;

    check-cast v2, Lg/blg;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lg/fuf;->L$0:Ljava/lang/Object;

    check-cast v2, Lg/blg;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_2
    invoke-static/range {p1 .. p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/fuf;->$db:Lg/gac;

    iget-object v2, v2, Lg/gac;->x:Lg/dbe;

    iget-object v5, v1, Lg/fuf;->$observer:Lg/aol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "observer"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v5, Lg/aol;->a:[Ljava/lang/String;

    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    const-string v8, "US"

    iget-object v9, v2, Lg/dbe;->m:Ljava/util/HashMap;

    new-instance v10, Lg/dra;

    invoke-direct {v10}, Lg/dra;-><init>()V

    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_4

    aget-object v14, v6, v13

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v8}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v10, v3}, Lg/dra;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v14}, Lg/dra;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lg/dra;->c()Lg/dra;

    move-result-object v3

    new-array v6, v12, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v3

    :goto_2
    if-ge v12, v7, :cond_6

    aget-object v8, v3, v12

    iget-object v9, v2, Lg/dbe;->d:Ljava/util/LinkedHashMap;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "US"

    invoke-static {v10, v11}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v10, v11}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "There is no table with name "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v6}, Lg/gsv;->bi(Ljava/util/ArrayList;)[I

    move-result-object v6

    new-instance v7, Lg/gyp;

    invoke-direct {v7, v5, v6, v3}, Lg/gyp;-><init>(Lg/aol;[I[Ljava/lang/String;)V

    iget-object v3, v2, Lg/dbe;->l:Lg/cfx;

    monitor-enter v3

    :try_start_2
    iget-object v8, v2, Lg/dbe;->l:Lg/cfx;

    invoke-virtual {v8, v5}, Lg/cfx;->b(Ljava/lang/Object;)Lg/frv;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_7

    iget-object v5, v9, Lg/frv;->d:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    new-instance v9, Lg/frv;

    invoke-direct {v9, v5, v7}, Lg/frv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v5, v8, Lg/cfx;->e:I

    add-int/2addr v5, v10

    iput v5, v8, Lg/cfx;->e:I

    iget-object v5, v8, Lg/cfx;->g:Lg/frv;

    if-nez v5, :cond_8

    iput-object v9, v8, Lg/cfx;->f:Lg/frv;

    iput-object v9, v8, Lg/cfx;->g:Lg/frv;

    goto :goto_3

    :cond_8
    iput-object v9, v5, Lg/frv;->a:Lg/frv;

    iput-object v5, v9, Lg/frv;->b:Lg/frv;

    iput-object v9, v8, Lg/cfx;->g:Lg/frv;

    :goto_3
    const/4 v5, 0x0

    :goto_4
    check-cast v5, Lg/gyp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    if-nez v5, :cond_9

    iget-object v3, v2, Lg/dbe;->j:Lg/dxb;

    array-length v5, v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/dxb;->f([I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v5, v3, Lg/gac;->y:Lg/crd;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lg/crd;->d:Ljava/lang/Object;

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-ne v5, v10, :cond_9

    invoke-virtual {v3}, Lg/gac;->ao()Lg/fgd;

    move-result-object v3

    invoke-interface {v3}, Lg/fgd;->i()Lg/crd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/dbe;->o(Lg/crd;)V

    :cond_9
    :try_start_3
    iget-object v2, v1, Lg/fuf;->$observerChannel:Lg/bfl;

    invoke-interface {v2}, Lg/biu;->iterator()Lg/blg;

    move-result-object v2

    :cond_a
    :goto_5
    iput-object v2, v1, Lg/fuf;->L$0:Ljava/lang/Object;

    iput v4, v1, Lg/fuf;->label:I

    invoke-virtual {v2, v1}, Lg/blg;->e(Lg/w;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lg/blg;->f()Ljava/lang/Object;

    iget-object v3, v1, Lg/fuf;->$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v1, Lg/fuf;->$resultChannel:Lg/bfl;

    iput-object v2, v1, Lg/fuf;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Lg/fuf;->label:I

    invoke-interface {v5, v3, v1}, Lg/cvu;->d(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v0, :cond_a

    :goto_7
    return-object v0

    :cond_c
    iget-object v0, v1, Lg/fuf;->$db:Lg/gac;

    iget-object v0, v0, Lg/gac;->x:Lg/dbe;

    iget-object v2, v1, Lg/fuf;->$observer:Lg/aol;

    invoke-virtual {v0, v2}, Lg/dbe;->q(Lg/aol;)V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    :goto_8
    iget-object v2, v1, Lg/fuf;->$db:Lg/gac;

    iget-object v2, v2, Lg/gac;->x:Lg/dbe;

    iget-object v3, v1, Lg/fuf;->$observer:Lg/aol;

    invoke-virtual {v2, v3}, Lg/dbe;->q(Lg/aol;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/fuf;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/fuf;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/fuf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 7

    new-instance v0, Lg/fuf;

    iget-object v1, p0, Lg/fuf;->$db:Lg/gac;

    iget-object v2, p0, Lg/fuf;->$observer:Lg/aol;

    iget-object v3, p0, Lg/fuf;->$observerChannel:Lg/bfl;

    iget-object v4, p0, Lg/fuf;->$callable:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Lg/fuf;->$resultChannel:Lg/bfl;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lg/fuf;-><init>(Lg/gac;Lg/aol;Lg/bfl;Ljava/util/concurrent/Callable;Lg/bfl;Lg/bdp;)V

    return-object v0
.end method

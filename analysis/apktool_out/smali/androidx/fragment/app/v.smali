.class public abstract Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/brp;

.field public final aa:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ab:Z

.field public final ac:Ljava/util/Map;

.field public final ad:Lg/cxn;

.field public ae:Lg/brp;

.field public af:Lg/fay;

.field public ag:Z

.field public final ah:Landroidx/fragment/app/e;

.field public ai:Ljava/util/ArrayList;

.field public aj:Z

.field public final ak:Lg/egi;

.field public al:Landroidx/activity/b;

.field public final am:Lg/bjn;

.field public final b:Lg/bcn;

.field public final c:Ljava/util/Map;

.field public d:Z

.field public e:Landroidx/fragment/app/l;

.field public final f:Lg/cxn;

.field public final g:Lg/gpu;

.field public h:Z

.field public final i:Lg/cxn;

.field public j:Ljava/util/ArrayList;

.field public k:Lg/brp;

.field public final l:Lg/akj;

.field public m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public o:Lg/egk;

.field public p:Z

.field public q:Ljava/util/ArrayDeque;

.field public final r:Lg/byd;

.field public s:Ljava/util/ArrayList;

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Landroidx/fragment/app/Fragment;

.field public final v:Landroidx/fragment/app/o;

.field public w:Ljava/util/ArrayList;

.field public x:I

.field public final y:Lg/cxn;

.field public final z:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/e;

    invoke-direct {v0}, Landroidx/fragment/app/e;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/v;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->v:Landroidx/fragment/app/o;

    new-instance v0, Lg/bcn;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lg/bcn;-><init>(Ljava/lang/Object;IZ)V

    iput-object v0, p0, Landroidx/fragment/app/v;->b:Lg/bcn;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->ac:Ljava/util/Map;

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lg/akj;

    invoke-direct {v0, p0}, Lg/akj;-><init>(Landroidx/fragment/app/v;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->l:Lg/akj;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lg/cxn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/cxn;-><init>(Landroidx/fragment/app/v;I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->i:Lg/cxn;

    new-instance v0, Lg/cxn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/cxn;-><init>(Landroidx/fragment/app/v;I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->f:Lg/cxn;

    new-instance v0, Lg/cxn;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg/cxn;-><init>(Landroidx/fragment/app/v;I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->y:Lg/cxn;

    new-instance v0, Lg/cxn;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lg/cxn;-><init>(Landroidx/fragment/app/v;I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->ad:Lg/cxn;

    new-instance v0, Lg/bjn;

    invoke-direct {v0, p0}, Lg/bjn;-><init>(Landroidx/fragment/app/v;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->am:Lg/bjn;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/v;->x:I

    new-instance v0, Lg/egi;

    invoke-direct {v0, p0}, Lg/egi;-><init>(Landroidx/fragment/app/v;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->ak:Lg/egi;

    new-instance v0, Lg/gpu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/gpu;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->g:Lg/gpu;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayDeque;

    new-instance v0, Lg/byd;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->r:Lg/byd;

    return-void
.end method

.method public static an(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    iget-object p0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->g()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/fragment/app/v;->an(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static ao(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ap(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    iget-object v1, v0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/v;->ap(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final aq(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/j;

    iget-boolean v5, v5, Lg/den;->k:Z

    iget-object v6, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v7}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v4, :cond_12

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/j;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_c

    iget-object v15, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    iget-object v8, v14, Lg/den;->p:Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_b

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fzt;

    iget v3, v11, Lg/fzt;->d:I

    if-eq v3, v13, :cond_3

    const/4 v13, 0x2

    if-eq v3, v13, :cond_5

    const/4 v13, 0x3

    if-eq v3, v13, :cond_4

    const/4 v13, 0x6

    if-eq v3, v13, :cond_4

    const/4 v13, 0x7

    if-eq v3, v13, :cond_3

    const/16 v13, 0x8

    if-eq v3, v13, :cond_1

    move/from16 v19, v5

    goto :goto_3

    :cond_1
    new-instance v3, Lg/fzt;

    move/from16 v19, v5

    const/16 v5, 0x9

    const/4 v13, 0x0

    invoke-direct {v3, v5, v6, v13}, Lg/fzt;-><init>(ILandroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v11, Lg/fzt;->h:Z

    add-int/lit8 v12, v12, 0x1

    iget-object v3, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    move-object v6, v3

    :cond_2
    :goto_3
    move/from16 v22, v9

    move/from16 v21, v10

    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_3
    move/from16 v19, v5

    move/from16 v22, v9

    move/from16 v21, v10

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_4
    move/from16 v19, v5

    iget-object v3, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-ne v3, v6, :cond_2

    new-instance v5, Lg/fzt;

    const/16 v6, 0x9

    invoke-direct {v5, v3, v6}, Lg/fzt;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v9

    move/from16 v21, v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_5
    move/from16 v19, v5

    iget-object v3, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    iget v5, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v17, 0x1

    add-int/lit8 v13, v13, -0x1

    const/16 v20, 0x0

    :goto_4
    if-ltz v13, :cond_9

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v9

    move-object/from16 v9, v21

    check-cast v9, Landroidx/fragment/app/Fragment;

    move/from16 v21, v10

    iget v10, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v10, v5, :cond_8

    if-ne v9, v3, :cond_6

    move/from16 v18, v5

    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_6

    :cond_6
    if-ne v9, v6, :cond_7

    new-instance v6, Lg/fzt;

    move/from16 v18, v5

    const/16 v5, 0x9

    const/4 v10, 0x0

    invoke-direct {v6, v5, v9, v10}, Lg/fzt;-><init>(ILandroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v18, v5

    const/16 v5, 0x9

    const/4 v10, 0x0

    :goto_5
    new-instance v5, Lg/fzt;

    move-object/from16 v23, v6

    const/4 v6, 0x3

    invoke-direct {v5, v6, v9, v10}, Lg/fzt;-><init>(ILandroidx/fragment/app/Fragment;I)V

    iget v6, v11, Lg/fzt;->b:I

    iput v6, v5, Lg/fzt;->b:I

    iget v6, v11, Lg/fzt;->e:I

    iput v6, v5, Lg/fzt;->e:I

    iget v6, v11, Lg/fzt;->c:I

    iput v6, v5, Lg/fzt;->c:I

    iget v6, v11, Lg/fzt;->i:I

    iput v6, v5, Lg/fzt;->i:I

    invoke-virtual {v8, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v12, v5

    move-object/from16 v6, v23

    goto :goto_6

    :cond_8
    move/from16 v18, v5

    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v13, v13, -0x1

    move/from16 v5, v18

    move/from16 v10, v21

    move/from16 v9, v22

    goto :goto_4

    :cond_9
    move/from16 v22, v9

    move/from16 v21, v10

    const/4 v5, 0x1

    if-eqz v20, :cond_a

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    :cond_a
    iput v5, v11, Lg/fzt;->d:I

    iput-boolean v5, v11, Lg/fzt;->h:Z

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_7
    iget-object v3, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v12, v5

    move/from16 v3, p3

    move/from16 v5, v19

    move/from16 v10, v21

    move/from16 v9, v22

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_b
    move/from16 v19, v5

    move/from16 v22, v9

    move/from16 v21, v10

    goto :goto_b

    :cond_c
    move/from16 v19, v5

    move/from16 v22, v9

    move/from16 v21, v10

    const/4 v5, 0x1

    iget-object v3, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    iget-object v8, v14, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_9
    if-ltz v9, :cond_f

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fzt;

    iget v11, v10, Lg/fzt;->d:I

    const/4 v13, 0x3

    if-eq v11, v5, :cond_e

    if-eq v11, v13, :cond_d

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget-object v5, v10, Lg/fzt;->a:Lg/fqv;

    iput-object v5, v10, Lg/fzt;->f:Lg/fqv;

    goto :goto_a

    :pswitch_1
    iget-object v5, v10, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    move-object v6, v5

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    :pswitch_3
    iget-object v5, v10, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    :pswitch_4
    iget-object v5, v10, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v9, v9, -0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    if-nez v21, :cond_11

    iget-boolean v3, v14, Lg/den;->w:Z

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v10, 0x1

    :goto_d
    add-int/lit8 v9, v22, 0x1

    move/from16 v3, p3

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_12
    move/from16 v19, v5

    iget-object v3, v0, Landroidx/fragment/app/v;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-nez v19, :cond_15

    iget v3, v0, Landroidx/fragment/app/v;->x:I

    const/4 v5, 0x1

    if-lt v3, v5, :cond_15

    move/from16 v3, p3

    :goto_e
    if-ge v3, v4, :cond_15

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/j;

    iget-object v5, v5, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fzt;

    iget-object v6, v6, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_13

    iget-object v8, v6, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    if-eqz v8, :cond_13

    invoke-virtual {v0, v6}, Landroidx/fragment/app/v;->bq(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/fragment/app/e;->m(Landroidx/fragment/app/x;)V

    goto :goto_f

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_15
    move/from16 v3, p3

    :goto_10
    const/4 v5, -0x1

    if-ge v3, v4, :cond_25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/j;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "Unknown cmd: "

    if-eqz v7, :cond_1f

    invoke-virtual {v6, v5}, Landroidx/fragment/app/j;->d(I)V

    iget-object v5, v6, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/v;

    iget-object v7, v6, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_11
    if-ltz v9, :cond_1e

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fzt;

    iget-object v12, v11, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v12, :cond_1a

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    invoke-virtual {v12, v10}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v10, v6, Lg/den;->q:I

    const/16 v13, 0x2002

    const/16 v14, 0x1001

    if-eq v10, v14, :cond_19

    if-eq v10, v13, :cond_18

    const/16 v13, 0x1004

    const/16 v14, 0x2005

    if-eq v10, v14, :cond_19

    const/16 v15, 0x1003

    if-eq v10, v15, :cond_17

    if-eq v10, v13, :cond_16

    const/4 v13, 0x0

    goto :goto_12

    :cond_16
    const/16 v13, 0x2005

    goto :goto_12

    :cond_17
    const/16 v13, 0x1003

    goto :goto_12

    :cond_18
    const/16 v13, 0x1001

    :cond_19
    :goto_12
    invoke-virtual {v12, v13}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v10, v6, Lg/den;->l:Ljava/util/ArrayList;

    iget-object v13, v6, Lg/den;->r:Ljava/util/ArrayList;

    invoke-virtual {v12, v10, v13}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1a
    iget v10, v11, Lg/fzt;->d:I

    packed-switch v10, :pswitch_data_1

    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lg/fzt;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    iget-object v10, v11, Lg/fzt;->a:Lg/fqv;

    invoke-virtual {v5, v12, v10}, Landroidx/fragment/app/v;->bf(Landroidx/fragment/app/Fragment;Lg/fqv;)V

    :cond_1b
    :goto_13
    const/4 v10, 0x1

    goto/16 :goto_14

    :pswitch_7
    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->az(Landroidx/fragment/app/Fragment;)V

    goto :goto_13

    :pswitch_8
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroidx/fragment/app/v;->az(Landroidx/fragment/app/Fragment;)V

    goto :goto_13

    :pswitch_9
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v5, v12, v10}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->cj(Landroidx/fragment/app/Fragment;)V

    goto :goto_13

    :pswitch_a
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->cg(Landroidx/fragment/app/Fragment;)V

    goto :goto_13

    :pswitch_b
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v5, v12, v10}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {v12}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_1c
    iget-boolean v11, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v11, :cond_1b

    iput-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v11, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v11, v10

    iput-boolean v11, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->bo(Landroidx/fragment/app/Fragment;)V

    goto :goto_13

    :pswitch_c
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static {v12}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_1d
    iget-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_1b

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    const/16 v17, 0x1

    xor-int/lit8 v10, v10, 0x1

    iput-boolean v10, v12, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    goto :goto_13

    :pswitch_d
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->bg(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    goto/16 :goto_13

    :pswitch_e
    iget v10, v11, Lg/fzt;->b:I

    iget v13, v11, Lg/fzt;->c:I

    iget v14, v11, Lg/fzt;->e:I

    iget v11, v11, Lg/fzt;->i:I

    invoke-virtual {v12, v10, v13, v14, v11}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v5, v12, v10}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->ce(Landroidx/fragment/app/Fragment;)V

    :goto_14
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_11

    :cond_1e
    const/4 v12, 0x0

    const/16 v16, 0x2

    goto/16 :goto_19

    :cond_1f
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroidx/fragment/app/j;->d(I)V

    iget-object v5, v6, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/v;

    iget-object v7, v6, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v9, :cond_1e

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fzt;

    iget-object v11, v10, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_20

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    iget v12, v6, Lg/den;->q:I

    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    iget-object v12, v6, Lg/den;->r:Ljava/util/ArrayList;

    iget-object v14, v6, Lg/den;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v12, v14}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_20
    iget v12, v10, Lg/fzt;->d:I

    packed-switch v12, :pswitch_data_2

    :pswitch_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lg/fzt;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    iget-object v10, v10, Lg/fzt;->f:Lg/fqv;

    invoke-virtual {v5, v11, v10}, Landroidx/fragment/app/v;->bf(Landroidx/fragment/app/Fragment;Lg/fqv;)V

    :cond_21
    :goto_16
    const/4 v12, 0x0

    const/16 v16, 0x2

    goto/16 :goto_18

    :pswitch_11
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroidx/fragment/app/v;->az(Landroidx/fragment/app/Fragment;)V

    goto :goto_16

    :pswitch_12
    const/4 v12, 0x0

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->az(Landroidx/fragment/app/Fragment;)V

    goto :goto_16

    :pswitch_13
    const/4 v12, 0x0

    iget v14, v10, Lg/fzt;->b:I

    iget v15, v10, Lg/fzt;->c:I

    iget v12, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v14, v15, v12, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->cg(Landroidx/fragment/app/Fragment;)V

    goto :goto_16

    :pswitch_14
    iget v12, v10, Lg/fzt;->b:I

    iget v14, v10, Lg/fzt;->c:I

    iget v15, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->cj(Landroidx/fragment/app/Fragment;)V

    goto :goto_16

    :pswitch_15
    iget v12, v10, Lg/fzt;->b:I

    iget v14, v10, Lg/fzt;->c:I

    iget v15, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-static {v11}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_22
    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_21

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    const/16 v17, 0x1

    xor-int/lit8 v10, v10, 0x1

    iput-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    goto :goto_16

    :pswitch_16
    iget v12, v10, Lg/fzt;->b:I

    iget v14, v10, Lg/fzt;->c:I

    iget v15, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-static {v11}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_23
    iget-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v10, :cond_24

    const/4 v10, 0x1

    iput-boolean v10, v11, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v12, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v12, v10

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->bo(Landroidx/fragment/app/Fragment;)V

    :cond_24
    :goto_17
    const/4 v12, 0x0

    goto :goto_18

    :pswitch_17
    const/16 v16, 0x2

    iget v12, v10, Lg/fzt;->b:I

    iget v14, v10, Lg/fzt;->c:I

    iget v15, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->ce(Landroidx/fragment/app/Fragment;)V

    goto :goto_17

    :pswitch_18
    const/16 v16, 0x2

    iget v12, v10, Lg/fzt;->b:I

    iget v14, v10, Lg/fzt;->c:I

    iget v15, v10, Lg/fzt;->e:I

    iget v10, v10, Lg/fzt;->i:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroidx/fragment/app/v;->bz(Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/v;->bg(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    :goto_18
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_15

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    :cond_25
    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move/from16 v6, p3

    :goto_1a
    if-ge v6, v4, :cond_2a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/j;

    if-eqz v3, :cond_27

    iget-object v8, v7, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_1b
    if-ltz v8, :cond_29

    iget-object v9, v7, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fzt;

    iget-object v9, v9, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_26

    invoke-virtual {v0, v9}, Landroidx/fragment/app/v;->bq(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/x;->n()V

    :cond_26
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_27
    iget-object v7, v7, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_28
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/fzt;

    iget-object v8, v8, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_28

    invoke-virtual {v0, v8}, Landroidx/fragment/app/v;->bq(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/x;->n()V

    goto :goto_1c

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2a
    iget v6, v0, Landroidx/fragment/app/v;->x:I

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v10}, Landroidx/fragment/app/v;->br(IZ)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_1d
    if-ge v7, v4, :cond_2d

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/j;

    iget-object v8, v8, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2b
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fzt;

    iget-object v9, v9, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2b

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_2b

    invoke-virtual {v0}, Landroidx/fragment/app/v;->ch()Lg/gpu;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/fragment/app/y;->j(Landroid/view/ViewGroup;Lg/gpu;)Landroidx/fragment/app/y;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2d
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/y;

    iput-boolean v3, v7, Landroidx/fragment/app/y;->a:Z

    invoke-virtual {v7}, Landroidx/fragment/app/y;->o()V

    invoke-virtual {v7}, Landroidx/fragment/app/y;->k()V

    goto :goto_1f

    :cond_2e
    move/from16 v3, p3

    :goto_20
    if-ge v3, v4, :cond_30

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/j;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget v7, v6, Landroidx/fragment/app/j;->c:I

    if-ltz v7, :cond_2f

    iput v5, v6, Landroidx/fragment/app/j;->c:I

    :cond_2f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final ar(ZLandroid/content/res/Configuration;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v0, v0, Lg/gpp;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bl(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroidx/fragment/app/v;->ar(ZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final as()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/v;->h:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->ci(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/v;->be()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/y;

    invoke-virtual {v2}, Landroidx/fragment/app/y;->q()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v2, v1, Lg/gyj;

    iget-object v3, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    if-eqz v2, :cond_1

    iget-object v0, v3, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/l;

    iget-boolean v0, v0, Landroidx/fragment/app/l;->b:Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-static {v1}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/v;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w;

    iget-object v1, v1, Landroidx/fragment/app/w;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v3, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/l;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/l;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->cd(I)V

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v1, v0, Lg/fxh;

    if-eqz v1, :cond_5

    check-cast v0, Lg/fxh;

    iget-object v1, p0, Landroidx/fragment/app/v;->f:Lg/cxn;

    invoke-interface {v0, v1}, Lg/fxh;->removeOnTrimMemoryListener(Lg/dts;)V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v1, v0, Lg/gpp;

    if-eqz v1, :cond_6

    check-cast v0, Lg/gpp;

    iget-object v1, p0, Landroidx/fragment/app/v;->i:Lg/cxn;

    invoke-interface {v0, v1}, Lg/gpp;->removeOnConfigurationChangedListener(Lg/dts;)V

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v1, v0, Lg/dnu;

    if-eqz v1, :cond_7

    check-cast v0, Lg/dnu;

    iget-object v1, p0, Landroidx/fragment/app/v;->y:Lg/cxn;

    invoke-interface {v0, v1}, Lg/dnu;->removeOnMultiWindowModeChangedListener(Lg/dts;)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v1, v0, Lg/gbv;

    if-eqz v1, :cond_8

    check-cast v0, Lg/gbv;

    iget-object v1, p0, Landroidx/fragment/app/v;->ad:Lg/cxn;

    invoke-interface {v0, v1}, Lg/gbv;->removeOnPictureInPictureModeChangedListener(Lg/dts;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v1, v0, Lg/bkp;

    if-eqz v1, :cond_9

    check-cast v0, Lg/bkp;

    iget-object v1, p0, Landroidx/fragment/app/v;->am:Lg/bjn;

    invoke-interface {v0, v1}, Lg/bkp;->removeMenuProvider(Lg/arz;)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iput-object v0, p0, Landroidx/fragment/app/v;->o:Lg/egk;

    iput-object v0, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/v;->al:Landroidx/activity/b;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/fragment/app/v;->b:Lg/bcn;

    iget-object v1, v1, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gyx;

    invoke-interface {v2}, Lg/gyx;->cancel()V

    goto :goto_3

    :cond_a
    iput-object v0, p0, Landroidx/fragment/app/v;->al:Landroidx/activity/b;

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/v;->a:Lg/brp;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lg/brp;->f()V

    iget-object v0, p0, Landroidx/fragment/app/v;->ae:Lg/brp;

    invoke-virtual {v0}, Lg/brp;->f()V

    iget-object v0, p0, Landroidx/fragment/app/v;->k:Lg/brp;

    invoke-virtual {v0}, Lg/brp;->f()V

    :cond_c
    return-void
.end method

.method public final at()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/v;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/v;->at()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final au()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/v;->bk(II)Z

    move-result v0

    return v0
.end method

.method public final av(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final aw(Landroidx/fragment/app/j;Z)V
    .locals 5

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/v;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/v;->bp(Z)V

    iget-object p2, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/j;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/v;->ab:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/v;->bw(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    invoke-virtual {p0}, Landroidx/fragment/app/v;->cl()V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->d:Z

    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/fragment/app/v;->d:Z

    invoke-virtual {v0}, Landroidx/fragment/app/e;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/x;

    iget-object v3, v2, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroidx/fragment/app/v;->ab:Z

    if-eqz v4, :cond_3

    iput-boolean p1, p0, Landroidx/fragment/app/v;->d:Z

    goto :goto_0

    :cond_3
    iput-boolean p2, v3, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v2}, Landroidx/fragment/app/x;->n()V

    goto :goto_0

    :cond_4
    iget-object p1, v0, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    throw p1
.end method

.method public final ax(Landroid/os/Parcelable;)V
    .locals 13

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "result_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v3, v3, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/v;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "state"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "fragment_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v4, v4, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v2, v1, Landroidx/fragment/app/e;->d:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/m;

    iget-object v6, v5, Landroidx/fragment/app/m;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/k;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v0, p1, Landroidx/fragment/app/k;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/v;->l:Lg/akj;

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroidx/fragment/app/e;->j(Ljava/lang/String;Landroidx/fragment/app/m;)Landroidx/fragment/app/m;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v2, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iget-object v5, v12, Landroidx/fragment/app/m;->mWho:Ljava/lang/String;

    iget-object v2, v2, Landroidx/fragment/app/l;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_8

    invoke-static {v6}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_7
    new-instance v5, Landroidx/fragment/app/x;

    invoke-direct {v5, v3, v1, v2, v12}, Landroidx/fragment/app/x;-><init>(Lg/akj;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m;)V

    goto :goto_4

    :cond_8
    new-instance v7, Landroidx/fragment/app/x;

    iget-object v2, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v2, v2, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bi()Lg/ut;

    move-result-object v11

    iget-object v8, p0, Landroidx/fragment/app/v;->l:Lg/akj;

    iget-object v9, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/x;-><init>(Lg/akj;Landroidx/fragment/app/e;Ljava/lang/ClassLoader;Lg/ut;Landroidx/fragment/app/m;)V

    move-object v5, v7

    :goto_4
    iget-object v2, v5, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iput-object p0, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    invoke-static {v6}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_9
    iget-object v2, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v2, v2, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/fragment/app/x;->p(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/e;->m(Landroidx/fragment/app/x;)V

    iget v2, p0, Landroidx/fragment/app/v;->x:I

    iput v2, v5, Landroidx/fragment/app/x;->b:I

    goto :goto_3

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/fragment/app/l;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget-object v7, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v6}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    iget-object v7, p1, Landroidx/fragment/app/k;->mActive:Ljava/util/ArrayList;

    invoke-static {v7}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_c
    iget-object v7, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    invoke-virtual {v7, v2}, Landroidx/fragment/app/l;->i(Landroidx/fragment/app/Fragment;)V

    iput-object p0, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    new-instance v7, Landroidx/fragment/app/x;

    invoke-direct {v7, v3, v1, v2}, Landroidx/fragment/app/x;-><init>(Lg/akj;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V

    const/4 v8, 0x1

    iput v8, v7, Landroidx/fragment/app/x;->b:I

    invoke-virtual {v7}, Landroidx/fragment/app/x;->n()V

    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v7}, Landroidx/fragment/app/x;->n()V

    goto :goto_5

    :cond_d
    iget-object v0, p1, Landroidx/fragment/app/k;->mAdded:Ljava/util/ArrayList;

    iget-object v2, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {v6}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_e
    invoke-virtual {v1, v3}, Landroidx/fragment/app/e;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_6

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No instantiated fragment for ("

    const-string v1, ")"

    invoke-static {v0, v2, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-object v0, p1, Landroidx/fragment/app/k;->mBackStack:[Landroidx/fragment/app/s;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Landroidx/fragment/app/k;->mBackStack:[Landroidx/fragment/app/s;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_7
    iget-object v3, p1, Landroidx/fragment/app/k;->mBackStack:[Landroidx/fragment/app/s;

    array-length v4, v3

    if-ge v0, v4, :cond_13

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Landroidx/fragment/app/s;->instantiate(Landroidx/fragment/app/v;)Landroidx/fragment/app/j;

    move-result-object v3

    invoke-static {v6}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v3, Landroidx/fragment/app/j;->c:I

    invoke-virtual {v3}, Landroidx/fragment/app/j;->toString()Ljava/lang/String;

    new-instance v4, Lg/dou;

    invoke-direct {v4}, Lg/dou;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "  "

    invoke-virtual {v3, v4, v5, v2}, Landroidx/fragment/app/j;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_11
    iget-object v4, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    iput-object v5, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/v;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, p1, Landroidx/fragment/app/k;->mBackStackIndex:I

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p1, Landroidx/fragment/app/k;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->cb(Landroidx/fragment/app/Fragment;)V

    :cond_14
    iget-object v0, p1, Landroidx/fragment/app/k;->mBackStackStateKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Landroidx/fragment/app/k;->mBackStackStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/w;

    iget-object v4, p0, Landroidx/fragment/app/v;->ac:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/fragment/app/k;->mLaunchedFragments:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final ay(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    if-gez p3, :cond_3

    if-eqz p4, :cond_2

    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    iget-object p3, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    goto :goto_4

    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/j;

    if-ltz p3, :cond_4

    iget v4, v4, Landroidx/fragment/app/j;->c:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    move v3, v2

    :goto_3
    if-lez v3, :cond_9

    iget-object p4, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/j;

    if-ltz p3, :cond_9

    iget p4, p4, Landroidx/fragment/app/j;->c:I

    if-ne p3, p4, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v2, 0x1

    :cond_9
    :goto_4
    if-gez v3, :cond_a

    return v1

    :cond_a
    iget-object p3, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-lt p3, v3, :cond_b

    iget-object p4, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/j;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_b
    return v0
.end method

.method public final az(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Lg/fay;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->cb(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->cb(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final ba()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->ba()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/v;->ab:Z

    iget-object v0, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v1, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/x;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bd(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v0, v0, Lg/fxh;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bl(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    if-eqz p1, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/v;->bd(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final be()Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1}, Landroidx/fragment/app/e;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/x;

    iget-object v2, v2, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/v;->ch()Lg/gpu;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/fragment/app/y;->j(Landroid/view/ViewGroup;Lg/gpu;)Landroidx/fragment/app/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final bf(Landroidx/fragment/app/Fragment;Lg/fqv;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Lg/fay;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Lg/fqv;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bg(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lg/dek;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bq(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->m(Landroidx/fragment/app/x;)V

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Landroidx/fragment/app/e;->h(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_2
    invoke-static {p1}, Landroidx/fragment/app/v;->an(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/v;->p:Z

    :cond_3
    return-object v0
.end method

.method public final bh(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    invoke-static {p1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v2, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    const-string v3, "    "

    invoke-static {p1, v3}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/x;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/j;->g(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Back Stack Index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/v;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/flu;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/v;->o:Lg/egk;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/v;->x:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->aj:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->ag:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->h:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->p:Z

    if-eqz p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/fragment/app/v;->p:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bi()Lg/ut;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->bi()Lg/ut;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ak:Lg/egi;

    return-object v0
.end method

.method public final bj(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/v;->o:Lg/egk;

    invoke-virtual {v0}, Lg/egk;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/v;->o:Lg/egk;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Lg/egk;->c(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bk(II)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->ci(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/v;->bp(Z)V

    iget-object v2, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    if-gez p1, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/v;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/v;->au()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/fragment/app/v;->ay(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/v;->ab:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/v;->bw(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/v;->cl()V

    iget-boolean p2, p0, Landroidx/fragment/app/v;->d:Z

    iget-object v2, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    if-eqz p2, :cond_4

    iput-boolean v0, p0, Landroidx/fragment/app/v;->d:Z

    invoke-virtual {v2}, Landroidx/fragment/app/e;->f()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/x;

    iget-object v4, v3, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroidx/fragment/app/v;->ab:Z

    if-eqz v5, :cond_3

    iput-boolean v1, p0, Landroidx/fragment/app/v;->d:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v3}, Landroidx/fragment/app/x;->n()V

    goto :goto_1

    :cond_4
    iget-object p2, v2, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final bl(Ljava/lang/IllegalStateException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lg/dou;

    invoke-direct {v0}, Lg/dou;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    check-cast v0, Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/u;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/v;->bh(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public final bm()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/v;->aj:Z

    iput-boolean v0, p0, Landroidx/fragment/app/v;->ag:Z

    iget-object v1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v0, v1, Landroidx/fragment/app/l;->f:Z

    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final bn(Lg/flu;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/v;->h:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/v;->aj:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/v;->ag:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/v;->cf()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bo(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bj(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method public final bp(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/v;->ab:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/v;->h:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v1, v1, Lg/fay;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/fragment/app/v;->aj:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/fragment/app/v;->ag:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bq(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/x;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v2, v1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/x;

    iget-object v2, p0, Landroidx/fragment/app/v;->l:Lg/akj;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/x;-><init>(Lg/akj;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object p1, p1, Lg/fay;->h:Landroidx/fragment/app/u;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->p(Ljava/lang/ClassLoader;)V

    iget p1, p0, Landroidx/fragment/app/v;->x:I

    iput p1, v0, Landroidx/fragment/app/x;->b:I

    return-object v0
.end method

.method public final br(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/v;->x:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_4

    :cond_2
    iput p1, p0, Landroidx/fragment/app/v;->x:I

    iget-object p1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object p2, p1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/x;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/x;->n()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/x;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/x;->n()V

    iget-object v1, v0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroidx/fragment/app/e;->d:Ljava/util/HashMap;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/x;->i()V

    :cond_6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/e;->e(Landroidx/fragment/app/x;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/e;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/x;

    iget-object v1, p2, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroidx/fragment/app/v;->ab:Z

    if-eqz v2, :cond_9

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/fragment/app/v;->d:Z

    goto :goto_3

    :cond_9
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {p2}, Landroidx/fragment/app/x;->n()V

    goto :goto_3

    :cond_a
    iget-boolean p1, p0, Landroidx/fragment/app/v;->p:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-eqz p1, :cond_b

    iget p2, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x7

    if-ne p2, v1, :cond_b

    check-cast p1, Landroidx/fragment/app/p;

    iget-object p1, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/u;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput-boolean v0, p0, Landroidx/fragment/app/v;->p:Z

    :cond_b
    :goto_4
    return-void
.end method

.method public final bs(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final bt(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final bu(ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v0, v0, Lg/dnu;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bl(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/v;->bu(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final bv()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/v;->be()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/y;

    iget-boolean v4, v2, Landroidx/fragment/app/y;->b:Z

    if-eqz v4, :cond_0

    iput-boolean v3, v2, Landroidx/fragment/app/y;->b:Z

    invoke-virtual {v2}, Landroidx/fragment/app/y;->k()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/v;->be()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/y;

    invoke-virtual {v2}, Landroidx/fragment/app/y;->q()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/v;->ci(Z)Z

    iput-boolean v1, p0, Landroidx/fragment/app/v;->aj:Z

    iget-object v2, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iput-boolean v1, v2, Landroidx/fragment/app/l;->f:Z

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/x;

    if-eqz v4, :cond_3

    iget-object v6, v4, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/x;->i()V

    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-static {v4}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/fragment/app/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v6, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    monitor-exit v6

    move-object v7, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v1, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-array v8, v1, [Landroidx/fragment/app/s;

    :goto_5
    if-ge v3, v1, :cond_a

    new-instance v6, Landroidx/fragment/app/s;

    iget-object v9, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/j;

    invoke-direct {v6, v9}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/j;)V

    aput-object v6, v8, v3

    invoke-static {v5}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    new-instance v1, Landroidx/fragment/app/k;

    invoke-direct {v1}, Landroidx/fragment/app/k;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/k;->mActive:Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/fragment/app/k;->mAdded:Ljava/util/ArrayList;

    iput-object v8, v1, Landroidx/fragment/app/k;->mBackStack:[Landroidx/fragment/app/s;

    iget-object v2, p0, Landroidx/fragment/app/v;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v1, Landroidx/fragment/app/k;->mBackStackIndex:I

    iget-object v2, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_b

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/k;->mPrimaryNavActiveWho:Ljava/lang/String;

    :cond_b
    iget-object v2, v1, Landroidx/fragment/app/k;->mBackStackStateKeys:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->ac:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Landroidx/fragment/app/k;->mBackStackStates:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->ac:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayDeque;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroidx/fragment/app/k;->mLaunchedFragments:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/fragment/app/v;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "result_"

    invoke-static {v3, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroidx/fragment/app/v;->c:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "state"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fragment_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/fragment/app/m;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_d
    :goto_8
    return-object v0

    :goto_9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bw(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/j;

    iget-boolean v3, v3, Lg/den;->k:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/v;->aq(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/j;

    iget-boolean v3, v3, Lg/den;->k:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/v;->aq(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/v;->aq(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bx(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final by(Lg/fay;Lg/egk;Landroidx/fragment/app/Fragment;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-nez v0, :cond_13

    iput-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iput-object p2, p0, Landroidx/fragment/app/v;->o:Lg/egk;

    iput-object p3, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Landroidx/fragment/app/v;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Lg/cyp;

    invoke-direct {v0, p3}, Lg/cyp;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/cem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lg/cem;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/v;->cl()V

    :cond_2
    instance-of p2, p1, Lg/eud;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lg/eud;

    invoke-interface {p2}, Lg/eud;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->al:Landroidx/activity/b;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/v;->b:Lg/bcn;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    :cond_4
    const/4 p2, 0x0

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    iget-object p1, p1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iget-object v0, p1, Landroidx/fragment/app/l;->d:Ljava/util/HashMap;

    iget-object v1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/l;

    if-nez v1, :cond_5

    new-instance v1, Landroidx/fragment/app/l;

    iget-boolean p1, p1, Landroidx/fragment/app/l;->g:Z

    invoke-direct {v1, p1}, Landroidx/fragment/app/l;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lg/gyj;

    if-eqz v0, :cond_8

    check-cast p1, Lg/gyj;

    invoke-interface {p1}, Lg/gyj;->getViewModelStore()Lg/wg;

    move-result-object p1

    new-instance v0, Lg/fpd;

    sget-object v1, Landroidx/fragment/app/l;->a:Lg/bli;

    invoke-direct {v0, p1, v1}, Lg/fpd;-><init>(Lg/wg;Lg/dqr;)V

    const-class p1, Landroidx/fragment/app/l;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lg/fpd;->t(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/l;

    iput-object p1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Landroidx/fragment/app/l;

    invoke-direct {p1, p2}, Landroidx/fragment/app/l;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/l;

    iget-boolean v0, p0, Landroidx/fragment/app/v;->aj:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroidx/fragment/app/v;->ag:Z

    if-eqz v0, :cond_a

    :cond_9
    const/4 p2, 0x1

    :cond_a
    iput-boolean p2, p1, Landroidx/fragment/app/l;->f:Z

    iget-object p2, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iput-object p1, p2, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/l;

    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/gff;

    if-eqz p2, :cond_b

    if-nez p3, :cond_b

    check-cast p1, Lg/gff;

    invoke-interface {p1}, Lg/gff;->getSavedStateRegistry()Lg/hbu;

    move-result-object p1

    new-instance p2, Lg/dco;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lg/dco;-><init>(ILjava/lang/Object;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Lg/hbu;->j(Ljava/lang/String;Lg/fet;)V

    invoke-virtual {p1, v0}, Lg/hbu;->h(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->ax(Landroid/os/Parcelable;)V

    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/cdh;

    if-eqz p2, :cond_d

    check-cast p1, Lg/cdh;

    invoke-interface {p1}, Lg/cdh;->getActivityResultRegistry()Landroidx/activity/result/a;

    move-result-object p1

    if-eqz p3, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const-string v1, ":"

    invoke-static {p2, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_c
    const-string p2, ""

    :goto_2
    const-string v0, "FragmentManager:"

    invoke-static {v0, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "StartActivityForResult"

    invoke-static {p2, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/bio;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/bio;-><init>(I)V

    new-instance v2, Lg/fc;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/a;->m(Ljava/lang/String;Lg/ehj;Lg/bez;)Lg/brp;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->a:Lg/brp;

    const-string v0, "StartIntentSenderForResult"

    invoke-static {p2, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/bio;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/bio;-><init>(I)V

    new-instance v2, Lg/evf;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/a;->m(Ljava/lang/String;Lg/ehj;Lg/bez;)Lg/brp;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/v;->ae:Lg/brp;

    const-string v0, "RequestPermissions"

    invoke-static {p2, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lg/bio;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bio;-><init>(I)V

    new-instance v1, Lg/dcq;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/a;->m(Ljava/lang/String;Lg/ehj;Lg/bez;)Lg/brp;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/v;->k:Lg/brp;

    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/gpp;

    if-eqz p2, :cond_e

    check-cast p1, Lg/gpp;

    iget-object p2, p0, Landroidx/fragment/app/v;->i:Lg/cxn;

    invoke-interface {p1, p2}, Lg/gpp;->addOnConfigurationChangedListener(Lg/dts;)V

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/fxh;

    if-eqz p2, :cond_f

    check-cast p1, Lg/fxh;

    iget-object p2, p0, Landroidx/fragment/app/v;->f:Lg/cxn;

    invoke-interface {p1, p2}, Lg/fxh;->addOnTrimMemoryListener(Lg/dts;)V

    :cond_f
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/dnu;

    if-eqz p2, :cond_10

    check-cast p1, Lg/dnu;

    iget-object p2, p0, Landroidx/fragment/app/v;->y:Lg/cxn;

    invoke-interface {p1, p2}, Lg/dnu;->addOnMultiWindowModeChangedListener(Lg/dts;)V

    :cond_10
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/gbv;

    if-eqz p2, :cond_11

    check-cast p1, Lg/gbv;

    iget-object p2, p0, Landroidx/fragment/app/v;->ad:Lg/cxn;

    invoke-interface {p1, p2}, Lg/gbv;->addOnPictureInPictureModeChangedListener(Lg/dts;)V

    :cond_11
    iget-object p1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of p2, p1, Lg/bkp;

    if-eqz p2, :cond_12

    if-nez p3, :cond_12

    check-cast p1, Lg/bkp;

    iget-object p2, p0, Landroidx/fragment/app/v;->am:Lg/bjn;

    invoke-interface {p1, p2}, Lg/bkp;->addMenuProvider(Lg/arz;)V

    :cond_12
    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bz(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bj(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final ca(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/v;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/v;->m:Ljava/util/ArrayList;

    return v4
.end method

.method public final cb(Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public final cc(I)Landroidx/fragment/app/Fragment;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v1, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v4, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/x;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final cd(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/v;->ab:Z

    iget-object v2, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v2, v2, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/x;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/x;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/v;->br(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/v;->be()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/y;

    invoke-virtual {v2}, Landroidx/fragment/app/y;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/v;->ab:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/v;->ci(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/v;->ab:Z

    throw p1
.end method

.method public final ce(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v1, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/v;->an(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroidx/fragment/app/v;->p:Z

    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bo(Landroidx/fragment/app/Fragment;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final cf()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v1, v1, Lg/fay;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/v;->r:Lg/byd;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v1, v1, Lg/fay;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/v;->r:Lg/byd;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/v;->cl()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final cg(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/e;->h(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/v;->an(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/v;->p:Z

    :cond_2
    return-void
.end method

.method public final ch()Lg/gpu;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->ch()Lg/gpu;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->g:Lg/gpu;

    return-object v0
.end method

.method public final ci(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bp(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/flu;

    invoke-interface {v7, v1, v2}, Lg/flu;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v1, v1, Lg/fay;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/v;->r:Lg/byd;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v1, 0x1

    if-eqz v6, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/v;->ab:Z

    :try_start_3
    iget-object v0, p0, Landroidx/fragment/app/v;->ai:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/v;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/v;->bw(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/v;->bb()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/v;->cl()V

    iget-boolean v2, p0, Landroidx/fragment/app/v;->d:Z

    if-eqz v2, :cond_5

    iput-boolean p1, p0, Landroidx/fragment/app/v;->d:Z

    iget-object v2, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v2}, Landroidx/fragment/app/e;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/x;

    iget-object v4, v3, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroidx/fragment/app/v;->ab:Z

    if-eqz v5, :cond_4

    iput-boolean v1, p0, Landroidx/fragment/app/v;->d:Z

    goto :goto_3

    :cond_4
    iput-boolean p1, v4, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {v3}, Landroidx/fragment/app/x;->n()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object p1, p1, Landroidx/fragment/app/e;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_4
    :try_start_4
    iget-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    iget-object v0, v0, Lg/fay;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/v;->r:Lg/byd;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final cj(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    iget-object v2, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-static {p1}, Landroidx/fragment/app/v;->an(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/v;->p:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bo(Landroidx/fragment/app/Fragment;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final ck(ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    instance-of v0, v0, Lg/gbv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->bl(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    if-eqz p2, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/v;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/v;->ck(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final cl()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/v;->b:Lg/bcn;

    invoke-virtual {v1, v2}, Lg/bcn;->g(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/v;->b:Lg/bcn;

    iget-object v1, p0, Landroidx/fragment/app/v;->j:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/fragment/app/v;->ap(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lg/bcn;->g(Z)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/v;->t:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/v;->af:Lg/fay;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

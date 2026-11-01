.class public Lg/ctw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public final synthetic e:I

.field public final f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ctw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/ctw;->g:I

    if-lez p1, :cond_0

    new-instance p1, Lg/aoy;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lg/aoy;-><init>(I)V

    iput-object p1, p0, Lg/ctw;->f:Ljava/lang/Object;

    new-instance p1, Lg/cuf;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lg/cuf;-><init>(I)V

    iput-object p1, p0, Lg/ctw;->i:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/ctw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ctw;->i:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/ctw;->f:Ljava/lang/Object;

    const/high16 p1, -0x80000000

    iput p1, p0, Lg/ctw;->g:I

    iput p1, p0, Lg/ctw;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lg/ctw;->c:I

    iput p2, p0, Lg/ctw;->d:I

    return-void
.end method

.method public constructor <init>(Lg/dsg;Lg/dsg;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/ctw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ctw;->f:Ljava/lang/Object;

    iput-object p2, p0, Lg/ctw;->i:Ljava/lang/Object;

    return-void
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p1, p0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Lg/dsg;Lg/dsg;Z)Lg/fpa;
    .locals 6

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lg/dsg;->aa()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object p2, Lg/any;->SYSTEM:Lg/any;

    goto :goto_0

    :cond_0
    new-instance p0, Lg/beo;

    const-string p1, "Unknown annotation visibility value: "

    invoke-static {p2, p1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p2, Lg/any;->RUNTIME:Lg/any;

    goto :goto_0

    :cond_2
    sget-object p2, Lg/any;->BUILD:Lg/any;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0}, Lg/byh;->u(Lg/dsg;)I

    move-result v0

    invoke-static {p0}, Lg/byh;->u(Lg/dsg;)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-static {p0}, Lg/byh;->u(Lg/dsg;)I

    move-result v4

    invoke-virtual {p1, v4}, Lg/dsg;->z(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1}, Lg/fso;->v(Lg/dsg;Lg/dsg;)Lg/ghr;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Lg/dsg;->g(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lg/fpa;

    invoke-direct {p1, p2, p0, v2}, Lg/fpa;-><init>(Lg/any;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)I
    .locals 2

    iget v0, p0, Lg/ctw;->h:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lg/ctw;->q()V

    iget p1, p0, Lg/ctw;->h:I

    return p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Lg/cuf;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lg/ctw;->h:I

    invoke-static {p1, p2}, Lg/ctw;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/ctw;->h:I

    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget v1, p0, Lg/ctw;->h:I

    invoke-static {p1, p2}, Lg/ctw;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/ctw;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    iget p1, p0, Lg/ctw;->g:I

    invoke-virtual {p0, p1}, Lg/ctw;->s(I)V

    return-object p2

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public n(I)V
    .locals 2

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Lg/dsg;

    iget-object v1, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iput p1, p0, Lg/ctw;->g:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lg/ctw;->h:I

    iput p1, p0, Lg/ctw;->c:I

    iput p1, p0, Lg/ctw;->d:I

    return-void

    :cond_0
    iput p1, v0, Lg/dsg;->d:I

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lg/dsg;->j(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lg/ctw;->h:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lg/ctw;->c:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lg/ctw;->d:I

    return-void
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lg/ctw;->r(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lg/ctw;->r(II)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lg/ctw;->r(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lg/ctw;->r(II)I

    move-result v0

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/cur;

    iget-object v2, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2, v0}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lg/ctw;->h:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public r(II)I
    .locals 11

    iget-object v0, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->p()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->r()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le p2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    if-eq p1, p2, :cond_5

    iget-object v6, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v7, v6}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v8, v6}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    if-gt v7, v2, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-lt v8, v1, :cond_2

    const/4 v9, 0x1

    :cond_2
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    if-lt v7, v1, :cond_3

    if-le v8, v2, :cond_4

    :cond_3
    invoke-static {v6}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_4
    add-int/2addr p1, v5

    goto :goto_0

    :cond_5
    return v3
.end method

.method public s(I)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Lg/cuf;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lg/ctw;->h:I

    if-ltz v1, :cond_7

    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lg/ctw;->h:I

    if-nez v1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_1
    iget v1, p0, Lg/ctw;->h:I

    if-le v1, p1, :cond_6

    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "map.entries"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :goto_2
    check-cast v3, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v3, Lg/aoy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "key"

    invoke-static {v1, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lg/ctw;->h:I

    invoke-static {v1, v2}, Lg/ctw;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lg/ctw;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const-string v0, "oldValue"

    invoke-static {v2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :cond_7
    :try_start_2
    const-string p1, "LruCache.sizeOf() is reporting inconsistent results!"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit v0

    throw p1
.end method

.method public t(I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Lg/dsg;

    iget-object v1, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lg/dsg;->m(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lg/dsg;->m(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lg/dsg;->m(I)V

    iget-object v5, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v5, Lg/dsg;

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lg/ctw;->k(Lg/dsg;Lg/dsg;Z)Lg/fpa;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/ctw;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LruCache[maxSize="

    iget-object v1, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v1, Lg/cuf;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lg/ctw;->c:I

    iget v3, p0, Lg/ctw;->d:I

    add-int/2addr v3, v2

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lg/ctw;->g:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hits="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/ctw;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",misses="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/ctw;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hitRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(II)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v5

    if-le v5, p1, :cond_2

    :cond_0
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-nez v5, :cond_1

    invoke-static {v4}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v5

    if-lt v5, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_6

    :cond_4
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:Z

    if-nez v4, :cond_5

    invoke-static {v2}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v4

    if-gt v4, p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p2, p2, -0x1

    move-object v3, v2

    goto :goto_2

    :cond_6
    :goto_3
    return-object v3
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lg/ctw;->g:I

    iput v0, p0, Lg/ctw;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lg/ctw;->c:I

    return-void
.end method

.method public w(I)I
    .locals 2

    iget v0, p0, Lg/ctw;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/cur;

    iget-object v1, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->al:Lg/bjd;

    invoke-virtual {v1, p1}, Lg/bjd;->k(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lg/ctw;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lg/ctw;->g:I

    return p1
.end method

.method public x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v0, Lg/cuf;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, p0, Lg/ctw;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/ctw;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget v1, p0, Lg/ctw;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/ctw;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, p1}, Lg/ctw;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v1, Lg/cuf;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v2, Lg/aoy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v3, Lg/aoy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v3, p0, Lg/ctw;->h:I

    invoke-static {p1, v0}, Lg/ctw;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lg/ctw;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v1

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    iget p1, p0, Lg/ctw;->g:I

    invoke-virtual {p0, p1}, Lg/ctw;->s(I)V

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1

    :goto_1
    monitor-exit v0

    throw p1
.end method

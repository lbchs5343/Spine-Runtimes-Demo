.class public abstract Lg/fqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ab:[I

.field public static final ac:Lg/cuf;

.field public static final ad:[Landroid/animation/Animator;

.field public static final ae:Ljava/lang/ThreadLocal;


# instance fields
.field public af:Lg/dpa;

.field public ag:I

.field public ah:Ljava/util/ArrayList;

.field public ai:Lg/dpa;

.field public aj:Lg/buj;

.field public ak:[Landroid/animation/Animator;

.field public final al:[I

.field public am:J

.field public an:Ljava/util/ArrayList;

.field public ao:Ljava/util/ArrayList;

.field public ap:Ljava/util/ArrayList;

.field public aq:Lg/fqk;

.field public ar:Landroid/animation/TimeInterpolator;

.field public final as:Ljava/util/ArrayList;

.field public at:Z

.field public final au:Ljava/lang/String;

.field public av:Lg/h;

.field public aw:J

.field public final ax:Ljava/util/ArrayList;

.field public ay:Lg/cuf;

.field public az:Z

.field public ba:[Lg/to;

.field public final bb:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, Lg/fqk;->ad:[Landroid/animation/Animator;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/fqk;->ab:[I

    new-instance v0, Lg/cuf;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg/cuf;-><init>(I)V

    sput-object v0, Lg/fqk;->ac:Lg/cuf;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/fqk;->ae:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fqk;->au:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lg/fqk;->aw:J

    iput-wide v0, p0, Lg/fqk;->am:J

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fqk;->ar:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/fqk;->as:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    new-instance v1, Lg/dpa;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg/dpa;-><init>(I)V

    iput-object v1, p0, Lg/fqk;->ai:Lg/dpa;

    new-instance v1, Lg/dpa;

    invoke-direct {v1, v2}, Lg/dpa;-><init>(I)V

    iput-object v1, p0, Lg/fqk;->af:Lg/dpa;

    iput-object v0, p0, Lg/fqk;->av:Lg/h;

    sget-object v1, Lg/fqk;->ab:[I

    iput-object v1, p0, Lg/fqk;->al:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/fqk;->ax:Ljava/util/ArrayList;

    sget-object v1, Lg/fqk;->ad:[Landroid/animation/Animator;

    iput-object v1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    const/4 v1, 0x0

    iput v1, p0, Lg/fqk;->ag:I

    iput-boolean v1, p0, Lg/fqk;->az:Z

    iput-boolean v1, p0, Lg/fqk;->at:Z

    iput-object v0, p0, Lg/fqk;->aq:Lg/fqk;

    iput-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fqk;->ap:Ljava/util/ArrayList;

    sget-object v0, Lg/fqk;->ac:Lg/cuf;

    iput-object v0, p0, Lg/fqk;->ay:Lg/cuf;

    return-void
.end method

.method public static bc(Lg/fuz;Lg/fuz;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lg/fuz;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lg/fuz;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V
    .locals 11

    iget-object v0, p0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lg/tl;

    iget-object v1, p0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, Lg/tl;

    iget-object v2, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object p0, p0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast p0, Lg/asv;

    invoke-virtual {v0, p1, p2}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-boolean p2, p0, Lg/asv;->c:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    iget p2, p0, Lg/asv;->b:I

    iget-object v4, p0, Lg/asv;->d:[J

    iget-object v5, p0, Lg/asv;->a:[Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, p2, :cond_6

    aget-object v8, v5, v6

    sget-object v9, Lg/dyd;->r:Ljava/lang/Object;

    if-eq v8, v9, :cond_5

    if-eq v6, v7, :cond_4

    aget-wide v9, v4, v6

    aput-wide v9, v4, v7

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    :cond_4
    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v3, p0, Lg/asv;->c:Z

    iput v7, p0, Lg/asv;->b:I

    :cond_7
    iget-object p2, p0, Lg/asv;->d:[J

    iget v4, p0, Lg/asv;->b:I

    invoke-static {p2, v4, v1, v2}, Lg/erl;->as([JIJ)I

    move-result p2

    if-ltz p2, :cond_8

    invoke-virtual {p0, v1, v2}, Lg/asv;->i(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, v0}, Lg/asv;->l(JLjava/lang/Object;)V

    return-void

    :cond_8
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, p1}, Lg/asv;->l(JLjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static be()Lg/tl;
    .locals 3

    sget-object v0, Lg/fqk;->ae:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/tl;

    if-nez v1, :cond_0

    new-instance v1, Lg/tl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/bcp;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bf(Lg/fqk;Lg/bco;)V
    .locals 6

    iget-object v0, p0, Lg/fqk;->aq:Lg/fqk;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    :cond_0
    iget-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lg/fqk;->ba:[Lg/to;

    if-nez v1, :cond_1

    new-array v1, v0, [Lg/to;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lg/fqk;->ba:[Lg/to;

    iget-object v3, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/to;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    iget v5, p2, Lg/bco;->g:I

    packed-switch v5, :pswitch_data_0

    invoke-interface {v4}, Lg/to;->c()V

    goto :goto_1

    :pswitch_0
    invoke-interface {v4}, Lg/to;->b()V

    goto :goto_1

    :pswitch_1
    invoke-interface {v4, p1}, Lg/to;->a(Lg/fqk;)V

    goto :goto_1

    :pswitch_2
    invoke-interface {v4, p1}, Lg/to;->d(Lg/fqk;)V

    goto :goto_1

    :pswitch_3
    invoke-interface {v4, p1}, Lg/to;->e(Lg/fqk;)V

    :goto_1
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lg/fqk;->ba:[Lg/to;

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bg()V
    .locals 1

    iget v0, p0, Lg/fqk;->ag:I

    if-nez v0, :cond_0

    sget-object v0, Lg/bco;->e:Lg/bco;

    invoke-virtual {p0, p0, v0}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fqk;->at:Z

    :cond_0
    iget v0, p0, Lg/fqk;->ag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/fqk;->ag:I

    return-void
.end method

.method public final bh(Landroid/view/ViewGroup;Z)V
    .locals 7

    invoke-virtual {p0, p2}, Lg/fqk;->bl(Z)V

    iget-object v0, p0, Lg/fqk;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/fqk;->bo(Landroid/view/View;Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lg/fuz;

    invoke-direct {v5, v4}, Lg/fuz;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, Lg/fqk;->t(Lg/fuz;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lg/fqk;->p(Lg/fuz;)V

    :goto_2
    iget-object v6, v5, Lg/fuz;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lg/fqk;->s(Lg/fuz;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, Lg/fqk;->ai:Lg/dpa;

    invoke-static {v6, v4, v5}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lg/fqk;->af:Lg/dpa;

    invoke-static {v6, v4, v5}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lg/fuz;

    invoke-direct {v0, p1}, Lg/fuz;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lg/fqk;->t(Lg/fuz;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, Lg/fqk;->p(Lg/fuz;)V

    :goto_5
    iget-object v3, v0, Lg/fuz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lg/fqk;->s(Lg/fuz;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, Lg/fqk;->ai:Lg/dpa;

    invoke-static {v3, p1, v0}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lg/fqk;->af:Lg/dpa;

    invoke-static {v3, p1, v0}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public bi(Lg/to;)V
    .locals 1

    iget-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bj(Landroid/view/View;Z)Lg/fuz;
    .locals 1

    iget-object v0, p0, Lg/fqk;->av:Lg/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/fqk;->bj(Landroid/view/View;Z)Lg/fuz;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/fqk;->ai:Lg/dpa;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lg/fqk;->af:Lg/dpa;

    :goto_0
    iget-object p2, p2, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p2, Lg/tl;

    invoke-virtual {p2, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fuz;

    return-object p1
.end method

.method public final bk()Lg/fqk;
    .locals 1

    iget-object v0, p0, Lg/fqk;->av:Lg/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fqk;->bk()Lg/fqk;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final bl(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/fqk;->ai:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Lg/tl;

    invoke-virtual {p1}, Lg/bcp;->clear()V

    iget-object p1, p0, Lg/fqk;->ai:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lg/fqk;->ai:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->e:Ljava/lang/Object;

    check-cast p1, Lg/asv;

    invoke-virtual {p1}, Lg/asv;->e()V

    return-void

    :cond_0
    iget-object p1, p0, Lg/fqk;->af:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Lg/tl;

    invoke-virtual {p1}, Lg/bcp;->clear()V

    iget-object p1, p0, Lg/fqk;->af:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lg/fqk;->af:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->e:Ljava/lang/Object;

    check-cast p1, Lg/asv;

    invoke-virtual {p1}, Lg/asv;->e()V

    return-void
.end method

.method public final bm()V
    .locals 4

    iget v0, p0, Lg/fqk;->ag:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lg/fqk;->ag:I

    if-nez v0, :cond_4

    sget-object v0, Lg/bco;->a:Lg/bco;

    invoke-virtual {p0, p0, v0}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/fqk;->ai:Lg/dpa;

    iget-object v3, v3, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v3, Lg/asv;

    invoke-virtual {v3}, Lg/asv;->f()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lg/fqk;->ai:Lg/dpa;

    iget-object v3, v3, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v3, Lg/asv;

    invoke-virtual {v3, v2}, Lg/asv;->j(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lg/fqk;->af:Lg/dpa;

    iget-object v3, v3, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v3, Lg/asv;

    invoke-virtual {v3}, Lg/asv;->f()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lg/fqk;->af:Lg/dpa;

    iget-object v3, v3, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v3, Lg/asv;

    invoke-virtual {v3, v2}, Lg/asv;->j(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lg/fqk;->at:Z

    :cond_4
    return-void
.end method

.method public final bn(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lg/fqk;->as:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public final bo(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lg/fuz;

    invoke-direct {v0, p1}, Lg/fuz;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lg/fqk;->t(Lg/fuz;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lg/fqk;->p(Lg/fuz;)V

    :goto_0
    iget-object v1, v0, Lg/fuz;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lg/fqk;->s(Lg/fuz;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lg/fqk;->ai:Lg/dpa;

    invoke-static {v1, p1, v0}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lg/fqk;->af:Lg/dpa;

    invoke-static {v1, p1, v0}, Lg/fqk;->bd(Lg/dpa;Landroid/view/View;Lg/fuz;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lg/fqk;->bo(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final bp(Landroid/view/View;Z)Lg/fuz;
    .locals 4

    iget-object v0, p0, Lg/fqk;->av:Lg/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/fqk;->bp(Landroid/view/View;Z)Lg/fuz;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lg/fqk;->ao:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fqk;->an:Ljava/util/ArrayList;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fuz;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v3, Lg/fuz;->b:Landroid/view/View;

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lg/fqk;->an:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lg/fqk;->ao:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fuz;

    return-object p1

    :cond_7
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Lg/fqk;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    sget-object v2, Lg/fqk;->ad:[Landroid/animation/Animator;

    iput-object v2, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    sget-object v0, Lg/bco;->b:Lg/bco;

    invoke-virtual {p0, p0, v0}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/fqk;->i()Lg/fqk;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lg/fqk;->ar:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public g(Landroid/view/ViewGroup;Lg/fuz;Lg/fuz;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lg/buj;)V
    .locals 0

    iput-object p1, p0, Lg/fqk;->aj:Lg/buj;

    return-void
.end method

.method public i()Lg/fqk;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fqk;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg/fqk;->ap:Ljava/util/ArrayList;

    new-instance v1, Lg/dpa;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg/dpa;-><init>(I)V

    iput-object v1, v0, Lg/fqk;->ai:Lg/dpa;

    new-instance v1, Lg/dpa;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg/dpa;-><init>(I)V

    iput-object v1, v0, Lg/fqk;->af:Lg/dpa;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/fqk;->ao:Ljava/util/ArrayList;

    iput-object v1, v0, Lg/fqk;->an:Ljava/util/ArrayList;

    iput-object p0, v0, Lg/fqk;->aq:Lg/fqk;

    iput-object v1, v0, Lg/fqk;->ah:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lg/to;)Lg/fqk;
    .locals 1

    iget-object v0, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fqk;->aq:Lg/fqk;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    :cond_1
    iget-object p1, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fqk;->ah:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public l(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lg/fqk;->az:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lg/fqk;->at:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lg/fqk;->ax:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v1, Lg/fqk;->ad:[Landroid/animation/Animator;

    iput-object v1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v0

    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    sget-object p1, Lg/bco;->f:Lg/bco;

    invoke-virtual {p0, p0, p1}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/fqk;->az:Z

    :cond_2
    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/fqk;->am:J

    const-string p1, ") "

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "dur("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/fqk;->am:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v1, p0, Lg/fqk;->aw:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, "dly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/fqk;->aw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lg/fqk;->ar:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    const-string v1, "interp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fqk;->ar:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lg/fqk;->as:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg/fqk;->bb:Ljava/util/ArrayList;

    if-gtz v1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    :cond_3
    const-string v1, "tgts("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_7

    if-lez v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lg/fqk;->aw:J

    return-void
.end method

.method public abstract p(Lg/fuz;)V
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r(Landroid/view/ViewGroup;Lg/dpa;Lg/dpa;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lg/fqk;->be()Lg/tl;

    move-result-object v1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Lg/fqk;->bk()Lg/fqk;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_c

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fuz;

    move-object/from16 v8, p5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fuz;

    if-eqz v7, :cond_0

    iget-object v11, v7, Lg/fuz;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v7, 0x0

    :cond_0
    if-eqz v9, :cond_1

    iget-object v11, v9, Lg/fuz;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v9, 0x0

    :cond_1
    if-nez v7, :cond_4

    if-nez v9, :cond_4

    :cond_2
    move-object/from16 v11, p1

    :cond_3
    move-object/from16 v15, p3

    move/from16 v16, v3

    move/from16 v17, v5

    goto/16 :goto_5

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v0, v7, v9}, Lg/fqk;->z(Lg/fuz;Lg/fuz;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_5
    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v7, v9}, Lg/fqk;->g(Landroid/view/ViewGroup;Lg/fuz;Lg/fuz;)Landroid/animation/Animator;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v13, v0, Lg/fqk;->au:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v7, v9, Lg/fuz;->b:Landroid/view/View;

    invoke-virtual {v0}, Lg/fqk;->y()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    array-length v14, v9

    if-lez v14, :cond_9

    new-instance v14, Lg/fuz;

    invoke-direct {v14, v7}, Lg/fuz;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    iget-object v4, v15, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v4, Lg/tl;

    invoke-virtual {v4, v7}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fuz;

    move/from16 v16, v3

    if-eqz v4, :cond_6

    const/4 v10, 0x0

    :goto_1
    array-length v3, v9

    if-ge v10, v3, :cond_6

    aget-object v3, v9, v10

    move/from16 v17, v5

    iget-object v5, v4, Lg/fuz;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v4

    iget-object v4, v14, Lg/fuz;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    move-object/from16 v4, v18

    goto :goto_1

    :cond_6
    move/from16 v17, v5

    iget v3, v1, Lg/bcp;->g:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_8

    invoke-virtual {v1, v4}, Lg/bcp;->n(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v1, v5}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/glx;

    iget-object v9, v5, Lg/glx;->f:Lg/fuz;

    if-eqz v9, :cond_7

    iget-object v9, v5, Lg/glx;->c:Landroid/view/View;

    if-ne v9, v7, :cond_7

    iget-object v9, v5, Lg/glx;->e:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v5, v5, Lg/glx;->f:Lg/fuz;

    invoke-virtual {v5, v14}, Lg/fuz;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    move-object v10, v12

    goto :goto_3

    :cond_9
    move-object/from16 v15, p3

    move/from16 v16, v3

    move/from16 v17, v5

    move-object v10, v12

    const/4 v14, 0x0

    :goto_3
    move-object v12, v10

    move-object v10, v14

    goto :goto_4

    :cond_a
    move-object/from16 v15, p3

    move/from16 v16, v3

    move/from16 v17, v5

    iget-object v7, v7, Lg/fuz;->b:Landroid/view/View;

    const/4 v10, 0x0

    :goto_4
    if-eqz v12, :cond_b

    new-instance v3, Lg/glx;

    invoke-virtual {v11}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v7, v3, Lg/glx;->c:Landroid/view/View;

    iput-object v13, v3, Lg/glx;->e:Ljava/lang/String;

    iput-object v10, v3, Lg/glx;->f:Lg/fuz;

    iput-object v4, v3, Lg/glx;->a:Landroid/view/WindowId;

    iput-object v0, v3, Lg/glx;->b:Lg/fqk;

    iput-object v12, v3, Lg/glx;->d:Landroid/animation/Animator;

    invoke-virtual {v1, v12, v3}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lg/fqk;->ap:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v5, v17, 0x1

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_d

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v5, v0, Lg/fqk;->ap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/glx;

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0x7fffffffffffffffL

    sub-long/2addr v5, v7

    iget-object v7, v3, Lg/glx;->d:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v3, Lg/glx;->d:Landroid/animation/Animator;

    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public s(Lg/fuz;)V
    .locals 0

    return-void
.end method

.method public abstract t(Lg/fuz;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lg/fqk;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lg/fqk;->at:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lg/fqk;->ax:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v1, Lg/fqk;->ad:[Landroid/animation/Animator;

    iput-object v1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aput-object v3, p1, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg/fqk;->ak:[Landroid/animation/Animator;

    sget-object p1, Lg/bco;->c:Lg/bco;

    invoke-virtual {p0, p0, p1}, Lg/fqk;->bf(Lg/fqk;Lg/bco;)V

    iput-boolean v1, p0, Lg/fqk;->az:Z

    :cond_1
    return-void
.end method

.method public v(J)V
    .locals 0

    iput-wide p1, p0, Lg/fqk;->am:J

    return-void
.end method

.method public w(Lg/cuf;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lg/fqk;->ac:Lg/cuf;

    iput-object p1, p0, Lg/fqk;->ay:Lg/cuf;

    return-void

    :cond_0
    iput-object p1, p0, Lg/fqk;->ay:Lg/cuf;

    return-void
.end method

.method public x()V
    .locals 8

    invoke-virtual {p0}, Lg/fqk;->bg()V

    invoke-static {}, Lg/fqk;->be()Lg/tl;

    move-result-object v0

    iget-object v1, p0, Lg/fqk;->ap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lg/fqk;->bg()V

    if-eqz v2, :cond_0

    new-instance v3, Lg/gno;

    invoke-direct {v3, p0, v0}, Lg/gno;-><init>(Lg/fqk;Lg/tl;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v3, p0, Lg/fqk;->am:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    iget-wide v3, p0, Lg/fqk;->aw:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object v3, p0, Lg/fqk;->ar:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, Lg/cod;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lg/cod;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lg/fqk;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lg/fqk;->bm()V

    return-void
.end method

.method public y()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z(Lg/fuz;Lg/fuz;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lg/fqk;->y()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Lg/fqk;->bc(Lg/fuz;Lg/fuz;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lg/fuz;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lg/fqk;->bc(Lg/fuz;Lg/fuz;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

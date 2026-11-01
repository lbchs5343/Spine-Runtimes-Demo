.class public Lg/dbv;
.super Lg/ect;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public b:I

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/m;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dbv;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dbv;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lg/dbv;->b:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lg/dbv;->a:Landroid/view/LayoutInflater;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final f(I)Lg/cng;
    .locals 1

    iget-object v0, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cng;

    return-object p1
.end method

.method public final g(Ljava/lang/Class;Lg/ekf;)V
    .locals 2

    iget-object v0, p0, Lg/dbv;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/dbv;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lg/dbv;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/dbv;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/dbv;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, La/u/e/NoViewTypeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, La/u/e/NoViewTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, La/u/e/NullItemDataException;

    invoke-direct {p1}, La/u/e/NullItemDataException;-><init>()V

    throw p1
.end method

.method public final h(Ljava/util/ArrayList;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg/ect;->onBindViewHolder(Landroidx/recyclerview/widget/p;I)V

    invoke-virtual {p0, p2}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lg/dbv;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ekf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/ekf;->b(Landroidx/recyclerview/widget/p;Lg/cng;)V

    return-void

    :cond_0
    new-instance p1, La/u/e/NoItemAdapterException;

    invoke-direct {p1}, La/u/e/NoItemAdapterException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, La/u/e/NullItemDataException;

    invoke-direct {p1}, La/u/e/NullItemDataException;-><init>()V

    throw p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p;
    .locals 3

    iget-object v0, p0, Lg/dbv;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iget-object v0, p0, Lg/dbv;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/ekf;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lg/dbv;->a:Landroid/view/LayoutInflater;

    invoke-interface {p2, v0, p1}, Lg/ekf;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, La/u/e/NoItemAdapterException;

    invoke-direct {p1}, La/u/e/NoItemAdapterException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, La/u/e/NoViewTypeException;

    invoke-direct {p1}, La/u/e/NoViewTypeException;-><init>()V

    throw p1
.end method

.class public final Lg/dmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cgm;


# instance fields
.field public a:Lf/a/e;

.field public b:Lg/aco;

.field public c:Z

.field public d:Lg/elf;

.field public e:Lg/elf;

.field public i:Ljava/util/HashMap;


# direct methods
.method public static j(Lg/dmr;ZI)V
    .locals 3

    iget-object v0, p0, Lg/dmr;->e:Lg/elf;

    new-instance v1, Lg/get;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lg/gkp;

    invoke-direct {p0, v0, p2, p1, v1}, Lg/gkp;-><init>(Lg/elf;IZLg/get;)V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Lg/dmr;Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dmr;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dmr;->d:Lg/elf;

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/bys;->a:Ljava/lang/String;

    iget-object p0, p0, Lg/dmr;->e:Lg/elf;

    new-instance v0, Lg/asy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lg/asy;-><init>(Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 9

    iget-object v0, p0, Lg/dmr;->a:Lf/a/e;

    iget-object v5, p0, Lg/dmr;->e:Lg/elf;

    new-instance v1, Lg/fnq;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iget-object v2, v0, Lg/cdy;->b:Lg/efc;

    new-instance v4, Lg/fpd;

    const/16 v3, 0x9

    invoke-direct {v4, v0, v1, v5, v3}, Lg/fpd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "a"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x44d

    invoke-virtual {v4, v0}, Lg/fpd;->o(I)V

    return-void

    :cond_0
    sget-object v1, Lg/efc;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lg/fpd;->i(Lg/x;)V

    return-void

    :cond_1
    iget-object v0, v2, Lg/efc;->d:Lg/tq;

    const/16 v8, 0x7c7

    if-nez v0, :cond_2

    invoke-virtual {v4, v8}, Lg/fpd;->o(I)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lg/gkr;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lg/gkr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, v2, Lg/efc;->d:Lg/tq;

    if-nez v0, :cond_3

    invoke-virtual {v1, v8}, Lg/gkr;->o(I)V

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lg/bjy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/fnq;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lg/fnq;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bjy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "inapp"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_6

    invoke-static {v0}, Lg/fkz;->n(Ljava/util/ArrayList;)Lg/fkz;

    move-result-object v0

    iput-object v0, v3, Lg/fnq;->f:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v0, Lg/aoy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v3, v3, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v3, Lg/fkz;

    iput-object v3, v0, Lg/aoy;->h:Ljava/lang/Object;

    iget-object v2, v2, Lg/efc;->d:Lg/tq;

    new-instance v3, Lg/emr;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lg/tq;->am(Lg/aoy;Lg/emr;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product list must be set to a non empty list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All products should be of the same product type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product list cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lg/dmr;->d:Lg/elf;

    const-string v1, "vb"

    invoke-static {v0, v1}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dmr;->a:Lf/a/e;

    new-instance v1, Lg/aoy;

    invoke-direct {v1, p0}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lg/cdy;->c:Lg/fyl;

    new-instance v3, Lg/akj;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v1, v5}, Lg/akj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2, p1, v3}, Lg/fyl;->h(Ljava/lang/String;Lg/btp;)V

    return-void
.end method

.method public final l(IZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dmr;->c:Z

    iget-object v0, p0, Lg/dmr;->e:Lg/elf;

    new-instance v1, Lg/zd;

    invoke-direct {v1, p0}, Lg/zd;-><init>(Lg/dmr;)V

    new-instance v2, Lg/cef;

    invoke-direct {v2, v0, p1, p2, v1}, Lg/cef;-><init>(Lg/elf;IZLg/zd;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()Z
    .locals 5

    iget-object v0, p0, Lg/dmr;->a:Lf/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lg/cdy;->c:Lg/fyl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "a"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lg/fyl;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lg/fyl;->b:Lg/cdy;

    invoke-static {v2}, Lg/acr;->bc(Lg/cdy;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v0, Lg/cdy;->b:Lg/efc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lg/efc;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public final n()V
    .locals 14

    iget-object v0, p0, Lg/dmr;->e:Lg/elf;

    iget-object v1, p0, Lg/dmr;->d:Lg/elf;

    invoke-static {v1}, Lg/acr;->az(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lg/dmr;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lg/dmr;->m()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lg/dmr;->c:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lg/acr;->j:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "TrineaAndroidCommon"

    invoke-virtual {v1, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "immature"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/byz;

    if-eqz v10, :cond_1

    iget-object v11, v10, Lg/byz;->a:Ljava/util/ArrayList;

    invoke-static {v11}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_1

    iget v12, v10, Lg/byz;->d:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    iget-object v12, v10, Lg/byz;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/ert;

    if-eqz v11, :cond_3

    iget-boolean v12, v11, Lg/ert;->s:Z

    if-eqz v12, :cond_3

    if-nez v8, :cond_4

    iget-boolean v12, v11, Lg/ert;->l:Z

    if-nez v12, :cond_3

    :cond_4
    if-eqz v4, :cond_5

    iget-object v12, v11, Lg/ert;->q:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    iget-object v12, v11, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v3, Lg/guo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lg/fml;->e(Landroid/content/Context;)Z

    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_8

    invoke-static {v1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Lg/fxe$a;->fit:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v1, ""

    :goto_2
    iget-object v2, v0, Lg/elf;->n:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    invoke-static {v6}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f12020f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/elf;->n:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    iget-object v1, v0, Lg/elf;->n:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lg/elf;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lg/ub;->invalidateOptionsMenu()V

    iget-object v1, v0, Lg/elf;->r:Lg/bzj;

    if-nez v1, :cond_a

    new-instance v1, Lg/bzj;

    iget-object v2, v0, Lg/elf;->aa:Lg/elf;

    invoke-direct {v1, v2, v6}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lg/elf;->r:Lg/bzj;

    new-instance v2, Lg/ffi;

    iget-object v3, v0, Lg/elf;->aa:Lg/elf;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lg/ffi;-><init>(I)V

    iput-object v3, v2, Lg/ffi;->d:Landroid/content/Context;

    const-class v3, Lg/ert;

    invoke-virtual {v1, v3, v2}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v1, v0, Lg/elf;->r:Lg/bzj;

    new-instance v2, Lg/fsk;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lg/fsk;-><init>(I)V

    const-class v3, Lg/byz;

    invoke-virtual {v1, v3, v2}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v1, v0, Lg/elf;->r:Lg/bzj;

    new-instance v2, Lg/fsk;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lg/fsk;-><init>(I)V

    const-class v3, Lg/guo;

    invoke-virtual {v1, v3, v2}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v1, v0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lg/elf;->r:Lg/bzj;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object v1, v0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lg/fhv;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lg/fhv;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v6}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object v1, v0, Lg/elf;->r:Lg/bzj;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :goto_3
    iget-object v1, v0, Lg/elf;->r:Lg/bzj;

    new-instance v2, Lg/dcq;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0}, Lg/dcq;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Lg/ect;->i:Lg/fsz;

    return-void
.end method

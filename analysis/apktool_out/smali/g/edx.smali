.class public abstract Lg/edx;
.super Lg/eib;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lg/eha;


# static fields
.field public static d:Z

.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public ac:Ljava/lang/String;

.field public ad:Lg/efq;

.field public ae:Landroid/view/View;

.field public af:Z

.field public ag:Z

.field public ah:Landroid/view/View;

.field public ai:Landroid/widget/TextView;

.field public aj:Lg/aco;

.field public final ak:Lg/bcn;

.field public f:Lg/fri;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/content/Intent;

.field public j:Ljava/util/LinkedHashMap;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field public m:Lg/he;

.field public n:Lg/efq;

.field public o:Lg/gpu;

.field public p:Lc/b/ab;

.field public q:Z

.field public r:La/v/ScrollViewWithMaxHeight;

.field public s:I

.field public t:Landroid/view/View;

.field public u:Z

.field public v:Landroid/view/View;

.field public x:Lg/cgg;

.field public y:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lg/edx;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lg/eib;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/edx;->q:Z

    iput-boolean v0, p0, Lg/edx;->af:Z

    iput-boolean v0, p0, Lg/edx;->ag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/edx;->m:Lg/he;

    new-instance v0, Lg/bcn;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lg/bcn;-><init>(Ljava/lang/Object;IZ)V

    iput-object v0, p0, Lg/edx;->ak:Lg/bcn;

    return-void
.end method

.method public static al(Lg/edx;)V
    .locals 6

    iget-boolean v0, p0, Lg/edx;->ag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/edx;->ag:Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0053

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lg/cwd;

    invoke-direct {v3, p0, v2}, Lg/cwd;-><init>(Lg/edx;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v3, Lg/gqc;

    invoke-direct {v3, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    const v5, 0x7f120474

    invoke-virtual {v3, v5}, Lg/gqc;->am(I)Lg/gqc;

    iput-object v1, v4, Lg/die;->u:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v4, Lg/die;->n:I

    iput-boolean v0, v4, Lg/die;->p:Z

    new-instance v0, Lg/dtm;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v2, v1}, Lg/dtm;-><init>(Lg/dms;Ljava/lang/Object;I)V

    const v1, 0x7f1202de

    invoke-virtual {v3, v1, v0}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v0, Lg/efa;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/efa;-><init>(I)V

    const v1, 0x7f120082

    invoke-virtual {v3, v1, v0}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/bml;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/bml;-><init>(Lg/edx;I)V

    iput-object v0, v4, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    iget-object p0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p0, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void
.end method

.method public static am(Lg/edx;Landroid/text/Editable;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/edx;->m:Lg/he;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lg/edx;->m:Lg/he;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/he;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_2
    if-nez v5, :cond_c

    invoke-virtual {v4}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_4
    if-nez v5, :cond_c

    invoke-virtual {v4}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_8

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_6
    if-nez v5, :cond_c

    invoke-virtual {v4}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_a

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_8
    if-eqz v5, :cond_d

    :cond_c
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v4}, Lg/he;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Lg/he;->getChild(I)Lg/he;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_f
    :goto_a
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    iget-object p0, p0, Lg/eib;->bc:Lg/eib;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const p1, 0x7f120475

    invoke-static {p0, p1, v0}, Lg/gm;->g(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :cond_10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/he;

    invoke-virtual {v0, v3}, Lg/he;->setInspected(Z)Lg/he;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_11
    iget-object v2, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lg/edx;->ao()V

    iget-object p0, p0, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final aa()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const v1, 0x7f120044

    const v2, 0x7f120051

    const v3, 0x7f120469

    invoke-static {v0, v3, v1, v2}, Lg/aky;->o(Landroid/app/Activity;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ab()V
    .locals 2

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/edx;->ai:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/edx;->p:Lc/b/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final an()Z
    .locals 11

    iget-object v0, p0, Lg/edx;->f:Lg/fri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lg/fri;->f:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/edx;->ar()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lg/edx;->at()V

    return v2

    :cond_1
    iget-boolean v0, p0, Lg/edx;->u:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg/edx;->au()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/edx;->w()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v4, p0, Lg/edx;->f:Lg/fri;

    iget-boolean v0, v4, Lg/fri;->f:Z

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    const-class v3, Lg/fri;

    monitor-enter v3

    :try_start_0
    iput-boolean v2, v4, Lg/fri;->f:Z

    sput-boolean v2, Lg/fri;->a:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v4, Lg/fri;->j:Lg/fri;

    iget v3, v4, Lg/fri;->h:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Lg/fso;->ao(Landroid/content/Context;F)I

    move-result v6

    const v9, 0x40128

    const/4 v10, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x7da

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x35

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v4, Lg/fri;->j:Lg/fri;

    sget-object v3, Lg/fnp;->b:Ljava/util/HashMap;

    :try_start_1
    invoke-static {v0}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v4, Lg/fri;->j:Lg/fri;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x1a

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x7f6

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_6
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00de

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/fri;->i:Landroid/view/View;

    const v3, 0x7f0900d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, La/v/DragLinearLayout;

    invoke-static {v4}, Lg/dzm;->bd(Landroid/content/Context;)I

    move-result v3

    const/16 v6, 0x8c5

    const v7, 0x7f0901a5

    if-ge v3, v6, :cond_7

    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lg/fri;->o:Landroid/view/View;

    new-instance v6, Lg/eyz;

    invoke-direct {v6, v4, v1}, Lg/eyz;-><init>(Lg/fri;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lg/fri;->o:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    const v6, 0x7f090161

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lg/fri;->c:Landroid/view/View;

    new-instance v6, Lg/eyz;

    invoke-direct {v6, v4, v2}, Lg/eyz;-><init>(Lg/fri;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lg/fri;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    const v6, 0x7f0900c7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lg/fri;->b:Landroid/view/View;

    new-instance v6, Lg/eyz;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Lg/eyz;-><init>(Lg/fri;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lg/fri;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    const v6, 0x7f090151

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lg/fri;->k:Landroid/view/View;

    new-instance v6, Lg/eyz;

    const/4 v8, 0x3

    invoke-direct {v6, v4, v8}, Lg/eyz;-><init>(Lg/fri;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lg/fri;->k:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v4, Lg/fri;->i:Landroid/view/View;

    const v6, 0x7f0901fc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lg/fri;->d:Landroid/view/View;

    new-instance v6, Lg/eyz;

    const/4 v8, 0x4

    invoke-direct {v6, v4, v8}, Lg/eyz;-><init>(Lg/fri;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lg/fri;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v4, Lg/fri;->m:Lg/axs;

    invoke-virtual {v3}, Lg/axs;->b()V

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    filled-new-array {v1, v1}, [I

    move-result-object v6

    filled-new-array {v1, v1}, [I

    move-result-object v7

    move-object v8, v5

    move-object v5, v3

    new-instance v3, Lg/gjs;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lg/gjs;-><init>(Lg/ghz;[F[I[ILandroid/view/WindowManager$LayoutParams;I)V

    move-object v5, v8

    invoke-virtual {v0, v3}, La/v/DragLinearLayout;->setOnDragListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v4, Lg/fri;->l:Landroid/view/WindowManager;

    iget-object v1, v4, Lg/fri;->i:Landroid/view/View;

    invoke-interface {v0, v1, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v4, Lg/fri;->j:Lg/fri;

    const-string v1, "tc_tips_switch_app"

    invoke-static {v0, v1}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v4, Lg/fri;->j:Lg/fri;

    const v1, 0x7f12054d

    invoke-static {v0, v1}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lg/edx;->ar()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lg/edx;->at()V

    :cond_9
    return v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_a
    invoke-virtual {p0}, Lg/edx;->ap()V

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final ao()V
    .locals 4

    iget-object v0, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lg/edx;->ak:Lg/bcn;

    invoke-virtual {v1, v0}, Lg/bcn;->g(Z)V

    invoke-virtual {p0}, Lg/edx;->ax()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/edx;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lg/edx;->ae:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/clt;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/clt;-><init>(Lg/edx;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final ap()V
    .locals 7

    const-class v0, Lg/eib;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/edx;->q:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-class v1, Lg/eib;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg/edx;->q:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v1, v2}, Lg/fyt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    new-instance v3, Lg/gqc;

    invoke-direct {v3, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12047b

    invoke-virtual {v3, v4}, Lg/gqc;->am(I)Lg/gqc;

    const v4, 0x7f120477

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v4, v5, v0

    const v1, 0x7f12014a

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    iput-object v1, v4, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance v1, Lg/fdi;

    invoke-direct {v1, p0, v0}, Lg/fdi;-><init>(Lg/edx;I)V

    const v4, 0x7f120084

    invoke-virtual {v3, v4, v1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v1, Lg/fdi;

    invoke-direct {v1, p0, v6}, Lg/fdi;-><init>(Lg/edx;I)V

    const v4, 0x7f120082

    invoke-virtual {v3, v4, v1}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lg/bml;

    invoke-direct {v1, p0, v0}, Lg/bml;-><init>(Lg/edx;I)V

    iget-object v0, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iput-object v1, v0, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3}, Lg/gqc;->r()Lg/fpl;

    move-result-object v0

    invoke-static {v2, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final aq()V
    .locals 4

    iget v0, p0, Lg/edx;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/edx;->s:I

    invoke-virtual {p0}, Lg/edx;->ar()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/edx;->u:Z

    invoke-virtual {p0}, Lg/edx;->an()Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lg/edx;->u:Z

    new-instance v1, Lg/cdl;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Lg/cdl;-><init>(Ljava/lang/Object;II)V

    const-string v0, "notification"

    iget-object v2, p0, Lg/edx;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {v1}, Lg/cdl;->run()V

    return-void
.end method

.method public final ar()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "layout_control_window_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "layout_snapshot_prepared"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/edx;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final as()V
    .locals 3

    iget-object v0, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/he;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lg/he;->setInspected(Z)Lg/he;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lg/edx;->ak:Lg/bcn;

    invoke-virtual {v0, v2}, Lg/bcn;->g(Z)V

    iget-object v0, p0, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, p0, Lg/edx;->ae:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final at()V
    .locals 3

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->n()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "inspector_first_finish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/fzn;->q(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final au()Z
    .locals 2

    sget v0, Lg/bus;->a:I

    const-string v0, "shizuku_compatibility_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v0

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final aw(Lg/he;)V
    .locals 2

    iput-object p1, p0, Lg/edx;->m:Lg/he;

    invoke-static {p1}, Lg/ka;->x(Lg/he;)V

    invoke-virtual {p0}, Lg/edx;->au()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/edx;->an()Z

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lg/ern;->b:Z

    iget-object p1, p0, Lg/edx;->m:Lg/he;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "inspector_first_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    iget-object v0, p0, Lg/edx;->m:Lg/he;

    invoke-virtual {p1, v0}, Lg/jt;->s(Lg/he;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const-string v0, "tc_tips_click_zone"

    invoke-static {p1, v0}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12046b

    invoke-static {p1, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12027d

    invoke-static {p1, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public final ax()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "tc_content_reverse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "tc_content_deduplication"

    invoke-static {v1, v3, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v0, "\n"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isDisplayHomeAsUpEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isEnterLeaveAnim()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/edx;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lg/edx;->as()V

    return-void

    :cond_0
    iget-object v0, p0, Lg/edx;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const-string v0, "tc_content_reverse"

    invoke-static {p1, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {p1, v0, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lg/edx;->ao()V

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p1, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120472

    goto :goto_0

    :cond_1
    const v0, 0x7f120471

    :goto_0
    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/edx;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const-string v0, "tc_content_deduplication"

    invoke-static {p1, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {p1, v0, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lg/edx;->ao()V

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p1, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f12046e

    goto :goto_1

    :cond_3
    const v0, 0x7f12046d

    :goto_1
    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lg/edx;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lg/edx;->ax()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, ""

    invoke-static {v0, v1, p1, v2}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lg/edx;->ah:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lg/edx;->as()V

    return-void

    :cond_6
    iget-object v0, p0, Lg/edx;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lg/edx;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lg/ub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0xf

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    :cond_0
    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lg/edx;->d:Z

    iget-object p1, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object p1

    aget p1, p1, v0

    mul-int/lit8 p1, p1, 0x6

    div-int/lit8 p1, p1, 0x14

    iget-object v0, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v0, p1}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    iget-object p1, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    if-eqz p1, :cond_4

    sget-boolean v0, Lg/edx;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lg/fnp;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {p0}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Lg/jt;->setSpecialMarkUp(I)V

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object p1

    iget-object v1, p0, Lg/edx;->ak:Lg/bcn;

    invoke-virtual {p1, p0, v1}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    sget-object p1, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-object p0, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/edx;->ac:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->x:Lg/cgg;

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lg/edx;->d:Z

    const p1, 0x7f0900d8

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lg/fso;->av(Landroid/view/View;Z)V

    const p1, 0x7f090358

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/edx;->ai:Landroid/widget/TextView;

    new-instance v3, Lg/get;

    const/16 v4, 0xc

    invoke-direct {v3, v4, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->n()I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lg/edx;->ai:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    const p1, 0x7f0900d9

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->ae:Landroid/view/View;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    new-instance v5, Lg/fft;

    invoke-direct {v5, v3, v1}, Lg/fft;-><init>([F[F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0900e2

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/edx;->l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f09036f

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->ah:Landroid/view/View;

    const p1, 0x7f0902ec

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/edx;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0900c7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->v:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/edx;->v:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f09011b

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->t:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/edx;->t:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0902ba

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/edx;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0900dc

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/ScrollViewWithMaxHeight;

    iput-object p1, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object p1

    aget p1, p1, v0

    mul-int/lit8 p1, p1, 0x6

    div-int/lit8 p1, p1, 0x14

    iget-object v1, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, p1}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    const p1, 0x7f0900dd

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/edx;->k:Landroid/widget/TextView;

    const p1, 0x7f09000f

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lc/b/ab;

    iput-object p1, p0, Lg/edx;->p:Lc/b/ab;

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    sget-boolean v3, Lg/edx;->d:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lg/fnp;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {v1}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lg/jt;->setSpecialMarkUp(I)V

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    new-instance v1, Lg/gpu;

    invoke-direct {v1, v4}, Lg/gpu;-><init>(I)V

    iput-object v1, p0, Lg/edx;->o:Lg/gpu;

    invoke-virtual {p1, v1}, Lg/jt;->setInspectorViewFilter(Lg/bxi;)V

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    new-instance v1, Lg/bcr;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, Lg/bcr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lg/edx;->aq()V

    const-string p1, "control_bar_find"

    iget-object v1, p0, Lg/edx;->ac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/clt;

    invoke-direct {v1, p0, v2}, Lg/clt;-><init>(Lg/edx;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    invoke-super {p0}, Lg/eib;->initData()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lg/edx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->n()I

    move-result p1

    if-gez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lg/aco;

    const/4 v1, 0x5

    invoke-direct {p1, v1, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/edx;->aj:Lg/aco;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lc/b/c;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lg/edx;->i:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lg/edx;->i:Landroid/content/Intent;

    iget-object v1, p0, Lg/edx;->aj:Lg/aco;

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Lg/efq;

    invoke-direct {p1, p0, v2}, Lg/efq;-><init>(Lg/edx;I)V

    iput-object p1, p0, Lg/edx;->ad:Lg/efq;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "inspector_close"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "inspector_refresh"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "find"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    iget-object v2, p0, Lg/edx;->ad:Lg/efq;

    invoke-virtual {v1, v2, p1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lg/efq;

    invoke-direct {p1, p0, v0}, Lg/efq;-><init>(Lg/edx;I)V

    iput-object p1, p0, Lg/edx;->n:Lg/efq;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    iget-object v0, p0, Lg/edx;->n:Lg/efq;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "window_state_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final onDestroy()V
    .locals 6

    iget v0, p0, Lg/edx;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/edx;->s:I

    sget-object v0, Lg/bew;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/elb;

    iget-object v3, v2, Lg/elb;->b:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lg/elb;->b:Landroid/view/Window;

    iget v4, v2, Lg/elb;->d:I

    iget v5, v2, Lg/elb;->a:I

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    iget v2, v2, Lg/elb;->c:I

    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lg/bew;->j:Z

    if-eqz v1, :cond_2

    sget-object v1, Lg/bew;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg/bew;->q()V

    :cond_2
    sget-object v0, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lg/edx;->n:Lg/efq;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/edx;->n:Lg/efq;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lg/edx;->ad:Lg/efq;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/edx;->ad:Lg/efq;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Lg/edx;->aj:Lg/aco;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/edx;->aj:Lg/aco;

    :cond_5
    iget-object v0, p0, Lg/edx;->i:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lg/edx;->af:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/eib;->az:Z

    sput-boolean v0, Lg/ern;->b:Z

    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/edx;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12014e

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/edx;->ah:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120497

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/edx;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12040e

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/edx;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12046c

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/edx;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f12046f

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lg/edx;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120473

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/edx;->ac:Ljava/lang/String;

    iget-object p1, p0, Lg/edx;->p:Lc/b/ab;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/edx;->as()V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/edx;->m:Lg/he;

    iget-object v0, p0, Lg/edx;->p:Lc/b/ab;

    invoke-virtual {v0, p1}, Lg/jt;->s(Lg/he;)Z

    invoke-virtual {p0}, Lg/edx;->aq()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lg/ub;->onStart()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/clt;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/clt;-><init>(Lg/edx;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final useDarkSystemBarIcons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lg/yb;->j(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lg/edx;->au()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lg/eib;->w()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lg/edx;->ab()V

    return v1
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lg/edx;->ai:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/edx;->p:Lc/b/ab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

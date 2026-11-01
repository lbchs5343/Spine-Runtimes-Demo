.class public abstract Lg/baq;
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
.field public ac:Z

.field public ad:Lg/eva;

.field public ae:Landroid/view/View;

.field public af:Landroid/view/View;

.field public ag:Z

.field public final ah:Lg/bcn;

.field public ai:La/v/RecyclerViewWithMaxHeight;

.field public aj:Landroid/widget/TextView;

.field public ak:Lg/aco;

.field public al:Ljava/lang/String;

.field public f:Lg/ka;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/content/Intent;

.field public j:Lg/he;

.field public k:Landroid/view/View;

.field public l:Landroid/widget/TextView;

.field public m:Ljava/util/List;

.field public n:Lg/eva;

.field public o:I

.field public p:Lc/b/ab;

.field public q:Z

.field public r:Landroid/view/View;

.field public s:Lg/he;

.field public t:Landroid/view/View;

.field public u:Lg/cgg;

.field public v:Landroid/view/View;

.field public x:Ljava/util/Stack;

.field public y:Lg/dbv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lg/baq;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lg/eib;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/baq;->q:Z

    iput-boolean v0, p0, Lg/baq;->ag:Z

    iput-boolean v0, p0, Lg/baq;->ac:Z

    iput v0, p0, Lg/baq;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/baq;->s:Lg/he;

    new-instance v0, Lg/bcn;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lg/bcn;-><init>(Ljava/lang/Object;IZ)V

    iput-object v0, p0, Lg/baq;->ah:Lg/bcn;

    return-void
.end method

.method public static am(Lg/baq;)V
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

.method public static an(Lg/baq;)Z
    .locals 11

    iget-object v0, p0, Lg/baq;->f:Lg/ka;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lg/ka;->g:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lg/baq;->w()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lg/baq;->f:Lg/ka;

    iget-boolean p0, v4, Lg/ka;->g:Z

    if-eqz p0, :cond_3

    :goto_1
    return v2

    :cond_3
    const-class v3, Lg/ka;

    monitor-enter v3

    :try_start_0
    iput-boolean v2, v4, Lg/ka;->g:Z

    sput-boolean v2, Lg/ka;->a:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const v9, 0x40128

    const/4 v10, -0x2

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x7da

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p0, 0x35

    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, v4, Lg/ka;->p:Lg/ka;

    sget-object v0, Lg/fnp;->b:Ljava/util/HashMap;

    :try_start_1
    invoke-static {p0}, Lg/cux;->as(Landroid/content/Context;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_2
    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, v4, Lg/ka;->p:Lg/ka;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_3
    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p0, 0x1a

    invoke-static {p0}, Lg/dyd;->bp(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x7f6

    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_5
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c00dd

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v4, Lg/ka;->n:Landroid/view/View;

    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, La/v/DragLinearLayout;

    invoke-static {v4}, Lg/dzm;->bd(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x8c5

    if-ge v0, v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    new-instance v0, Lg/ld;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v4}, Lg/ld;-><init>(ILjava/lang/Object;)V

    iget-object v6, v4, Lg/ka;->n:Landroid/view/View;

    const v7, 0x7f090359

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f0901a5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->v:Landroid/view/View;

    new-instance v6, Lg/bis;

    invoke-direct {v6, v4, v1}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->v:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f090136

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->f:Landroid/view/View;

    new-instance v6, Lg/bis;

    invoke-direct {v6, v4, v2}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f090010

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->d:Landroid/view/View;

    new-instance v6, Lg/bis;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f0900c7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->q:Landroid/view/View;

    new-instance v6, Lg/bis;

    const/4 v8, 0x3

    invoke-direct {v6, v4, v8}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f090151

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->h:Landroid/view/View;

    new-instance v6, Lg/bis;

    const/4 v8, 0x4

    invoke-direct {v6, v4, v8}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    const v6, 0x7f0901fc

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lg/ka;->k:Landroid/view/View;

    new-instance v6, Lg/bis;

    invoke-direct {v6, v4, v3}, Lg/bis;-><init>(Lg/ka;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lg/ka;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    filled-new-array {v1, v1}, [I

    move-result-object v6

    filled-new-array {v1, v1}, [I

    move-result-object v7

    new-instance v3, Lg/gjs;

    const/4 v9, 0x0

    move-object v8, v5

    move-object v5, v0

    invoke-direct/range {v3 .. v9}, Lg/gjs;-><init>(Lg/ghz;[F[I[ILandroid/view/WindowManager$LayoutParams;I)V

    move-object v5, v8

    invoke-virtual {p0, v3}, La/v/DragLinearLayout;->setOnDragListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v4, Lg/ka;->n:Landroid/view/View;

    const v0, 0x7f0902b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, v4, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p0, Lg/dbv;

    invoke-direct {p0, v4, v10}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p0, v4, Lg/ka;->u:Lg/dbv;

    const-class v0, Lg/bfr;

    new-instance v1, Lg/ffi;

    invoke-direct {v1, v4}, Lg/ffi;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p0, v4, Lg/ka;->u:Lg/dbv;

    const-class v0, Lg/edn;

    new-instance v1, Lg/has;

    invoke-direct {v1}, Lg/has;-><init>()V

    invoke-virtual {p0, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p0, v4, Lg/ka;->u:Lg/dbv;

    new-instance v0, Lg/emr;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/ect;->i:Lg/fsz;

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v0, v4, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object p0, v4, Lg/ka;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v4, Lg/ka;->u:Lg/dbv;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object p0, v4, Lg/ka;->i:Landroid/view/WindowManager;

    iget-object v0, v4, Lg/ka;->n:Landroid/view/View;

    invoke-interface {p0, v0, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v4, Lg/ka;->p:Lg/ka;

    const-string v0, "tips_switch_app"

    invoke-static {p0, v0}, Lg/acw;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v4, Lg/ka;->p:Lg/ka;

    const v0, 0x7f1202ac

    invoke-static {p0, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_7
    iget-object p0, v4, Lg/ka;->l:Lg/axs;

    invoke-virtual {p0}, Lg/axs;->b()V

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_8
    invoke-virtual {p0}, Lg/baq;->aq()V

    return v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final aa()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const v1, 0x7f120044

    const v2, 0x7f120051

    const v3, 0x7f120274

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

    iget-object v0, p0, Lg/baq;->aj:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/baq;->p:Lc/b/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final ao(Lg/he;Z)V
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/baq;->as()V

    return-void

    :cond_0
    iget-object v0, p0, Lg/baq;->j:Lg/he;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lg/he;->setInspected(Z)Lg/he;

    if-nez p2, :cond_1

    iget-object p2, p0, Lg/baq;->x:Ljava/util/Stack;

    iget-object v0, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Lg/baq;->j:Lg/he;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lg/he;->setInspected(Z)Lg/he;

    iget-object v0, p0, Lg/baq;->ah:Lg/bcn;

    invoke-virtual {v0, p2}, Lg/bcn;->g(Z)V

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "tips_long_click_copy"

    invoke-static {v0, v2}, Lg/acw;->ae(Lg/dms;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const v2, 0x7f120287

    invoke-static {v0, v2}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lg/baq;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/he;->getViewIdResourceNameHuman()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120288

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, p2

    const v2, 0x7f1202b0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v2}, Lg/he;->getViewId(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lg/gjv;

    const v4, 0x7f120275

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lg/he;->getEventClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/gjv;

    const v4, 0x7f1202b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1202a2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v7}, Lg/he;->getViewIdIdHex(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-direct {v3, v4, v7}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/th;

    const v4, 0x7f1202b1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v2, v6, :cond_4

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v4, v2}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/th;

    const v3, 0x7f1202b3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lg/he;->getViewIdResourceNameHuman()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/th;

    const v3, 0x7f1202b4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/th;

    const v3, 0x7f1202ad

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/th;

    const v3, 0x7f1202b7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v4}, Lg/he;->getWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/th;

    const v3, 0x7f12028f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v4}, Lg/he;->getHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lg/baq;->t:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lg/baq;->v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lg/he;->getParentNodeInfo()Lg/he;

    move-result-object v2

    const v3, 0x7f1202a1

    const v4, 0x7f1202a8

    const/4 v5, 0x4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lg/glp;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lg/he;->getParentNodeInfo()Lg/he;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lg/glp;-><init>(Ljava/lang/String;Lg/he;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lg/th;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result v2

    const v4, 0x7f12028a

    if-lez v2, :cond_8

    iget-object v3, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lg/th;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-le v2, p2, :cond_6

    const v6, 0x7f1202aa

    goto :goto_3

    :cond_6
    const v6, 0x7f1202a4

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, p2, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/he;->getChildNodeInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/he;

    new-instance v4, Lg/vq;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ""

    if-eqz v3, :cond_7

    new-instance v6, Lg/glp;

    invoke-direct {v6, v4, v3}, Lg/glp;-><init>(Ljava/lang/String;Lg/he;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v3, Lg/th;

    const v6, 0x7f12028d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lg/th;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lg/baq;->f:Lg/ka;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lg/baq;->r:Landroid/view/View;

    iget-object v3, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {v3}, Lg/he;->getIndex()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v3}, Lg/ka;->w(I)Lg/he;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const/4 v3, 0x4

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lg/baq;->k:Landroid/view/View;

    iget-object v3, p0, Lg/baq;->f:Lg/ka;

    iget-object v4, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {v4}, Lg/he;->getIndex()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lg/ka;->w(I)Lg/he;

    move-result-object p2

    if-eqz p2, :cond_b

    const/4 v5, 0x0

    :cond_b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    new-instance p2, Lg/th;

    const v2, 0x7f12029d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getLayer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12028c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getDrawingOrderInParent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f1202a6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/gjv;

    const v2, 0x7f12027b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getBoundsInScreenSimple()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12027c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v3}, Lg/he;->getBoundsInScreenHuman(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120279

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getBoundsInParentSimple()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12027a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p1, v3}, Lg/he;->getBoundsInParentHuman(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12028b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f1202a5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x1c

    invoke-static {p2}, Lg/dyd;->bp(I)Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Lg/th;

    const-string v2, "Tool Tip Text"

    invoke-virtual {p1}, Lg/he;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 p2, 0x1a

    invoke-static {p2}, Lg/dyd;->bp(I)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lg/th;

    const-string v2, "Hint Text"

    invoke-virtual {p1}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance p2, Lg/th;

    const-string v2, "Pane Title"

    invoke-virtual {p1}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Lg/th;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12029c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120292

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isClickable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120297

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isLongClickable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120294

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isEnabled()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120295

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isFocusable()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120296

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isFocused()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120290

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isCheckable()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120291

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isChecked()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12029a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isScrollable()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120293

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isEditable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f12029b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isSelected()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120299

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isPassword()Z

    move-result v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const v2, 0x7f120298

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/he;->isMultiLine()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const-string v2, "importantForAccessibility"

    invoke-virtual {p1}, Lg/he;->isImportantForAccessibility()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lg/th;

    const-string v2, "accessibilityHeading"

    invoke-virtual {p1}, Lg/he;->isHeading()Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v0}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance p2, Lg/evf;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    iput-object p2, p1, Lg/ect;->i:Lg/fsz;

    :cond_f
    iget-object p1, p0, Lg/baq;->ae:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final ap(Ljava/util/List;)V
    .locals 10

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/baq;->ar()V

    iget-object p1, p0, Lg/baq;->ae:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    iget-object v2, p0, Lg/baq;->l:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1202b6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const v4, 0x7f1202b5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/he;

    new-instance v7, Lg/eyv;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5}, Lg/baq;->au(Lg/he;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v7, Lg/glp;->c:Lg/he;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/baq;->j:Lg/he;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lg/he;->setInspected(Z)Lg/he;

    :cond_2
    iget v0, p0, Lg/baq;->o:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Lg/baq;->o:I

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/he;

    iput-object p1, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {p1, v3}, Lg/he;->setInspected(Z)Lg/he;

    iget-object p1, p0, Lg/baq;->ah:Lg/bcn;

    invoke-virtual {p1, v3}, Lg/bcn;->g(Z)V

    iget-object p1, p0, Lg/baq;->t:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/baq;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v0, Lg/fc;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lg/ect;->i:Lg/fsz;

    :cond_4
    iget-object p1, p0, Lg/baq;->ae:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final aq()V
    .locals 7

    const-class v0, Lg/eib;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/baq;->q:Z

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
    iput-boolean v0, p0, Lg/baq;->q:Z

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

    const v4, 0x7f1202b8

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

    new-instance v1, Lg/azj;

    invoke-direct {v1, p0, v0}, Lg/azj;-><init>(Lg/baq;I)V

    const v0, 0x7f120084

    invoke-virtual {v3, v0, v1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance v0, Lg/azj;

    invoke-direct {v0, p0, v6}, Lg/azj;-><init>(Lg/baq;I)V

    const v1, 0x7f120082

    invoke-virtual {v3, v1, v0}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lg/du;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iput-object v0, v1, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

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

.method public final ar()V
    .locals 2

    iget-object v0, p0, Lg/baq;->j:Lg/he;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lg/he;->setInspected(Z)Lg/he;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/baq;->j:Lg/he;

    :cond_0
    iget-object v0, p0, Lg/baq;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lg/baq;->ah:Lg/bcn;

    invoke-virtual {v0, v1}, Lg/bcn;->g(Z)V

    return-void
.end method

.method public final as()V
    .locals 2

    iget-boolean v0, p0, Lg/baq;->ac:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/baq;->ac:Z

    invoke-virtual {p0}, Lg/baq;->ar()V

    iget-object v0, p0, Lg/baq;->m:Ljava/util/List;

    invoke-virtual {p0, v0}, Lg/baq;->ap(Ljava/util/List;)V

    return-void

    :cond_0
    iput v1, p0, Lg/baq;->o:I

    invoke-virtual {p0}, Lg/baq;->ar()V

    iget-object v0, p0, Lg/baq;->ae:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final at()V
    .locals 4

    new-instance v0, Lg/fvi;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    const-string v1, "notification"

    iget-object v2, p0, Lg/baq;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/fvi;->run()V

    return-void
.end method

.method public final au(Lg/he;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\n"

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v5, 0x14

    if-le v2, v5, :cond_0

    invoke-interface {v1, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lg/he;->getViewIdResourceNameHuman()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    const v2, 0x7f1202aa

    goto :goto_0

    :cond_2
    const v2, 0x7f1202a4

    :goto_0
    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    const-string p1, ", "

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/acw;->ax(Ljava/util/AbstractCollection;Ljava/lang/CharSequence;)V

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/baq;->j:Lg/he;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/he;->getParentNodeInfo()Lg/he;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1, v2}, Lg/baq;->ao(Lg/he;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/baq;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/baq;->f:Lg/ka;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/baq;->j:Lg/he;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lg/he;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lg/ka;->w(I)Lg/he;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, v2}, Lg/baq;->ao(Lg/he;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/baq;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/baq;->f:Lg/ka;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/baq;->j:Lg/he;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lg/he;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lg/ka;->w(I)Lg/he;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, v2}, Lg/baq;->ao(Lg/he;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lg/baq;->j:Lg/he;

    invoke-virtual {p1}, Lg/he;->getChildNodeInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lg/he;

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1, v2}, Lg/baq;->ao(Lg/he;Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lg/baq;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lg/baq;->as()V

    :cond_6
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
    sput-boolean p1, Lg/baq;->d:Z

    iget-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v1

    aget v0, v1, v0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x14

    invoke-virtual {p1, v0}, La/v/RecyclerViewWithMaxHeight;->setMaxHeight(I)La/v/RecyclerViewWithMaxHeight;

    iget-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_2
    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    if-eqz p1, :cond_4

    sget-boolean v0, Lg/baq;->d:Z

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

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object p1

    iget-object v1, p0, Lg/baq;->ah:Lg/bcn;

    invoke-virtual {p1, p0, v1}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    sget-object p1, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-object p0, p0, Lg/eib;->bc:Lg/eib;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lg/baq;->x:Ljava/util/Stack;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/baq;->al:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->u:Lg/cgg;

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
    sput-boolean p1, Lg/baq;->d:Z

    const p1, 0x7f0900d8

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lg/fso;->av(Landroid/view/View;Z)V

    const p1, 0x7f090358

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/baq;->aj:Landroid/widget/TextView;

    new-instance v3, Lg/get;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->n()I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lg/baq;->aj:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    const p1, 0x7f0900d9

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->ae:Landroid/view/View;

    const p1, 0x7f0900c7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lg/dbv;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/ciz;

    iget-object v4, p0, Lg/eib;->bc:Lg/eib;

    invoke-direct {v3, v4}, Lg/ciz;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0068

    iput v4, v3, Lg/ciz;->f:I

    const v5, 0x7f0700db

    iput v5, v3, Lg/ciz;->d:I

    const-class v6, Lg/th;

    invoke-virtual {p1, v6, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/ciz;

    iget-object v6, p0, Lg/eib;->bc:Lg/eib;

    invoke-direct {v3, v6}, Lg/ciz;-><init>(Landroid/content/Context;)V

    iput-boolean v0, v3, Lg/ciz;->c:Z

    iput v4, v3, Lg/ciz;->f:I

    iput v5, v3, Lg/ciz;->d:I

    const-class v6, Lg/gjv;

    invoke-virtual {p1, v6, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/has;

    invoke-direct {v3}, Lg/has;-><init>()V

    const-class v6, Lg/edn;

    invoke-virtual {p1, v6, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/has;

    invoke-direct {v3}, Lg/has;-><init>()V

    const v6, 0x7f0c00d3

    iput v6, v3, Lg/has;->c:I

    const-class v6, Lg/vq;

    invoke-virtual {p1, v6, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/ciz;

    iget-object v6, p0, Lg/eib;->bc:Lg/eib;

    invoke-direct {v3, v6}, Lg/ciz;-><init>(Landroid/content/Context;)V

    iput-boolean v0, v3, Lg/ciz;->g:Z

    iput v4, v3, Lg/ciz;->f:I

    iput v5, v3, Lg/ciz;->d:I

    const-class v4, Lg/glp;

    invoke-virtual {p1, v4, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lg/baq;->y:Lg/dbv;

    new-instance v3, Lg/ciz;

    iget-object v4, p0, Lg/eib;->bc:Lg/eib;

    invoke-direct {v3, v4}, Lg/ciz;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0069

    iput v4, v3, Lg/ciz;->f:I

    const-class v4, Lg/eyv;

    invoke-virtual {p1, v4, v3}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    const p1, 0x7f09018c

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/DragRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v3}, La/v/DragRelativeLayout;->setDragView(Landroid/view/View;)V

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    new-instance v5, Lg/fft;

    invoke-direct {v5, v3, v4}, Lg/fft;-><init>([F[F)V

    invoke-virtual {p1, v5}, La/v/DragRelativeLayout;->setOnDragListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f090359

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg/baq;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090132

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->v:Landroid/view/View;

    const p1, 0x7f090216

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->t:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090283

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0901be

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->r:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lg/baq;->r:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090228

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->k:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lg/baq;->k:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901a4

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900dc

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/RecyclerViewWithMaxHeight;

    iput-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v3, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    iget-object v3, p0, Lg/baq;->y:Lg/dbv;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object p1, p0, Lg/baq;->ai:La/v/RecyclerViewWithMaxHeight;

    iget-object v3, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v3}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v3

    aget v3, v3, v0

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x14

    invoke-virtual {p1, v3}, La/v/RecyclerViewWithMaxHeight;->setMaxHeight(I)La/v/RecyclerViewWithMaxHeight;

    const p1, 0x7f09000f

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lc/b/ab;

    iput-object p1, p0, Lg/baq;->p:Lc/b/ab;

    iget-object v3, p0, Lg/eib;->bc:Lg/eib;

    sget-boolean v4, Lg/baq;->d:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lg/fnp;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-static {v3}, Lg/cux;->as(Landroid/content/Context;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Lg/jt;->setSpecialMarkUp(I)V

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    new-instance v3, Lg/bcr;

    invoke-direct {v3, v0, p0}, Lg/bcr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lg/baq;->at()V

    :goto_2
    invoke-super {p0}, Lg/eib;->initData()V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p1

    invoke-virtual {p1}, Lg/atf;->n()I

    move-result p1

    if-gez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Lg/aco;

    invoke-direct {p1, v1, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/baq;->ak:Lg/aco;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lc/b/ac;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lg/baq;->i:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lg/baq;->i:Landroid/content/Intent;

    iget-object v1, p0, Lg/baq;->ak:Lg/aco;

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Lg/eva;

    invoke-direct {p1, p0, v2}, Lg/eva;-><init>(Lg/baq;I)V

    iput-object p1, p0, Lg/baq;->ad:Lg/eva;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "inspector_close"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "inspector_refresh"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    iget-object v2, p0, Lg/baq;->ad:Lg/eva;

    invoke-virtual {v1, v2, p1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lg/eva;

    invoke-direct {p1, p0, v0}, Lg/eva;-><init>(Lg/baq;I)V

    iput-object p1, p0, Lg/baq;->n:Lg/eva;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    iget-object v0, p0, Lg/baq;->n:Lg/eva;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "window_state_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    nop

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
    .locals 2

    sget-object v0, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lg/baq;->n:Lg/eva;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/baq;->n:Lg/eva;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lg/baq;->ak:Lg/aco;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/baq;->ak:Lg/aco;

    :cond_1
    iget-object v0, p0, Lg/baq;->i:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lg/baq;->ag:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
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

    iget-object v0, p0, Lg/baq;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120286

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/baq;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120284

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/baq;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120285

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/baq;->af:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const v0, 0x7f120283

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_3
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

    iput-object p1, p0, Lg/baq;->al:Ljava/lang/String;

    iget-object p1, p0, Lg/baq;->p:Lc/b/ab;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/baq;->s:Lg/he;

    invoke-virtual {p1, v0}, Lg/jt;->s(Lg/he;)Z

    invoke-virtual {p0}, Lg/baq;->ar()V

    iget-object p1, p0, Lg/baq;->ae:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lg/baq;->at()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lg/ub;->onStart()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/byd;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

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
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lg/yb;->j(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    sget v0, Lg/bus;->a:I

    const-string v0, "shizuku_compatibility_mode_enabled"

    invoke-static {p0, v0, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v0

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/baq;->ab()V

    return v1

    :cond_1
    invoke-super {p0}, Lg/eib;->w()Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lg/baq;->aj:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/baq;->p:Lc/b/ab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

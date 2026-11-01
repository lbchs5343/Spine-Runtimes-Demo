.class public Lb/c/d;
.super Lg/dxn;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public aa:Landroid/widget/LinearLayout;

.field public ab:Landroidx/recyclerview/widget/RecyclerView;

.field public ac:Lg/eqi;

.field public e:Landroid/widget/LinearLayout;

.field public f:Ljava/lang/String;

.field public g:Landroid/widget/TextView;

.field public h:Lg/sd;

.field public i:Ljava/lang/String;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Ljava/lang/String;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/content/pm/ApplicationInfo;

.field public n:Landroid/widget/LinearLayout;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/TextView;

.field public r:Lg/auj;

.field public s:Lg/sr;

.field public t:Landroid/widget/ProgressBar;

.field public u:Lb/c/d;

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/ProgressBar;

.field public x:Ljava/lang/String;

.field public y:Lg/dbv;

.field public z:Lg/dbv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method

.method public static ad(Ljava/util/LinkedHashMap;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v1, Lg/gq;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v2, Lg/gq;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lg/gq;->c:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lg/gq;->b:Ljava/util/ArrayList;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ae(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cng;

    instance-of v3, v2, Lg/fko;

    if-eqz v3, :cond_1

    check-cast v2, Lg/fko;

    iget-object v2, v2, Lg/gvs;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->bw(II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final af()V
    .locals 2

    iget-object v0, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lb/c/d;->aa:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ag(Ljava/util/LinkedHashMap;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lb/c/d;->al()V

    invoke-static/range {p1 .. p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v1

    const v2, 0x7f12036e

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/d;->an(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gq;

    iget-object v5, v5, Lg/gq;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-le v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const v9, 0x7f0901b8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gq;

    iget-object v10, v8, Lg/gq;->b:Ljava/util/ArrayList;

    iget-object v11, v8, Lg/gq;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v7, v10

    iget-object v12, v8, Lg/gq;->b:Ljava/util/ArrayList;

    new-instance v13, Lg/aqn;

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Lg/aqn;-><init>(I)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v12, ")"

    const-string v13, "("

    if-eqz v4, :cond_5

    new-instance v9, Landroid/widget/TextView;

    iget-object v14, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v9, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x11

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    const v14, 0x7f0801a0

    invoke-virtual {v9, v14}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v14, v0, Lb/c/d;->u:Lb/c/d;

    const v15, 0x7f130184

    invoke-virtual {v9, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v14, Lg/flo;

    invoke-direct {v14, v0, v5, v8, v3}, Lg/flo;-><init>(Lb/c/d;Ljava/util/ArrayList;Lg/gq;I)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v9, v14, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v2, 0x7f0700b9

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v15, -0x2

    invoke-direct {v14, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lb/c/d;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lb/c/d;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700c1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v9}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    new-instance v2, Lg/fko;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lg/gq;->d:Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v2, v9, v11, v10}, Lg/gvs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lg/gq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/aug;

    new-instance v9, Lg/gvs;

    iget-object v10, v8, Lg/aug;->a:Ljava/lang/String;

    iget-wide v11, v8, Lg/aug;->b:J

    invoke-static {v11, v12}, Lg/buj;->v(J)Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, Lg/aug;->a:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v8}, Lg/gvs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const v2, 0x7f12036e

    goto/16 :goto_2

    :cond_8
    if-nez v7, :cond_9

    const v2, 0x7f12036e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/d;->an(Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v2, v0, Lb/c/d;->o:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    const v4, 0x7f120455

    goto :goto_5

    :cond_a
    const v4, 0x7f120458

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lb/c/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0600a7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v9}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lg/dbv;

    iget-object v4, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v2, v4, v5}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, v0, Lb/c/d;->y:Lg/dbv;

    new-instance v4, Lg/la;

    iget-object v5, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v4, v5, v1}, Lg/la;-><init>(Lb/c/d;I)V

    const-string v5, "c.t.d.p.sf"

    iput-object v5, v4, Lg/la;->f:Ljava/lang/String;

    const-class v6, Lg/gvs;

    invoke-virtual {v2, v6, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v2, v0, Lb/c/d;->y:Lg/dbv;

    new-instance v4, Lg/la;

    invoke-direct {v4, v0, v3}, Lg/la;-><init>(Lb/c/d;I)V

    iput-object v5, v4, Lg/la;->f:Ljava/lang/String;

    const-class v5, Lg/fko;

    invoke-virtual {v2, v5, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v2, v0, Lb/c/d;->y:Lg/dbv;

    new-instance v4, Lg/fsk;

    invoke-direct {v4, v3}, Lg/fsk;-><init>(I)V

    const-class v3, Lg/edn;

    invoke-virtual {v2, v3, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v1, v0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object v1, v0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lb/c/d;->y:Lg/dbv;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    return-void
.end method

.method public final ah()V
    .locals 4

    iget-object v0, p0, Lb/c/d;->r:Lg/auj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/c/d;->af()V

    iget-object v0, p0, Lb/c/d;->u:Lb/c/d;

    const v1, 0x7f1203f0

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v0}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/c/d;->af()V

    iget-object v0, p0, Lb/c/d;->u:Lb/c/d;

    const v1, 0x7f120451

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lb/c/d;->h:Lg/sd;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/c/d;->h:Lg/sd;

    :cond_2
    const v0, 0x7f1203f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lb/c/d;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lg/gbm;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg/gbm;-><init>(Lb/c/d;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ai(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->aa:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final aj(Ljava/util/LinkedHashMap;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lb/c/d;->af()V

    invoke-static/range {p1 .. p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v1

    const v2, 0x7f12036f

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/d;->ai(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gq;

    iget-object v5, v5, Lg/gq;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-le v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const v9, 0x7f0901b9

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/gq;

    iget-object v10, v8, Lg/gq;->b:Ljava/util/ArrayList;

    iget-object v11, v8, Lg/gq;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v7, v10

    iget-object v12, v8, Lg/gq;->b:Ljava/util/ArrayList;

    new-instance v13, Lg/aqn;

    const/16 v14, 0xb

    invoke-direct {v13, v14}, Lg/aqn;-><init>(I)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v12, ")"

    const-string v13, "("

    if-eqz v4, :cond_5

    new-instance v9, Landroid/widget/TextView;

    iget-object v14, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v9, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x11

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    const v14, 0x7f0801a0

    invoke-virtual {v9, v14}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v14, v0, Lb/c/d;->u:Lb/c/d;

    const v15, 0x7f130184

    invoke-virtual {v9, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v14, Lg/flo;

    invoke-direct {v14, v0, v5, v8, v1}, Lg/flo;-><init>(Lb/c/d;Ljava/util/ArrayList;Lg/gq;I)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v9, v14, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v2, 0x7f0700b9

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v15, -0x2

    invoke-direct {v14, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lb/c/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lb/c/d;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700c1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v9}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    new-instance v2, Lg/fko;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lg/gq;->d:Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v10, v11, v3

    const v10, 0x7f120453

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v8, Lg/gq;->d:Ljava/lang/String;

    invoke-direct {v2, v9, v10, v11}, Lg/gvs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lg/gq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/aug;

    iget-object v10, v9, Lg/aug;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lg/gq;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    :goto_5
    if-lt v11, v12, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lg/gq;->d:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    :goto_6
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_9
    move-object v11, v10

    :goto_7
    new-instance v12, Lg/gvs;

    iget-wide v13, v9, Lg/aug;->b:J

    invoke-static {v13, v14}, Lg/buj;->v(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v11, v9, v10}, Lg/gvs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const v2, 0x7f12036f

    goto/16 :goto_2

    :cond_b
    if-nez v7, :cond_c

    const v2, 0x7f12036f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/d;->ai(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v2, v0, Lb/c/d;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    const v4, 0x7f120456

    goto :goto_8

    :cond_d
    const v4, 0x7f120457

    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lb/c/d;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0600a7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v9}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lg/dbv;

    iget-object v4, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v2, v4, v5}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, v0, Lb/c/d;->z:Lg/dbv;

    new-instance v4, Lg/la;

    iget-object v5, v0, Lb/c/d;->u:Lb/c/d;

    invoke-direct {v4, v5, v1}, Lg/la;-><init>(Lb/c/d;I)V

    const-string v5, "c.t.d.p.sf2"

    iput-object v5, v4, Lg/la;->f:Ljava/lang/String;

    const-class v6, Lg/gvs;

    invoke-virtual {v2, v6, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v2, v0, Lb/c/d;->z:Lg/dbv;

    new-instance v4, Lg/la;

    invoke-direct {v4, v0, v3}, Lg/la;-><init>(Lb/c/d;I)V

    iput-object v5, v4, Lg/la;->f:Ljava/lang/String;

    const-class v5, Lg/fko;

    invoke-virtual {v2, v5, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v2, v0, Lb/c/d;->z:Lg/dbv;

    new-instance v4, Lg/fsk;

    invoke-direct {v4, v3}, Lg/fsk;-><init>(I)V

    const-class v3, Lg/edn;

    invoke-virtual {v2, v3, v4}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v1, v0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object v1, v0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lb/c/d;->z:Lg/dbv;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    return-void
.end method

.method public final ak()V
    .locals 4

    iget-object v0, p0, Lb/c/d;->r:Lg/auj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/c/d;->al()V

    iget-object v0, p0, Lb/c/d;->u:Lb/c/d;

    const v1, 0x7f1203f0

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v0}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/c/d;->al()V

    iget-object v0, p0, Lb/c/d;->u:Lb/c/d;

    const v1, 0x7f120451

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lb/c/d;->h:Lg/sd;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/c/d;->h:Lg/sd;

    :cond_2
    const v0, 0x7f1203f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lb/c/d;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lb/c/d;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lg/gbm;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/gbm;-><init>(Lb/c/d;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final al()V
    .locals 2

    iget-object v0, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lb/c/d;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final am(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lg/bef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/bef;-><init>(Lb/c/d;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final an(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lb/c/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lg/ub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lb/c/d;->u:Lb/c/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/c/d;->x:Ljava/lang/String;

    :cond_0
    const p1, 0x7f0901ce

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lb/c/d;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f0902a1

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lb/c/d;->w:Landroid/widget/ProgressBar;

    const p1, 0x7f090354

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/c/d;->l:Landroid/widget/TextView;

    const p1, 0x7f090120

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/c/d;->o:Landroid/widget/TextView;

    const p1, 0x7f0901b6

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lb/c/d;->n:Landroid/widget/LinearLayout;

    const p1, 0x7f0902b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0901cf

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lb/c/d;->aa:Landroid/widget/LinearLayout;

    const p1, 0x7f0902a2

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lb/c/d;->t:Landroid/widget/ProgressBar;

    const p1, 0x7f090355

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/c/d;->q:Landroid/widget/TextView;

    const p1, 0x7f090121

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/c/d;->g:Landroid/widget/TextView;

    const p1, 0x7f0901b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lb/c/d;->p:Landroid/widget/LinearLayout;

    const p1, 0x7f0902b8

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lg/eqi;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lg/eqi;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object p1, p0, Lb/c/d;->ac:Lg/eqi;

    new-instance p1, Lg/sr;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lb/c/d;->s:Lg/sr;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "c.t.d.p.sf"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "c.t.d.p.sf2"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lb/c/d;->s:Lg/sr;

    invoke-virtual {v0, v1, p1}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lb/c/d;->u:Lb/c/d;

    invoke-static {p1}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p1

    iget-object v0, p0, Lb/c/d;->x:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object p1

    iput-object p1, p0, Lb/c/d;->r:Lg/auj;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const p1, 0x7f12009c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/c/d;->am(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lg/bef;

    invoke-direct {v1, p0, p1, v0}, Lg/bef;-><init>(Lb/c/d;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    const-string v0, "So List applicationInfo is null"

    invoke-static {v0, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p1, p1, Lg/auj;->j:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const p1, 0x7f120452

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lg/gbm;

    invoke-direct {v2, p0, v1}, Lg/gbm;-><init>(Lb/c/d;I)V

    const-string v1, "Dev Tools load so in apk thread"

    invoke-direct {p1, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lg/gbm;

    invoke-direct {v2, p0, v0}, Lg/gbm;-><init>(Lb/c/d;I)V

    const-string v0, "Dev Tools load installed so thread"

    invoke-direct {p1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lb/c/d;->ag(Ljava/util/LinkedHashMap;)V

    :cond_4
    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lb/c/d;->r:Lg/auj;

    iget-object p1, p1, Lg/auj;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lb/c/d;->aj(Ljava/util/LinkedHashMap;)V

    :cond_5
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lb/c/d;->u:Lb/c/d;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lb/c/d;->s:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/c/d;->s:Lg/sr;

    invoke-super {p0}, Lg/cms;->onDestroy()V

    return-void
.end method

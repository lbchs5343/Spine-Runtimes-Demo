.class public Lc/a/a;
.super Lg/eib;
.source "SourceFile"

# interfaces
.implements Lg/eha;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public e:Lg/dbv;

.field public f:Z

.field public g:Lg/cwz;

.field public h:Landroid/view/View;

.field public i:Lg/sd;

.field public j:Z

.field public k:Lg/bxe;

.field public l:Lg/aco;

.field public m:Ljava/util/ArrayList;

.field public n:Lg/sd;

.field public o:Ljava/lang/String;

.field public p:Lg/czf;

.field public q:Lg/ik;

.field public r:Lg/drp;

.field public s:Lg/ejn;

.field public t:Lg/czf;

.field public u:Landroid/content/Intent;

.field public v:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/eib;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a;->j:Z

    iput-boolean v0, p0, Lc/a/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a;->s:Lg/ejn;

    return-void
.end method


# virtual methods
.method public final aa()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const v1, 0x7f120044

    const v2, 0x7f120051

    const v3, 0x7f120576

    invoke-static {v0, v3, v1, v2}, Lg/aky;->o(Landroid/app/Activity;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ab()V
    .locals 2

    iget-object v0, p0, Lc/a/a;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/eib;->bc:Lg/eib;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {v0, p1}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f090358

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/a/a;->h:Landroid/view/View;

    new-instance v0, Lg/get;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v1, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    new-instance v1, Lg/ejf;

    iget-object v2, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    invoke-direct {v1, v2, p1}, Lg/ejf;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const v2, 0x7f06003d

    invoke-static {p0, v2}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iput-object p1, v1, Lg/ejf;->c:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lg/fji;)V

    invoke-static {p0}, Lg/dzm;->bd(Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x8c5

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super {p0}, Lg/eib;->initData()V

    new-instance p1, Lg/aco;

    const/4 v1, 0x6

    invoke-direct {p1, v1, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lc/a/a;->l:Lg/aco;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lc/a/b;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lc/a/a;->u:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lc/a/a;->l:Lg/aco;

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    invoke-static {p1}, Lg/cwz;->b(Landroid/content/Context;)Lg/cwz;

    move-result-object p1

    iput-object p1, p0, Lc/a/a;->g:Lg/cwz;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    new-instance v1, Lg/dbv;

    invoke-direct {v1, p0, p1}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lc/a/a;->e:Lg/dbv;

    new-instance p1, Lg/bxe;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p1, Lg/bxe;->c:Z

    iput-boolean v3, p1, Lg/bxe;->d:Z

    iput-object p1, p0, Lc/a/a;->k:Lg/bxe;

    const-class v2, Lg/vc;

    invoke-virtual {v1, v2, p1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lc/a/a;->e:Lg/dbv;

    new-instance v1, Lg/ik;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, v1, Lg/ik;->d:Z

    iput-boolean v0, v1, Lg/ik;->e:Z

    iput-object p0, v1, Lg/ik;->c:Lc/a/a;

    iput-object v1, p0, Lc/a/a;->q:Lg/ik;

    const-class v2, Lg/gzr;

    invoke-virtual {p1, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object p1, p0, Lc/a/a;->e:Lg/dbv;

    new-instance v1, Lg/fnq;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    iput-object v1, p1, Lg/ect;->i:Lg/fsz;

    iget-object p1, p0, Lc/a/a;->q:Lg/ik;

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "wv_show_icon"

    invoke-static {v1, v2, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lg/ik;->d:Z

    iget-object p1, p0, Lc/a/a;->q:Lg/ik;

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "wv_show_name"

    invoke-static {v1, v2, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lg/ik;->e:Z

    iget-object p1, p0, Lc/a/a;->k:Lg/bxe;

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "wv_show_title"

    invoke-static {v1, v2, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lg/bxe;->d:Z

    iget-object p1, p0, Lc/a/a;->k:Lg/bxe;

    iget-object v1, p0, Lg/eib;->bc:Lg/eib;

    const-string v2, "wv_show_time"

    invoke-static {v1, v2, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lg/bxe;->c:Z

    iget-object p1, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    new-instance p1, Lg/czf;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lg/czf;-><init>(Lc/a/a;I)V

    iput-object p1, p0, Lc/a/a;->t:Lg/czf;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    iget-object v1, p0, Lc/a/a;->t:Lg/czf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "window_state_changed"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lg/czf;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lg/czf;-><init>(Lc/a/a;I)V

    iput-object p1, p0, Lc/a/a;->p:Lg/czf;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    iget-object v1, p0, Lc/a/a;->p:Lg/czf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "window_item_clicked"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p1, Lg/aoy;

    invoke-direct {p1, p0}, Lg/aoy;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lg/erl;->ab(Landroid/content/ContextWrapper;Lg/gpv;)V

    iget-object p1, p0, Lg/eib;->bb:Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-boolean p1, p0, Lc/a/a;->j:Z

    if-eqz p1, :cond_3

    iput-boolean v3, p0, Lc/a/a;->j:Z

    return-void

    :cond_3
    iput-boolean v0, p0, Lc/a/a;->j:Z

    invoke-virtual {p0}, Lc/a/a;->w()Z

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09030d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "wv_small_window_default"

    invoke-static {v2, v3, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0902ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "wv_show_icon"

    invoke-static {v2, v3, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f090300

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "wv_show_name"

    invoke-static {v2, v3, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f090305

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "wv_show_title"

    invoke-static {v2, v3, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f090304

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lg/eib;->bc:Lg/eib;

    const-string v3, "wv_show_time"

    invoke-static {v2, v3, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a;->j:Z

    invoke-static {p0}, Lg/erl;->ar(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lc/a/a;->p:Lg/czf;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lc/a/a;->t:Lg/czf;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/drp;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/a;->l:Lg/aco;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lc/a/a;->u:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lg/dms;->clickInterval:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09030c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lc/a/a;->x(Z)Z

    return v2

    :cond_1
    const v1, 0x7f09030d

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    iget-boolean v0, v0, Lg/drp;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lc/a/a;->x(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_small_window_default"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v2

    :cond_3
    const v1, 0x7f090281

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lc/a/a;->j:Z

    if-eqz v0, :cond_4

    const v0, 0x7f12057a

    goto :goto_0

    :cond_4
    const v0, 0x7f12057c

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object p1, p0, Lg/eib;->bb:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lc/a/a;->j:Z

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lc/a/a;->j:Z

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lc/a/a;->j:Z

    invoke-virtual {p0}, Lc/a/a;->w()Z

    :goto_1
    iget-boolean p1, p0, Lc/a/a;->j:Z

    if-eqz p1, :cond_7

    const p1, 0x7f12057b

    goto :goto_2

    :cond_7
    const p1, 0x7f12057d

    :goto_2
    invoke-static {p0, p1}, Lg/gm;->f(Landroid/content/Context;I)V

    return v2

    :cond_8
    const v1, 0x7f0902ff

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lc/a/a;->q:Lg/ik;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/ik;->d:Z

    iget-object v0, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_show_icon"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v2

    :cond_9
    const v1, 0x7f090300

    if-ne v0, v1, :cond_a

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lc/a/a;->q:Lg/ik;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/ik;->e:Z

    iget-object v0, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_show_name"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v2

    :cond_a
    const v1, 0x7f090305

    if-ne v0, v1, :cond_b

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lc/a/a;->k:Lg/bxe;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/bxe;->d:Z

    iget-object v0, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_show_title"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v2

    :cond_b
    const v1, 0x7f090304

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lc/a/a;->k:Lg/bxe;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/bxe;->c:Z

    iget-object v0, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_show_time"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v2

    :cond_c
    const v1, 0x7f0900c2

    if-ne v0, v1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a;->o:Ljava/lang/String;

    iget-object p1, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lc/a/a;->e:Lg/dbv;

    iget-object v0, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    return v2

    :cond_d
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Lg/ub;->onStart()V

    iget-object v0, p0, Lc/a/a;->g:Lg/cwz;

    invoke-virtual {v0}, Lg/haz;->i()V

    iget-object v0, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lc/a/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_small_window_tips1"

    invoke-static {v0, v1}, Lg/acw;->ae(Lg/dms;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120585

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lg/dij;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x2

    const v4, 0x7f120272

    invoke-static {v0, v1, v3, v4, v2}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object v0

    iput-object v0, p0, Lc/a/a;->n:Lg/sd;

    :cond_1
    iget-object v0, p0, Lg/eib;->bb:Ljava/lang/String;

    invoke-static {p0, v0}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/a/a;->ab()V

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lc/a/a;->g:Lg/cwz;

    invoke-virtual {v0}, Lg/haz;->ae()V

    invoke-super {p0}, Lg/ub;->onStop()V

    return-void
.end method

.method public final w()Z
    .locals 3

    sget-object v0, Lg/erl;->s:Lg/ctt;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Lg/yb;->j(Landroid/app/Activity;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lg/erl;->s:Lg/ctt;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lg/ctt;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lg/ctt;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/a/a;->ab()V

    return v1

    :cond_1
    invoke-super {p0}, Lg/eib;->w()Z

    move-result v0

    return v0
.end method

.method public final x(Z)Z
    .locals 6

    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lc/a/a;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    iget-boolean v0, v0, Lg/drp;->i:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/a/a;->r:Lg/drp;

    invoke-virtual {p1}, Lg/drp;->l()V

    :cond_1
    return v2

    :cond_2
    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lc/a/a;->f:Z

    if-eqz v0, :cond_3

    monitor-exit p1

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    invoke-static {p1}, Lg/dyd;->ar(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p0}, Lg/gdl;->h(Lc/a/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_1
    iput-boolean v2, p0, Lc/a/a;->f:Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lg/eib;->bc:Lg/eib;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Lg/fyt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    new-instance v3, Lg/gqc;

    invoke-direct {v3, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12047b

    invoke-virtual {v3, v4}, Lg/gqc;->am(I)Lg/gqc;

    const v4, 0x7f12057e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v4, v5, v2

    const p1, 0x7f12014a

    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v4, Lg/die;

    iput-object p1, v4, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance p1, Lg/ddp;

    invoke-direct {p1, p0, v2}, Lg/ddp;-><init>(Lc/a/a;I)V

    const v2, 0x7f120084

    invoke-virtual {v3, v2, p1}, Lg/gqc;->ay(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    new-instance p1, Lg/ddp;

    invoke-direct {p1, p0, v1}, Lg/ddp;-><init>(Lc/a/a;I)V

    const v2, 0x7f120082

    invoke-virtual {v3, v2, p1}, Lg/gqc;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/du;

    const/4 v2, 0x7

    invoke-direct {p1, v2, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    iget-object v2, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/die;

    iput-object p1, v2, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3}, Lg/gqc;->r()Lg/fpl;

    move-result-object p1

    invoke-static {v0, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lc/a/a;->y()V

    return v2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final y()V
    .locals 9

    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lg/drp;->i:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-class v1, Lg/drp;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lg/drp;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x2

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7da

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1a

    invoke-static {v1}, Lg/dyd;->bp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7f6

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    iget-object v1, v0, Lg/drp;->h:Lg/drp;

    invoke-static {v1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v1, v1, v2

    if-ge v4, v1, :cond_2

    int-to-float v1, v4

    const v4, 0x3f333333    # 0.7f

    :goto_0
    mul-float v1, v1, v4

    goto :goto_1

    :cond_2
    int-to-float v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_0

    :goto_1
    float-to-int v1, v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0c00df

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lg/drp;->f:Landroid/view/View;

    const v4, 0x7f0900c7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lg/get;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lg/drp;->f:Landroid/view/View;

    const v4, 0x7f090329

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v4, Lg/anh;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v5, v1}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lg/drp;->f:Landroid/view/View;

    new-instance v4, Lg/hcb;

    invoke-direct {v4, v0, v3}, Lg/hcb;-><init>(Lg/drp;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lg/dbv;

    iget-object v4, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v4}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lg/drp;->k:Lg/dbv;

    const-class v4, Lg/bfr;

    new-instance v5, Lg/ffi;

    invoke-direct {v5, v0}, Lg/ffi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v1, v0, Lg/drp;->k:Lg/dbv;

    iget-object v4, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object v1, v0, Lg/drp;->k:Lg/dbv;

    new-instance v4, Lg/fc;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object v4, v1, Lg/ect;->i:Lg/fsz;

    iget-object v1, v0, Lg/drp;->f:Landroid/view/View;

    const v4, 0x7f0902b7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lg/drp;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v4, v0, Lg/drp;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object v1, v0, Lg/drp;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v0, Lg/drp;->k:Lg/dbv;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    iget-object v1, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, v0, Lg/drp;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v0, Lg/drp;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    iget-object v1, v0, Lg/drp;->j:Landroid/view/WindowManager;

    iget-object v0, v0, Lg/drp;->f:Landroid/view/View;

    invoke-interface {v1, v0, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lc/a/a;->n:Lg/sd;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/sd;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/a/a;->n:Lg/sd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    :cond_5
    iget-object v0, p0, Lc/a/a;->r:Lg/drp;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lg/drp;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/eib;->bc:Lg/eib;

    const-string v1, "wv_small_window_tips2"

    invoke-static {v0, v1}, Lg/acw;->ae(Lg/dms;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lg/dyn;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lc/a/a;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

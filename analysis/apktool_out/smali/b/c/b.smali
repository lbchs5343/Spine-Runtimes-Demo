.class public Lb/c/b;
.super Lg/dxn;
.source "SourceFile"


# instance fields
.field public d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ub;-><init>()V

    return-void
.end method

.method public static e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    new-instance v0, Lg/th;

    invoke-direct {v0, p2, p3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lg/th;

    invoke-direct {p1, p2, p3}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    const p1, 0x7f0902b7

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lb/c/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v1, p0, Lb/c/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120078

    goto :goto_0

    :cond_0
    const v1, 0x7f120079

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_1
    sget-object p1, Lg/buj;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    const-class p1, Lg/buj;

    monitor-enter p1

    :try_start_0
    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "mdpi"

    const-string v5, "48*48"

    const-string v7, "22*22 area in 24*24"

    const-string v8, "24*24 area in 32*32"

    const/16 v6, 0xa0

    invoke-direct/range {v3 .. v8}, Lg/ahx;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "hdpi"

    const-string v5, "72*72"

    const-string v7, "33*33 area in 36*36"

    const-string v8, "36*36 area in 48*48"

    const/16 v6, 0xf0

    invoke-direct/range {v3 .. v8}, Lg/ahx;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "xhdpi"

    const-string v5, "96*96"

    const-string v7, "44*44 area in 48*48"

    const-string v8, "48*48 area in 64*64"

    const/16 v6, 0x140

    invoke-direct/range {v3 .. v8}, Lg/ahx;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "xxhdpi"

    const-string v5, "144*144"

    const-string v7, "66*66 area in 72*72"

    const-string v8, "72*72 area in 96*96"

    const/16 v6, 0x1e0

    invoke-direct/range {v3 .. v8}, Lg/ahx;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "xxxhdpi"

    const-string v5, "192*192"

    const-string v7, "88*88 area in 96*96"

    const-string v8, "96*96 area in 128*128"

    const/16 v6, 0x280

    invoke-direct/range {v3 .. v8}, Lg/ahx;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/buj;->h:Ljava/util/ArrayList;

    new-instance v3, Lg/ahx;

    const-string v4, "Google Play"

    const-string v5, "512*512"

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lg/ahx;->d:I

    iput-object v4, v3, Lg/ahx;->e:Ljava/lang/String;

    iput-object v5, v3, Lg/ahx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    sget-object p1, Lg/buj;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_4

    :cond_4
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Lg/fso;->t(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_5
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ahx;

    add-int/2addr v6, v0

    if-eqz v2, :cond_6

    iget-object v8, v7, Lg/ahx;->e:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v3, Lg/ahx;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget v8, v7, Lg/ahx;->d:I

    iput v8, v3, Lg/ahx;->d:I

    iget-object v8, v7, Lg/ahx;->e:Ljava/lang/String;

    iput-object v8, v3, Lg/ahx;->e:Ljava/lang/String;

    iget-object v8, v7, Lg/ahx;->a:Ljava/lang/String;

    iput-object v8, v3, Lg/ahx;->a:Ljava/lang/String;

    iget-object v8, v7, Lg/ahx;->b:Ljava/lang/String;

    iput-object v8, v3, Lg/ahx;->b:Ljava/lang/String;

    iget-object v7, v7, Lg/ahx;->c:Ljava/lang/String;

    iput-object v7, v3, Lg/ahx;->c:Ljava/lang/String;

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "Launcher Icons"

    iget-object v9, v7, Lg/ahx;->a:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-static {v4, v10, v8, v9}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    const-string v8, "Notification Icons"

    iget-object v9, v7, Lg/ahx;->b:Ljava/lang/String;

    invoke-static {v4, v10, v8, v9}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    const-string v8, "Action Bar and Tab Icons"

    iget-object v7, v7, Lg/ahx;->c:Ljava/lang/String;

    invoke-static {v4, v10, v8, v7}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    new-instance v7, Lg/edn;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12020b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lg/ahx;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lg/ahx;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p1, "Launcher Icons"

    iget-object v1, v3, Lg/ahx;->a:Ljava/lang/String;

    invoke-static {v4, v0, p1, v1}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "Notification Icons"

    iget-object v0, v3, Lg/ahx;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v4, v1, p1, v0}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "Action Bar and Tab Icons"

    iget-object v0, v3, Lg/ahx;->c:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v4, v1, p1, v0}, Lb/c/b;->e(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Lg/edn;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    new-instance p1, Lg/dbv;

    invoke-direct {p1, p0, v4}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-class v0, Lg/th;

    new-instance v1, Lg/ciz;

    invoke-direct {v1, p0}, Lg/ciz;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c006e

    iput v2, v1, Lg/ciz;->f:I

    invoke-virtual {p1, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    const-class v0, Lg/ahx;

    new-instance v1, Lg/fsk;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/fsk;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    const-class v0, Lg/edn;

    new-instance v1, Lg/has;

    invoke-direct {v1}, Lg/has;-><init>()V

    const v2, 0x7f0c00d4

    iput v2, v1, Lg/has;->c:I

    invoke-virtual {p1, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p0, Lb/c/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "menu_open_project_ui"

    invoke-static {p0, v0}, Lg/eg;->af(Lg/dxn;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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

    const v1, 0x7f09026d

    if-ne v0, v1, :cond_1

    const-string p1, "op_source_menu_ui_standard"

    invoke-static {p0, p1}, Lg/bys;->d(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "menu_open_project_ui"

    invoke-static {p0, p1}, Lg/eg;->v(Lg/dxn;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

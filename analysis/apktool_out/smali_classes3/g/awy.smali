.class public abstract Lg/awy;
.super Lg/cms;
.source "SourceFile"


# instance fields
.field public p:Lg/awy;


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super/range {p0 .. p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/awy;->p:Lg/awy;

    const v1, 0x7f0900d2

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lg/awy;->p:Lg/awy;

    sget-object v4, Lg/bkl;->a:Ljava/lang/String;

    const-string v4, "compact_mode"

    invoke-static {v3, v4, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v3, Lg/cey;

    invoke-direct {v3, p0, v2}, Lg/cey;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const v8, 0x7f12023f

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "follow_system"

    invoke-virtual {v5, v9, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en"

    const-string v3, "English"

    invoke-virtual {v5, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_CN"

    const-string v3, "\u7b80\u4f53\u4e2d\u6587"

    invoke-virtual {v5, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_TW"

    const-string v3, "\u7e41\u9ad4\u4e2d\u6587\uff08\u53f0\u7063\uff09"

    invoke-virtual {v5, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_HK"

    const-string v3, "\u7e41\u9ad4\u4e2d\u6587\uff08\u9999\u6e2f\uff09"

    invoke-virtual {v5, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    const-string v3, "app_language"

    invoke-static {v1, v3, v9}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lg/axl;

    invoke-direct {v7, p0, v2}, Lg/axl;-><init>(Lg/awy;I)V

    const v1, 0x7f0901bb

    const v2, 0x7f0901bc

    const v3, 0x7f0901bd

    const v4, 0x7f12040b

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lg/awy;->q(IIIILjava/util/LinkedHashMap;Ljava/lang/String;Lg/axl;)V

    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f12017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dark"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f12017d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "light"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/awy;->p:Lg/awy;

    const-string v2, "dark_mode"

    invoke-static {v1, v2, v9}, Lg/byh;->ax(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lg/axl;

    const/4 v1, 0x1

    invoke-direct {v7, p0, v1}, Lg/axl;-><init>(Lg/awy;I)V

    const v1, 0x7f0900fb

    const v2, 0x7f0900fc

    const v3, 0x7f0900fd

    const v4, 0x7f120409

    invoke-virtual/range {v0 .. v7}, Lg/awy;->q(IIIILjava/util/LinkedHashMap;Ljava/lang/String;Lg/axl;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lg/cro;->z(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lg/dyd;->ao(Landroid/view/View;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

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

    const v1, 0x7f090010

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lg/awy;->r()V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final q(IIIILjava/util/LinkedHashMap;Ljava/lang/String;Lg/axl;)V
    .locals 8

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p2, p3, p6

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const p1, 0x7f12040d

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lg/czt;

    move-object v1, p0

    move v4, p4

    move-object v2, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lg/czt;-><init>(Lg/awy;Ljava/util/LinkedHashMap;Landroid/widget/TextView;ILandroid/view/View;Landroid/widget/TextView;Lg/axl;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "about-page"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, p0

    check-cast v2, Lc/e/a;

    iget-object v2, v2, Lg/awy;->p:Lg/awy;

    invoke-static {v2}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "showa"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lg/dmb;

    invoke-direct {v2}, Lg/cyz;-><init>()V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

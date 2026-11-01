.class public final synthetic Lg/aww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/aww;->b:I

    iput-object p1, p0, Lg/aww;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/aww;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget v0, p0, Lg/aww;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/aww;->c:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    iget-object v0, p0, Lg/aww;->a:Ljava/lang/Object;

    check-cast v0, Lg/gzr;

    iget-object v0, v0, Lg/gzr;->c:Ljava/lang/String;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aww;->c:Ljava/lang/Object;

    check-cast v0, Lg/sd;

    iget-object v1, p0, Lg/aww;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lg/cle;->ak(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/aww;->c:Ljava/lang/Object;

    check-cast p1, Lg/bau;

    iget-object v0, p0, Lg/aww;->a:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    iget-object p1, p1, Lg/csm;->e:Lg/efx;

    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    const-string v1, "extra_pkgname"

    const-string v2, "com.miui.securitycenter"

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-static {}, Lg/fnp;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x10000000

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {p1, v0}, Lg/eyt;->bv(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_2
    iget-object p1, p0, Lg/aww;->c:Ljava/lang/Object;

    check-cast p1, Lg/amy;

    iget-object v0, p0, Lg/aww;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lg/amy;->n:Ljava/util/HashSet;

    iget-object v2, p1, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p1, Lg/amy;->d:Lg/dbv;

    iget-object v5, v5, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {v5}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p1, Lg/amy;->d:Lg/dbv;

    invoke-virtual {v5, v4}, Lg/dbv;->f(I)Lg/cng;

    move-result-object v5

    instance-of v6, v5, Lg/dpj;

    if-eqz v6, :cond_1

    check-cast v5, Lg/dpj;

    iget-object v5, v5, Lg/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p1, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p1, Lg/amy;->g:Lg/ebw;

    invoke-virtual {v0}, Lg/ebw;->i()V

    iget-object v0, p1, Lg/amy;->d:Lg/dbv;

    invoke-virtual {p1}, Lg/amy;->p()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object v0, p1, Lg/amy;->d:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->bw(II)V

    new-instance v0, Lg/ebw;

    iget-object v1, p1, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090296

    invoke-virtual {p1, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lg/amy;->d:Lg/dbv;

    iget-object v3, v3, Lg/dbv;->c:Ljava/util/ArrayList;

    new-instance v4, Lg/aoi;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lg/ebw;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Ljava/util/ArrayList;Lg/aoi;)V

    iput-object v0, p1, Lg/amy;->g:Lg/ebw;

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/aww;->c:Ljava/lang/Object;

    check-cast p1, Lg/cyz;

    iget-object v0, p0, Lg/aww;->a:Ljava/lang/Object;

    check-cast v0, Lg/daa;

    iget-boolean v1, p1, Lg/cyz;->x:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lg/cyz;->x:Z

    invoke-virtual {v0}, Lg/daa;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

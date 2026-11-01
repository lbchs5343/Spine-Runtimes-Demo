.class public abstract Lg/eib;
.super Lg/dms;
.source "SourceFile"


# instance fields
.field public ay:Z

.field public az:Z

.field public ba:Z

.field public bb:Ljava/lang/String;

.field public bc:Lg/eib;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/eib;->ay:Z

    iput-boolean v0, p0, Lg/eib;->az:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eib;->ba:Z

    return-void
.end method

.method public static bd(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lg/bxf;Lg/du;)Lg/gqo;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    const v2, 0x7f120055

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message_is_html"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lg/fso;->ar(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v1

    new-instance v1, Lg/dxu;

    const/4 v2, 0x1

    invoke-direct {v1, p3, p0, v2}, Lg/dxu;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;I)V

    const p3, 0x7f120046

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lg/ads;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/ads;-><init>(Landroid/app/Activity;I)V

    const v3, 0x7f120047

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/dxu;

    const/4 v5, 0x0

    invoke-direct {v4, p4, p0, v5}, Lg/dxu;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;I)V

    const p4, 0x7f120082

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "adUnitId"

    invoke-static {p2}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    new-instance p2, Lg/du;

    const/4 v5, 0x2

    invoke-direct {p2, v5, p5}, Lg/du;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance p5, Lg/gqo;

    invoke-direct {p5}, Lg/gqo;-><init>()V

    iget-object v5, p5, Lg/gqo;->f:Landroid/widget/TextView;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v5, 0x7f0600a2

    invoke-virtual {p5, v5, v4, p4}, Lg/gqo;->x(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iput v6, p5, Lg/gqo;->h:I

    iget-object p4, p5, Lg/gqo;->l:Landroid/widget/TextView;

    if-eqz p4, :cond_3

    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p5, v5, v2, v3}, Lg/gqo;->z(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iget-object p4, p5, Lg/gqo;->d:Landroid/widget/TextView;

    if-eqz p4, :cond_4

    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const p4, 0x7f06004e

    invoke-virtual {p5, p4, v1, p3}, Lg/gqo;->y(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iput-object p2, p5, Lg/gqo;->e:Lg/du;

    iput v6, p5, Lg/gqo;->m:I

    if-ltz p1, :cond_5

    iput p1, p5, Lg/gqo;->w:I

    :cond_5
    invoke-static {p0, p5, v0, v6}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-object p5
.end method


# virtual methods
.method public abstract aa()Ljava/lang/String;
.end method

.method public abstract ab()V
.end method

.method public initData()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "accessibilityClassName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/eib;->bb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lg/ern;->l(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lg/eib;->bb:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "No accessibilityClassName"

    invoke-static {v0}, Lg/erl;->y(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 10

    const-class v1, Lg/eib;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lg/eib;->ay:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    move-object v4, p0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/eib;->bb:Ljava/lang/String;

    invoke-static {p0, v0}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/eib;->z()V

    const-class v3, Lg/eib;

    monitor-enter v3

    :try_start_1
    iput-boolean v1, p0, Lg/eib;->ay:Z

    iput-boolean v1, p0, Lg/eib;->az:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v1, p0, Lg/eib;->ba:Z

    invoke-virtual {p0}, Lg/eib;->aa()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    new-instance v7, Lg/fgw;

    const/4 v0, 0x0

    invoke-direct {v7, v0, p0}, Lg/fgw;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lg/du;

    const/4 v0, 0x1

    invoke-direct {v9, v0, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lg/eib;->bd(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lg/bxf;Lg/du;)Lg/gqo;

    return v2

    :catchall_1
    move-exception v0

    move-object v4, p0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v4, p0

    const-class v3, Lg/eib;

    monitor-enter v3

    :try_start_3
    iput-boolean v2, v4, Lg/eib;->ay:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {p0}, Lg/eib;->ab()V

    return v1

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_1
.end method

.method public abstract z()V
.end method

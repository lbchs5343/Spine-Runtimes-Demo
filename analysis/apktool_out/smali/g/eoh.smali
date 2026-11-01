.class public final Lg/eoh;
.super Lg/czu;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/eoh;->e:I

    iput-object p1, p0, Lg/eoh;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/eoh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lg/czu;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    iget v0, p0, Lg/eoh;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoh;->d:Ljava/lang/Object;

    check-cast v0, Lg/cwh;

    iget-object v1, p0, Lg/eoh;->c:Ljava/lang/Object;

    check-cast v1, Lg/dgk;

    invoke-virtual {v1}, Lg/dgk;->getCopyText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/cwh;->al:Lg/ctx;

    invoke-virtual {v1}, Lg/dgk;->getCopyText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v2, v5, v3, v4}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    :cond_0
    invoke-virtual {v1}, Lg/dgk;->getToast()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lg/cwh;->al:Lg/ctx;

    invoke-virtual {v1}, Lg/dgk;->getToast()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    invoke-virtual {v1}, Lg/dgk;->getPathType()I

    move-result v2

    if-ne v3, v2, :cond_2

    iget-object v4, v0, Lg/cwh;->al:Lg/ctx;

    invoke-static {v4}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lg/dgk;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v9, 0x0

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v4 .. v9}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    iget-object v4, v0, Lg/cwh;->al:Lg/ctx;

    invoke-static {v4, v1}, Lg/ffi;->f(Landroid/content/Context;Lg/dgk;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    :goto_0
    iget-object v0, v0, Lg/cwh;->al:Lg/ctx;

    invoke-static {v1}, Lg/ffi;->e(Lg/dgk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lg/acw;->s(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eoh;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/p;

    iget-object v1, v0, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    :goto_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v0, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p;)I

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    invoke-virtual {v1, v4, v0, v3}, Landroidx/recyclerview/widget/m;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/m;Landroidx/recyclerview/widget/p;I)I

    move-result v1

    :goto_2
    if-eq v1, v2, :cond_7

    iget-object v2, p0, Lg/eoh;->d:Ljava/lang/Object;

    check-cast v2, Lg/ect;

    iget-object v2, v2, Lg/ect;->i:Lg/fsz;

    invoke-interface {v2, v0, v1}, Lg/fsz;->s(Landroidx/recyclerview/widget/p;I)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

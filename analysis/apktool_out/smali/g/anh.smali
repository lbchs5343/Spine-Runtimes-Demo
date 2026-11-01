.class public final Lg/anh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/anh;->b:I

    iput-object p1, p0, Lg/anh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/anh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/fxu;)V
    .locals 3

    const/16 v0, 0x9

    iput v0, p0, Lg/anh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    new-instance v0, Lg/bdt;

    iget-object v1, p1, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lg/fxu;->a:Ljava/lang/CharSequence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x1000

    iput v2, v0, Lg/bdt;->g:I

    iput v2, v0, Lg/bdt;->p:I

    const/4 v2, 0x0

    iput-object v2, v0, Lg/bdt;->f:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lg/bdt;->k:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/bdt;->d:Z

    iput-boolean v2, v0, Lg/bdt;->c:Z

    const/16 v2, 0x10

    iput v2, v0, Lg/bdt;->j:I

    iput-object v1, v0, Lg/bdt;->l:Landroid/content/Context;

    iput-object p1, v0, Lg/bdt;->h:Ljava/lang/CharSequence;

    iput-object v0, p0, Lg/anh;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/anh;->b:I

    iput-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/anh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget p1, p0, Lg/anh;->b:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    sget-boolean v0, Lg/drp;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0801a7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0801a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/drp;

    iget-object p1, p1, Lg/drp;->h:Lg/drp;

    sget-boolean v0, Lg/drp;->a:Z

    if-nez v0, :cond_1

    const v0, 0x7f12057b

    goto :goto_1

    :cond_1
    const v0, 0x7f12057d

    :goto_1
    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    sget-boolean p1, Lg/drp;->a:Z

    xor-int/2addr p1, v3

    sput-boolean p1, Lg/drp;->a:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/fxu;

    iget-object v0, p1, Lg/fxu;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lg/fxu;->f:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast p1, Lg/bdt;

    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_2
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/ms;

    iget-object v3, p1, Lg/ms;->an:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p1, Lg/ms;->am:Lg/la;

    iget-object v3, v2, Lg/la;->c:Landroid/content/Context;

    invoke-static {v3}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v2, v2, Lg/la;->f:Ljava/lang/String;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fp"

    iget-object v5, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v5, Lg/gvs;

    iget-object v6, v5, Lg/gvs;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "fn"

    iget-object v5, v5, Lg/gvs;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object p1, p1, Lg/ms;->an:Landroid/widget/ImageView;

    new-instance v2, Lg/byd;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    iget-boolean v0, p1, Lg/csm;->g:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lg/eas;->i:Landroid/os/Handler;

    iget-object v0, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/doq;

    iget-object v0, p1, Lg/efx;->bb:Lg/efx;

    iget-object v1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lg/baf;->ap(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p1, Lg/efx;->bb:Lg/efx;

    const v0, 0x7f1203a3

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_4
    return-void

    :pswitch_4
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/gfg;

    iget-object v3, p1, Lg/gfg;->an:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p1, Lg/gfg;->am:Lg/la;

    iget-object v3, v2, Lg/la;->c:Landroid/content/Context;

    check-cast v3, Lb/c/d;

    invoke-static {v3}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v2, v2, Lg/la;->f:Ljava/lang/String;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "fp"

    iget-object v5, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v5, Lg/gvs;

    iget-object v6, v5, Lg/gvs;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "fn"

    iget-object v5, v5, Lg/gvs;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg/fzn;->q(Landroid/content/Intent;)V

    iget-object p1, p1, Lg/gfg;->an:Landroid/widget/ImageView;

    new-instance v2, Lg/byd;

    const/16 v3, 0xf

    invoke-direct {v2, v3, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_5
    iget-object p1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v2}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lg/afo;->ai(Landroid/content/Context;)V

    :goto_2
    return-void

    :pswitch_6
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    iget-boolean v0, p1, Lg/csm;->g:Z

    if-nez v0, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object p1, p1, Lg/csm;->e:Lg/efx;

    iget-object v0, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v8, "pn=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-class v1, Lg/aoy;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lg/aoy;->n(Lg/efx;)Lg/aoy;

    move-result-object p1

    iget-object p1, p1, Lg/aoy;->h:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "d"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_8

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lg/cux;->ad(Landroid/database/Cursor;)Lg/cyl;

    move-result-object v4

    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v4, :cond_b

    iget-object p1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast p1, Lg/auj;

    iget p1, p1, Lg/auj;->g:I

    iget v0, v4, Lg/cyl;->e:I

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    new-instance v0, Lg/gqc;

    iget-object v1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v1, Lg/eas;

    iget-object v1, v1, Lg/csm;->e:Lg/efx;

    invoke-direct {v0, v1}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v1, Lg/auj;

    iget-object v4, v1, Lg/auj;->j:Ljava/lang/String;

    iget-object v5, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v5, Lg/die;

    iput-object v4, v5, Lg/die;->f:Ljava/lang/CharSequence;

    iget-object v4, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v4, Lg/eas;

    iget-object v4, v4, Lg/csm;->e:Lg/efx;

    invoke-virtual {v1, v4, v3}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v3, Lg/die;

    iput-object v1, v3, Lg/die;->v:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_c

    const v1, 0x7f030001

    goto :goto_5

    :cond_c
    const/high16 v1, 0x7f030000

    :goto_5
    new-instance v3, Lg/azn;

    invoke-direct {v3, p0, v2, p1}, Lg/azn;-><init>(Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1, v3}, Lg/gqc;->aw(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    iget-object p1, p1, Lg/csm;->e:Lg/efx;

    invoke-virtual {v0}, Lg/gqc;->ak()Lg/fpl;

    move-result-object v0

    invoke-static {p1, v0}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    :goto_6
    return-void

    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_7
    new-instance p1, Lg/gqc;

    iget-object v0, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v1, Lg/brq;

    iget-object v1, v1, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lg/die;

    iput-object v1, v2, Lg/die;->f:Ljava/lang/CharSequence;

    new-instance v1, Lg/fgw;

    invoke-direct {v1, v3, p0}, Lg/fgw;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f030005

    invoke-virtual {p1, v2, v1}, Lg/gqc;->aw(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->ak()Lg/fpl;

    move-result-object p1

    invoke-static {v0, p1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/gmi;

    iget-object v0, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v1}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p1, Lg/csm;->e:Lg/efx;

    const v0, 0x7f1202d1

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_8

    :cond_d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lg/csm;->e:Lg/efx;

    const-class v4, Lb/a/c;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "PACKAGE_NAME"

    iget-object v4, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "APP_NAME"

    iget-object v0, v0, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v0, p1, Lg/gmi;->h:Lg/cgg;

    invoke-virtual {v0}, Lg/cgg;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ts"

    iget-object v1, p1, Lg/gmi;->h:Lg/cgg;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_e
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v4

    iget-object v5, p1, Lg/csm;->e:Lg/efx;

    iget-object p1, p1, Lg/gmi;->h:Lg/cgg;

    invoke-virtual {p1}, Lg/cgg;->isTrial()Z

    move-result p1

    xor-int/lit8 v9, p1, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    :goto_8
    return-void

    :pswitch_9
    iget-object p1, p0, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/dis;

    iget-object v0, p1, Lg/dis;->l:Lg/aoi;

    if-eqz v0, :cond_f

    iget v1, p1, Lg/dis;->j:I

    add-int/2addr v1, v3

    iput v1, p1, Lg/dis;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lg/aoi;->a:I

    iget-object v0, v0, Lg/aoi;->b:Ljava/lang/Object;

    sparse-switch v2, :sswitch_data_0

    check-cast v0, Lb/a/b;

    sget v2, Lb/a/b;->d:I

    iget-object v0, v0, Lg/efx;->bb:Lg/efx;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lg/fml;->a(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :sswitch_0
    check-cast v0, Lg/doq;

    iget-object v0, v0, Lg/efx;->bb:Lg/efx;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lg/fml;->a(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :sswitch_1
    check-cast v0, Lc/c/c;

    sget v2, Lc/c/c;->d:I

    iget-object v0, v0, Lg/efx;->bb:Lg/efx;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lg/fml;->a(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :sswitch_2
    check-cast v0, Lb/b/a;

    sget v2, Lb/b/a;->d:I

    iget-object v0, v0, Lg/efx;->bb:Lg/efx;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lg/fml;->a(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lg/dis;->i:Lb/a/b;

    invoke-static {v0}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lg/cms;->fullScreenAdShow()V

    :cond_f
    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v1, p1, Lg/csm;->e:Lg/efx;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p1, Lg/csm;->e:Lg/efx;

    iget-object v4, p1, Lg/dis;->h:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "package_name"

    iget-object v4, p0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v4, Lg/auj;

    iget-object v4, v4, Lg/auj;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_ad_banner"

    iget-boolean p1, p1, Lg/dis;->k:Z

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

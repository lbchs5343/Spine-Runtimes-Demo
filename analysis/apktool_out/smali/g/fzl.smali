.class public final synthetic Lg/fzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bky;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/fri;

.field public final synthetic c:I

.field public final synthetic e:Lg/hdb;


# direct methods
.method public synthetic constructor <init>(Lg/fri;ILg/hdb;Lg/ert;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fzl;->b:Lg/fri;

    iput p2, p0, Lg/fzl;->c:I

    iput-object p3, p0, Lg/fzl;->e:Lg/hdb;

    iput-boolean p5, p0, Lg/fzl;->a:Z

    return-void
.end method


# virtual methods
.method public final d(Lg/he;Z)V
    .locals 8

    iget-object v0, p0, Lg/fzl;->b:Lg/fri;

    iget v1, p0, Lg/fzl;->c:I

    iget-object v2, p0, Lg/fzl;->e:Lg/hdb;

    iget-boolean v3, p0, Lg/fzl;->a:Z

    iget v4, v0, Lg/fri;->n:I

    if-ne v1, v4, :cond_8

    iget-boolean v1, v0, Lg/fri;->f:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lg/edx;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "inspector_refresh"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, v0, Lg/fri;->j:Lg/fri;

    sget-object v0, Lg/bew;->f:Landroid/os/Handler;

    if-eqz p2, :cond_3

    const p2, 0x7f120417

    goto :goto_1

    :cond_3
    const p2, 0x7f12028e

    :goto_1
    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_4
    instance-of p1, v2, Lg/gdm;

    if-eqz p1, :cond_6

    check-cast v2, Lg/gdm;

    iget-object p1, v0, Lg/fri;->j:Lg/fri;

    invoke-virtual {v2, p1}, Lg/gdm;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "layout_snapshot_prepared"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    const-string p2, "control_bar_find"

    goto :goto_2

    :cond_5
    const-string p2, "control_bar"

    :goto_2
    const-string v2, "source"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p2

    iget-object v2, v0, Lg/fri;->j:Lg/fri;

    invoke-virtual {p2, v2, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v1, "find"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_7
    const p1, 0x7f1200bd

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/fnp;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

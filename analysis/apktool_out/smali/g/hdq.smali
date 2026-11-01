.class public final synthetic Lg/hdq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bky;


# instance fields
.field public final synthetic a:Lg/ka;

.field public final synthetic b:I

.field public final synthetic c:Lg/hdb;


# direct methods
.method public synthetic constructor <init>(Lg/ka;ILg/hdb;Lg/ert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hdq;->a:Lg/ka;

    iput p2, p0, Lg/hdq;->b:I

    iput-object p3, p0, Lg/hdq;->c:Lg/hdb;

    return-void
.end method


# virtual methods
.method public final d(Lg/he;Z)V
    .locals 5

    iget-object v0, p0, Lg/hdq;->a:Lg/ka;

    iget v1, p0, Lg/hdq;->b:I

    iget-object v2, p0, Lg/hdq;->c:Lg/hdb;

    iget v3, v0, Lg/ka;->o:I

    if-ne v1, v3, :cond_5

    iget-boolean v1, v0, Lg/ka;->g:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lg/baq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inspector_refresh"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, v0, Lg/ka;->p:Lg/ka;

    sget-object v0, Lg/bew;->f:Landroid/os/Handler;

    if-eqz p2, :cond_2

    const p2, 0x7f120417

    goto :goto_0

    :cond_2
    const p2, 0x7f12028e

    :goto_0
    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_3
    instance-of p1, v2, Lg/gdm;

    if-eqz p1, :cond_4

    check-cast v2, Lg/gdm;

    iget-object p1, v0, Lg/ka;->p:Lg/ka;

    invoke-virtual {v2, p1}, Lg/gdm;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p2

    iget-object v1, v0, Lg/ka;->p:Lg/ka;

    invoke-virtual {p2, v1, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_4
    const p1, 0x7f1200bd

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/fnp;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

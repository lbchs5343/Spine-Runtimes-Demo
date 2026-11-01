.class public final synthetic Lg/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bky;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;II)V
    .locals 0

    iput p3, p0, Lg/bf;->a:I

    iput-object p1, p0, Lg/bf;->c:Landroid/content/ContextWrapper;

    iput p2, p0, Lg/bf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lg/he;Z)V
    .locals 4

    iget v0, p0, Lg/bf;->a:I

    const v1, 0x7f120417

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bf;->c:Landroid/content/ContextWrapper;

    check-cast v0, Lg/edx;

    iget v2, p0, Lg/bf;->b:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lg/edx;->s:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/edx;->u:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lg/edx;->aw(Lg/he;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, v0, Lg/eib;->bc:Lg/eib;

    sget-object p2, Lg/bew;->f:Landroid/os/Handler;

    invoke-static {p1, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_2
    iget-object p1, v0, Lg/edx;->f:Lg/fri;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lg/edx;->an()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lg/edx;->at()V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bf;->c:Landroid/content/ContextWrapper;

    check-cast v0, Lg/ka;

    iget v2, p0, Lg/bf;->b:I

    iget v3, v0, Lg/ka;->o:I

    if-ne v2, v3, :cond_9

    iget-boolean v2, v0, Lg/ka;->g:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, v0, Lg/ka;->p:Lg/ka;

    sget-object v0, Lg/bew;->f:Landroid/os/Handler;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const v1, 0x7f12028e

    :goto_1
    invoke-static {p1, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lg/dyd;->aa()Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/ka;->e:J

    new-instance p1, Landroid/content/Intent;

    const-class v3, La/v/b;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "permissionName"

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "permissionSeqID"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v0, p1}, Lg/ka;->aa(Lg/he;)V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

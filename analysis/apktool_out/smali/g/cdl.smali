.class public final synthetic Lg/cdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lg/cdl;->b:I

    iput-object p1, p0, Lg/cdl;->a:Ljava/lang/Object;

    iput p2, p0, Lg/cdl;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/cdl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cdl;->a:Ljava/lang/Object;

    check-cast v0, Lg/edx;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lg/dms;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lg/edx;->s:I

    iget v2, p0, Lg/cdl;->c:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "layout_snapshot_prepared"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v4, v3}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v4, v0, Lg/edx;->u:Z

    invoke-virtual {v0, v1}, Lg/edx;->aw(Lg/he;)V

    goto :goto_1

    :cond_1
    iput-boolean v3, v0, Lg/edx;->u:Z

    iget-object v1, v0, Lg/eib;->bc:Lg/eib;

    new-instance v3, Lg/bf;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lg/bf;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-static {v1, v3}, Lg/bew;->p(Landroid/content/Context;Lg/bky;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cdl;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iget v3, p0, Lg/cdl;->c:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->am(Landroid/view/View;IZ)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/cdl;->a:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lg/cdl;->c:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lg/ark;->t(Z)V

    invoke-virtual {v0}, Lg/ark;->s()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/cdl;->a:Ljava/lang/Object;

    check-cast v0, Lg/dzm;

    iget v1, p0, Lg/cdl;->c:I

    invoke-virtual {v0, v1}, Lg/dzm;->c(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/cdl;->a:Ljava/lang/Object;

    check-cast v0, Lg/he;

    iget v1, p0, Lg/cdl;->c:I

    invoke-static {v0, v1}, Lg/bew;->r(Lg/he;I)V

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

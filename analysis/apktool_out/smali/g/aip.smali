.class public final synthetic Lg/aip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/aip;->a:I

    iput-object p2, p0, Lg/aip;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget v0, p0, Lg/aip;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lg/aip;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lc/e/a;

    sget v0, Lc/e/a;->d:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, v3, Lg/awy;->p:Lg/awy;

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p2, "applist_grid_mode"

    invoke-static {p1, p2, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {v3}, Lc/e/a;->o()V

    return-void

    :pswitch_0
    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    check-cast v3, Lg/atk;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object p1, v3, Lg/atk;->s:Lg/hbj;

    if-nez p1, :cond_2

    iget-object p1, v3, Lg/atk;->r:Lg/atk;

    const p2, 0x7f1203f2

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lg/dyd;->aa()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3, v1}, Lg/atk;->ae(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_4

    const/16 p2, 0xc8

    goto :goto_0

    :cond_4
    const/16 p2, 0xc9

    :goto_0
    invoke-static {v3, p1, p2}, Lg/fyt;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

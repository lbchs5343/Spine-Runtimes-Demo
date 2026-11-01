.class public final synthetic Lg/dxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lg/eku;


# direct methods
.method public synthetic constructor <init>(Lg/eku;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lg/dxh;->d:I

    iput-object p1, p0, Lg/dxh;->e:Lg/eku;

    iput-object p2, p0, Lg/dxh;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lg/dxh;->b:Ljava/lang/String;

    iput-object p4, p0, Lg/dxh;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lg/dxh;->d:I

    const/4 v1, 0x1

    iget-object v2, p0, Lg/dxh;->c:Ljava/lang/String;

    iget-object v3, p0, Lg/dxh;->b:Ljava/lang/String;

    iget-object v4, p0, Lg/dxh;->a:Landroid/view/ViewGroup;

    iget-object v5, p0, Lg/dxh;->e:Lg/eku;

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lg/eku;->e:Z

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v3, v2, v0}, Lg/eku;->q(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void

    :pswitch_0
    sget-boolean v0, Lg/eku;->e:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    :goto_0
    invoke-virtual {v5, v4, v3, v2, v1}, Lg/eku;->q(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void

    :pswitch_1
    sget-boolean v0, Lg/eku;->e:Z

    iget-object v4, p0, Lg/dxh;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    iget-object v3, p0, Lg/dxh;->e:Lg/eku;

    iget-object v5, p0, Lg/dxh;->b:Ljava/lang/String;

    iget-object v6, p0, Lg/dxh;->c:Ljava/lang/String;

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2

    iget-object v0, v3, Lg/eku;->k:Landroid/os/Handler;

    new-instance v2, Lg/dxh;

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lg/dxh;-><init>(Lg/eku;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v4, v5, v6, v1}, Lg/eku;->q(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_2
    return-void

    :pswitch_2
    iget-object v8, p0, Lg/dxh;->e:Lg/eku;

    iget-object v0, v8, Lg/eku;->i:Lg/dms;

    new-instance v7, Lg/dxh;

    const/4 v12, 0x3

    iget-object v9, p0, Lg/dxh;->a:Landroid/view/ViewGroup;

    iget-object v10, p0, Lg/dxh;->b:Ljava/lang/String;

    iget-object v11, p0, Lg/dxh;->c:Ljava/lang/String;

    invoke-direct/range {v7 .. v12}, Lg/dxh;-><init>(Lg/eku;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

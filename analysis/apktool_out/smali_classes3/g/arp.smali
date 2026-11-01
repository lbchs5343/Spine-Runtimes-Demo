.class public final synthetic Lg/arp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/arp;->a:I

    iput-object p2, p0, Lg/arp;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/arp;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/arp;->b:Ljava/lang/Object;

    check-cast v0, Lg/efs;

    iget-object v1, v0, Lg/efs;->a:Lg/ddc;

    new-instance v2, Lg/aoi;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    check-cast v1, Lg/cga;

    invoke-virtual {v1, v2}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/arp;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v2}, Lg/eyt;->br(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

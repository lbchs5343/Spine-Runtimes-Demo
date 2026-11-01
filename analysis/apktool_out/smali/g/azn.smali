.class public final Lg/azn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    iput p2, p0, Lg/azn;->b:I

    iput-object p1, p0, Lg/azn;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/azn;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lg/azn;->b:I

    iget-boolean v0, p0, Lg/azn;->c:Z

    iget-object v1, p0, Lg/azn;->a:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v1, Lc/e/b;

    sget p1, Lc/e/b;->d:I

    invoke-virtual {v1, v0}, Lc/e/b;->q(Z)V

    return-void

    :pswitch_0
    check-cast v1, Lg/anh;

    const/4 p1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, v1, Lg/anh;->a:Ljava/lang/Object;

    check-cast p2, Lg/eas;

    sget v0, Lg/eas;->h:I

    iget-object p2, p2, Lg/eas;->i:Landroid/os/Handler;

    iget-object v0, v1, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    sget p2, Lg/eas;->h:I

    iget-object p1, p1, Lg/eas;->i:Landroid/os/Handler;

    iget-object p2, v1, Lg/anh;->c:Ljava/lang/Object;

    check-cast p2, Lg/auj;

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    sget p2, Lg/eas;->h:I

    iget-object p1, p1, Lg/eas;->i:Landroid/os/Handler;

    iget-object p2, v1, Lg/anh;->c:Ljava/lang/Object;

    check-cast p2, Lg/auj;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, v1, Lg/anh;->a:Ljava/lang/Object;

    check-cast p2, Lg/eas;

    sget v0, Lg/eas;->h:I

    iget-object p2, p2, Lg/eas;->i:Landroid/os/Handler;

    iget-object v0, v1, Lg/anh;->c:Ljava/lang/Object;

    check-cast v0, Lg/auj;

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-object p1, v1, Lg/anh;->a:Ljava/lang/Object;

    check-cast p1, Lg/eas;

    sget p2, Lg/eas;->h:I

    iget-object p1, p1, Lg/eas;->i:Landroid/os/Handler;

    iget-object p2, v1, Lg/anh;->c:Ljava/lang/Object;

    check-cast p2, Lg/auj;

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

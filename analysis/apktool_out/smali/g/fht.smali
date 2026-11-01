.class public final Lg/fht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lg/cfo;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/cfo;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lg/fht;->c:I

    iput-object p1, p0, Lg/fht;->b:Lg/cfo;

    iput-object p2, p0, Lg/fht;->d:Ljava/lang/String;

    iput-object p3, p0, Lg/fht;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/fht;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fht;->b:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/fht;->d:Ljava/lang/String;

    iget-object v2, p0, Lg/fht;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lg/gwy;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fht;->b:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/fht;->d:Ljava/lang/String;

    iget-object v2, p0, Lg/fht;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lg/gwy;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

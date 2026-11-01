.class public final Lg/bck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/cfo;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lg/cfo;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lg/bck;->b:I

    iput-object p1, p0, Lg/bck;->a:Lg/cfo;

    iput-object p2, p0, Lg/bck;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/bck;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bck;->a:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/bck;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lg/gwy;->onMinimized(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bck;->a:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/bck;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lg/gwy;->onWarmupCompleted(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/bck;->a:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/bck;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lg/gwy;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/bck;->a:Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/bck;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lg/gwy;->onUnminimized(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

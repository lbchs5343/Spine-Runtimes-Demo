.class public final Lg/eyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fri;


# direct methods
.method public synthetic constructor <init>(Lg/fri;I)V
    .locals 0

    iput p2, p0, Lg/eyz;->a:I

    iput-object p1, p0, Lg/eyz;->b:Lg/fri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg/eyz;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/eyz;->b:Lg/fri;

    iget-object p1, p1, Lg/fri;->m:Lg/axs;

    invoke-virtual {p1}, Lg/axs;->b()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/eyz;->b:Lg/fri;

    invoke-virtual {p1}, Lg/fri;->p()V

    iget-object v0, p1, Lg/fri;->j:Lg/fri;

    new-instance v1, Lg/dyy;

    invoke-direct {v1, v0}, Lg/dyy;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-object v1, v1, Lg/dyy;->g:Landroid/app/NotificationManager;

    const/16 v2, 0x7544

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_1
    const-class p1, Lg/fri;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/eyz;->b:Lg/fri;

    invoke-virtual {v0}, Lg/fri;->p()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    iget-object p1, p0, Lg/eyz;->b:Lg/fri;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/fri;->q(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/eyz;->b:Lg/fri;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/fri;->q(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

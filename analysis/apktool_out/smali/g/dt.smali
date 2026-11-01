.class public final Lg/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/epi;


# direct methods
.method public synthetic constructor <init>(Lg/epi;I)V
    .locals 0

    iput p2, p0, Lg/dt;->a:I

    iput-object p1, p0, Lg/dt;->b:Lg/epi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg/dt;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lg/byd;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/dt;->b:Lg/epi;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lg/fgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cf;


# direct methods
.method public synthetic constructor <init>(Lg/cf;I)V
    .locals 0

    iput p2, p0, Lg/fgf;->a:I

    iput-object p1, p0, Lg/fgf;->b:Lg/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lg/fgf;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fgf;->b:Lg/cf;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lg/cf;->m(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fgf;->b:Lg/cf;

    iget-object v0, p1, Lg/cf;->d:Landroid/os/Handler;

    iget-object v1, p1, Lg/cf;->h:Lg/byd;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lg/cf;->g:Lg/cgn;

    iget v1, v0, Lg/cgn;->a:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iput v3, v0, Lg/cgn;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lg/cgn;->b:J

    :cond_0
    invoke-virtual {p1, v3}, Lg/cf;->k(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/bre;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ese;


# direct methods
.method public synthetic constructor <init>(Lg/ese;I)V
    .locals 0

    iput p2, p0, Lg/bre;->a:I

    iput-object p1, p0, Lg/bre;->b:Lg/ese;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/bre;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bre;->b:Lg/ese;

    invoke-static {v0}, Lg/ese;->ox(Lg/ese;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1}, Lg/bfa;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0}, Lg/ese;->dq(Lg/ese;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const v3, 0x7fffffff

    if-lt v1, v3, :cond_0

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    const v2, 0x3fffffff    # 1.9999999f

    invoke-virtual {v1, v2, v4}, Lg/bfa;->br(IZ)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v3, v1, v2}, Lg/bfa;->br(IZ)V

    :goto_0
    invoke-static {v0}, Lg/ese;->p(Lg/ese;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0}, Lg/ese;->s(Lg/ese;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v3}, Lg/bfa;->getAdapter()Lg/gbe;

    move-result-object v3

    invoke-virtual {v3}, Lg/gbe;->c()I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1, v4, v4}, Lg/bfa;->br(IZ)V

    invoke-static {v0}, Lg/ese;->p(Lg/ese;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0}, Lg/ese;->s(Lg/ese;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v3, v1, v2}, Lg/bfa;->br(IZ)V

    invoke-static {v0}, Lg/ese;->p(Lg/ese;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0}, Lg/ese;->s(Lg/ese;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bre;->b:Lg/ese;

    iget-object v1, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v1}, Lg/bfa;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0}, Lg/ese;->dq(Lg/ese;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const v3, 0x7fffffff

    if-lt v1, v3, :cond_4

    iget-object v0, v0, Lg/ese;->d:Lg/bfa;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1, v4}, Lg/bfa;->br(IZ)V

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0, v1, v2}, Lg/bfa;->br(IZ)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v3}, Lg/bfa;->getAdapter()Lg/gbe;

    move-result-object v3

    invoke-virtual {v3}, Lg/gbe;->c()I

    move-result v3

    if-lt v1, v3, :cond_6

    iget-object v0, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0, v4, v4}, Lg/bfa;->br(IZ)V

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lg/ese;->d:Lg/bfa;

    invoke-virtual {v0, v1, v2}, Lg/bfa;->br(IZ)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

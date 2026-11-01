.class public final synthetic Lg/csr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cf;


# direct methods
.method public synthetic constructor <init>(Lg/cf;I)V
    .locals 0

    iput p2, p0, Lg/csr;->a:I

    iput-object p1, p0, Lg/csr;->b:Lg/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lg/csr;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/csr;->b:Lg/cf;

    iget-object v0, v0, Lg/cf;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/csr;->b:Lg/cf;

    iget-object v1, v0, Lg/cf;->g:Lg/cgn;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, v1, Lg/cgn;->a:I

    if-lez v4, :cond_0

    iget-wide v4, v1, Lg/cgn;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Lg/cgn;->a:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg/cgn;->b:J

    :cond_0
    invoke-virtual {v0}, Lg/cf;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

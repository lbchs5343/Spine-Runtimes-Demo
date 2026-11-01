.class public final Lg/aba;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/eoa;

.field public final synthetic b:I

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lg/eoa;Landroid/app/Activity;I)V
    .locals 0

    iput p3, p0, Lg/aba;->b:I

    packed-switch p3, :pswitch_data_0

    iput-object p1, p0, Lg/aba;->a:Lg/eoa;

    iput-object p2, p0, Lg/aba;->c:Landroid/app/Activity;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lg/aba;->a:Lg/eoa;

    iput-object p2, p0, Lg/aba;->c:Landroid/app/Activity;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void

    :pswitch_1
    iput-object p1, p0, Lg/aba;->a:Lg/eoa;

    iput-object p2, p0, Lg/aba;->c:Landroid/app/Activity;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void

    :pswitch_2
    iput-object p1, p0, Lg/aba;->a:Lg/eoa;

    iput-object p2, p0, Lg/aba;->c:Landroid/app/Activity;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void

    :pswitch_3
    iput-object p1, p0, Lg/aba;->a:Lg/eoa;

    iput-object p2, p0, Lg/aba;->c:Landroid/app/Activity;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final g()V
    .locals 5

    iget v0, p0, Lg/aba;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aba;->a:Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aba;->c:Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lg/bvf;->l:J

    invoke-interface {v0, v2, v3, v4}, Lg/ees;->onActivityDestroyed(Lg/bjq;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aba;->a:Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aba;->c:Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lg/bvf;->l:J

    invoke-interface {v0, v2, v3, v4}, Lg/ees;->onActivityStopped(Lg/bjq;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/aba;->a:Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aba;->c:Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lg/bvf;->l:J

    invoke-interface {v0, v2, v3, v4}, Lg/ees;->onActivityPaused(Lg/bjq;J)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/aba;->a:Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aba;->c:Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lg/bvf;->l:J

    invoke-interface {v0, v2, v3, v4}, Lg/ees;->onActivityResumed(Lg/bjq;J)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/aba;->a:Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/aba;->c:Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p0, Lg/bvf;->l:J

    invoke-interface {v0, v2, v3, v4}, Lg/ees;->onActivityStarted(Lg/bjq;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

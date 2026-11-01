.class public final Lg/axi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final c:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, Lg/axi;->b:I

    iput-object p1, p0, Lg/axi;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lg/axi;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/axi;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/axi;->a:Ljava/lang/Object;

    check-cast v0, Lg/bcm;

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    invoke-virtual {v1}, Lg/cyg;->am()Lg/fqm;

    move-result-object v1

    iget-wide v2, p0, Lg/axi;->c:J

    invoke-virtual {v1, v2, v3}, Lg/fqm;->l(J)V

    const/4 v1, 0x0

    iput-object v1, v0, Lg/bcm;->q:Lg/ein;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/axi;->a:Ljava/lang/Object;

    check-cast v0, Lg/fqm;

    iget-wide v1, p0, Lg/axi;->c:J

    invoke-virtual {v0, v1, v2}, Lg/fqm;->j(J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/axi;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()V

    iget-wide v1, p0, Lg/axi;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/r;->a(J)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/axi;->a:Ljava/lang/Object;

    check-cast v0, Lg/yz;

    iget-object v1, v0, Lg/yz;->b:Lg/gkb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lg/yz;->b:Lg/gkb;

    invoke-virtual {v1}, Lg/gkb;->dq()V

    iget-object v0, v0, Lg/yz;->b:Lg/gkb;

    iget-wide v1, p0, Lg/axi;->c:J

    invoke-static {v0, v1, v2}, Lg/gkb;->dq(Lg/gkb;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

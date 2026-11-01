.class public final Lg/dhq;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bhz;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/bhz;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lg/dhq;->b:I

    iput-object p1, p0, Lg/dhq;->a:Lg/bhz;

    iput-object p2, p0, Lg/dhq;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/bhz;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dhq;->b:I

    iput-object p1, p0, Lg/dhq;->a:Lg/bhz;

    iput-object p2, p0, Lg/dhq;->c:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 7

    iget v0, p0, Lg/dhq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dhq;->a:Lg/bhz;

    iget-object v1, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/dhq;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    new-instance v4, Lg/bpp;

    invoke-direct {v4, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lg/bpp;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lg/bpp;

    invoke-direct {v6, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x5

    const-string v3, "Error with data collection. Data lost."

    invoke-interface/range {v1 .. v6}, Lg/ees;->logHealthData(ILjava/lang/String;Lg/bjq;Lg/bjq;Lg/bjq;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dhq;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/dhq;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-wide v2, p0, Lg/bvf;->k:J

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->setConsent(Landroid/os/Bundle;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/dhq;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/dhq;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-wide v2, p0, Lg/bvf;->k:J

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

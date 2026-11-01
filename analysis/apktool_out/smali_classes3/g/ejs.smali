.class public final Lg/ejs;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bhz;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/bhz;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/ejs;->c:I

    iput-object p1, p0, Lg/ejs;->a:Lg/bhz;

    iput-object p2, p0, Lg/ejs;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/ejs;->e:Ljava/lang/String;

    iput-object p4, p0, Lg/ejs;->b:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/ejs;->c:I

    iput-object p1, p0, Lg/ejs;->a:Lg/bhz;

    iput-object p2, p0, Lg/ejs;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/ejs;->b:Ljava/lang/String;

    iput-object p4, p0, Lg/ejs;->d:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 8

    iget v0, p0, Lg/ejs;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ejs;->a:Lg/bhz;

    iget-object v1, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, p0, Lg/ejs;->e:Ljava/lang/String;

    iget-object v3, p0, Lg/ejs;->b:Ljava/lang/String;

    iget-object v0, p0, Lg/ejs;->d:Ljava/lang/Object;

    new-instance v4, Lg/bpp;

    invoke-direct {v4, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    iget-wide v6, p0, Lg/bvf;->k:J

    invoke-interface/range {v1 .. v7}, Lg/ees;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lg/bjq;ZJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ejs;->a:Lg/bhz;

    iget-object v1, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lg/ejs;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/ejs;->e:Ljava/lang/String;

    iget-object v4, p0, Lg/ejs;->b:Ljava/lang/String;

    iget-wide v5, p0, Lg/bvf;->k:J

    invoke-interface/range {v1 .. v6}, Lg/ees;->setCurrentScreen(Lg/bjq;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/ejs;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/ejs;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/ejs;->b:Ljava/lang/String;

    iget-object v3, p0, Lg/ejs;->d:Ljava/lang/Object;

    check-cast v3, Lg/bay;

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lg/brv;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/ejs;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/ejs;->e:Ljava/lang/String;

    iget-object v2, p0, Lg/ejs;->b:Ljava/lang/String;

    iget-object v3, p0, Lg/ejs;->d:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lg/ejs;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ejs;->d:Ljava/lang/Object;

    check-cast v0, Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

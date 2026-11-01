.class public final Lg/alh;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bhz;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/bhz;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/alh;->b:I

    iput-object p1, p0, Lg/alh;->a:Lg/bhz;

    iput-object p2, p0, Lg/alh;->c:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 4

    iget v0, p0, Lg/alh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/alh;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/alh;->c:Ljava/lang/String;

    iget-wide v2, p0, Lg/bvf;->l:J

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->endAdUnitExposure(Ljava/lang/String;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/alh;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/alh;->c:Ljava/lang/String;

    iget-wide v2, p0, Lg/bvf;->l:J

    invoke-interface {v0, v1, v2, v3}, Lg/ees;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

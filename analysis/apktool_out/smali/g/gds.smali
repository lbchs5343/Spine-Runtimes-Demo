.class public final Lg/gds;
.super Ljava/lang/Object;

# interfaces
.implements Lg/bdu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Lg/fts;


# direct methods
.method public synthetic constructor <init>(Lg/fts;FI)V
    .locals 0

    iput p3, p0, Lg/gds;->a:I

    iput-object p1, p0, Lg/gds;->c:Lg/fts;

    iput p2, p0, Lg/gds;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 5

    iget v0, p0, Lg/gds;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gds;->c:Lg/fts;

    iget-object v1, v0, Lg/fts;->x:Lg/cgf;

    iget v2, p0, Lg/gds;->b:F

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v3, Lg/gds;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v2, v4}, Lg/gds;-><init>(Lg/fts;FI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v3, v1, Lg/cgf;->b:F

    iget v1, v1, Lg/cgf;->f:F

    invoke-static {v3, v1, v2}, Lg/din;->d(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lg/fts;->ar(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/gds;->c:Lg/fts;

    iget v1, p0, Lg/gds;->b:F

    invoke-virtual {v0, v1}, Lg/fts;->bc(F)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/gds;->c:Lg/fts;

    iget-object v1, v0, Lg/fts;->x:Lg/cgf;

    iget v2, p0, Lg/gds;->b:F

    if-nez v1, :cond_1

    iget-object v1, v0, Lg/fts;->al:Ljava/util/ArrayList;

    new-instance v3, Lg/gds;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lg/gds;-><init>(Lg/fts;FI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lg/fts;->ad:Lg/bzg;

    iget v3, v1, Lg/cgf;->b:F

    iget v1, v1, Lg/cgf;->f:F

    invoke-static {v3, v1, v2}, Lg/din;->d(FFF)F

    move-result v1

    iget v2, v0, Lg/bzg;->c:F

    invoke-virtual {v0, v2, v1}, Lg/bzg;->q(FF)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

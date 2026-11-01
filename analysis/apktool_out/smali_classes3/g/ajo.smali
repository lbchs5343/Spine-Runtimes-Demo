.class public final Lg/ajo;
.super Lg/gnx;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ehi;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lg/cpv;Lg/bhv;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/ajo;->b:I

    iput-object p2, p0, Lg/ajo;->a:Lg/ehi;

    invoke-direct {p0, p1}, Lg/gnx;-><init>(Lg/cpv;)V

    return-void
.end method

.method public constructor <init>(Lg/fsb;Lg/dsy;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/ajo;->b:I

    iput-object p1, p0, Lg/ajo;->a:Lg/ehi;

    invoke-direct {p0, p2}, Lg/gnx;-><init>(Lg/cpv;)V

    return-void
.end method


# virtual methods
.method public c(Lg/clq;J)J
    .locals 1

    iget v0, p0, Lg/ajo;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lg/gnx;->c(Lg/clq;J)J

    move-result-wide p1

    return-wide p1

    :pswitch_0
    const-wide/16 p2, 0x2000

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lg/gnx;->c(Lg/clq;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg/ajo;->a:Lg/ehi;

    check-cast p2, Lg/fsb;

    iput-object p1, p2, Lg/fsb;->a:Ljava/io/IOException;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget v0, p0, Lg/ajo;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/gnx;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ajo;->a:Lg/ehi;

    check-cast v0, Lg/bhv;

    iget-object v0, v0, Lg/bhv;->f:Lg/px;

    invoke-virtual {v0}, Lg/px;->close()V

    invoke-super {p0}, Lg/gnx;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

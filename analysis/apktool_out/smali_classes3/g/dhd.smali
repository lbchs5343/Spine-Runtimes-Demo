.class public final Lg/dhd;
.super Lg/ehi;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lg/dsy;

.field public final synthetic f:I

.field public final g:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLg/dsy;I)V
    .locals 0

    iput p5, p0, Lg/dhd;->f:I

    iput-object p1, p0, Lg/dhd;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lg/dhd;->g:J

    iput-object p4, p0, Lg/dhd;->b:Lg/dsy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lg/dsy;
    .locals 1

    iget v0, p0, Lg/dhd;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dhd;->b:Lg/dsy;

    check-cast v0, Lg/clq;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/dhd;->b:Lg/dsy;

    check-cast v0, Lg/deb;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()J
    .locals 2

    iget v0, p0, Lg/dhd;->f:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lg/dhd;->g:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lg/dhd;->g:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lg/dpd;
    .locals 3

    iget v0, p0, Lg/dhd;->f:I

    iget-object v1, p0, Lg/dhd;->a:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lg/dpd;

    return-object v1

    :pswitch_0
    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    sget-object v2, Lg/dpd;->a:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {v1}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

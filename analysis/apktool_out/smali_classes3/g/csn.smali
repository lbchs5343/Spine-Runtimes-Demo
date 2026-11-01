.class public final Lg/csn;
.super Lg/fdk;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lg/csn;->c:I

    invoke-direct {p0, p1}, Lg/fdk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Lg/dpa;Ljava/util/List;)Lg/gey;
    .locals 2

    iget p1, p0, Lg/csn;->c:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :pswitch_0
    new-instance p1, Lg/hbz;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object p1

    :pswitch_1
    return-object p0

    :pswitch_2
    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

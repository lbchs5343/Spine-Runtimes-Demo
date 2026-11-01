.class public final Lj$/util/stream/u;
.super Lj$/util/stream/b0;
.source "SourceFile"


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/u;->s:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    iget p1, p0, Lj$/util/stream/u;->s:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/f0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_1
    return-object p2

    :pswitch_2
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lj$/util/stream/r;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lj$/util/stream/t;
.super Lj$/util/stream/A;
.source "SourceFile"


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/t;->s:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    iget p1, p0, Lj$/util/stream/t;->s:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/f0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/g0;

    invoke-direct {p1, p2}, Lj$/util/stream/j2;-><init>(Lj$/util/stream/o2;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lj$/util/stream/X;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lj$/util/stream/X;-><init>(ILj$/util/stream/o2;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lj$/util/stream/r;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_4
    return-object p2

    :pswitch_5
    new-instance p1, Lj$/util/stream/r;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

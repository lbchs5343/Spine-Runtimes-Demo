.class public final Lj$/util/stream/i0;
.super Lj$/util/stream/l0;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/i0;->s:I

    iput-object p3, p0, Lj$/util/stream/i0;->t:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/m0;Ljava/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/i0;->s:I

    iput-object p2, p0, Lj$/util/stream/i0;->t:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    iget p1, p0, Lj$/util/stream/i0;->s:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/n;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/n;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/a2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/i0;Lj$/util/stream/o2;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj$/util/stream/f0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;Lj$/util/stream/o2;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lj$/util/stream/h0;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/h0;-><init>(Lj$/util/stream/i0;Lj$/util/stream/o2;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

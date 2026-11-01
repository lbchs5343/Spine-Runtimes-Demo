.class public final Lg/atb;
.super Lg/bke;
.source "SourceFile"


# static fields
.field public static final b:Lg/bqd;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/atb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/atb;-><init>(I)V

    new-instance v1, Lg/bqd;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/bqd;-><init>(Lg/bke;I)V

    sput-object v1, Lg/atb;->b:Lg/bqd;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/atb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/atb;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lg/eem;->l(D)V

    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lg/fwg;->z(Ljava/lang/Number;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lg/eem;->l(D)V

    invoke-virtual {p1, v0, v1}, Lg/fwg;->t(D)V

    :goto_2
    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lg/fwg;->z(Ljava/lang/Number;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/atb;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "AnonymousOrNonStaticLocalClassAdapter"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

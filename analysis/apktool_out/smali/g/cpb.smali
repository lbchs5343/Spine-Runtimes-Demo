.class public final Lg/cpb;
.super Lg/afo;
.source "SourceFile"


# instance fields
.field public final a:Lg/cxc;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lg/cxc;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/cpb;->c:I

    iput-object p1, p0, Lg/cpb;->a:Lg/cxc;

    iput-object p2, p0, Lg/cpb;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final be(Lg/cgy;)Lg/fkb;
    .locals 4

    iget v0, p0, Lg/cpb;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/aqf;

    iget-object v1, p0, Lg/cpb;->b:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    const/4 v2, 0x2

    iget-object v3, p0, Lg/cpb;->a:Lg/cxc;

    invoke-direct {v0, p1, v3, v1, v2}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/aqf;

    iget-object v1, p0, Lg/cpb;->b:Ljava/lang/Object;

    check-cast v1, Lg/gvg;

    const/4 v2, 0x1

    iget-object v3, p0, Lg/cpb;->a:Lg/cxc;

    invoke-direct {v0, p1, v3, v1, v2}, Lg/aqf;-><init>(Lg/cgy;Lg/cxc;Ljava/lang/Object;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

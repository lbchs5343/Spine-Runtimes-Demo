.class public final Lg/cgb;
.super Ljava/lang/Object;

# interfaces
.implements Lg/gao;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gkb;


# direct methods
.method public synthetic constructor <init>(Lg/gkb;I)V
    .locals 0

    iput p2, p0, Lg/cgb;->a:I

    iput-object p1, p0, Lg/cgb;->b:Lg/gkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/cgb;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lg/cgb;->b:Lg/gkb;

    invoke-static {v0}, Lg/gkb;->dq(Lg/gkb;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gkb;->dq(Lg/gkb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lg/gkb;->setImageResource(I)V

    :cond_0
    invoke-static {v0}, Lg/gkb;->d(Lg/gkb;)Lg/gao;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lg/gkb;->ia()Lg/gao;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lg/gkb;->d(Lg/gkb;)Lg/gao;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lg/gao;->dq(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Lg/cgf;

    iget-object v0, p0, Lg/cgb;->b:Lg/gkb;

    invoke-virtual {v0, p1}, Lg/gkb;->setComposition(Lg/cgf;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

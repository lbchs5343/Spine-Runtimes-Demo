.class public final Lg/cft;
.super Lg/acr;
.source "SourceFile"


# instance fields
.field public final ck:Landroid/graphics/drawable/Animatable;

.field public final synthetic cl:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Animatable;I)V
    .locals 0

    iput p2, p0, Lg/cft;->cl:I

    iput-object p1, p0, Lg/cft;->ck:Landroid/graphics/drawable/Animatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cb()V
    .locals 1

    iget v0, p0, Lg/cft;->cl:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cft;->ck:Landroid/graphics/drawable/Animatable;

    check-cast v0, Lg/ahf;

    invoke-virtual {v0}, Lg/ahf;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cft;->ck:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final cg()V
    .locals 1

    iget v0, p0, Lg/cft;->cl:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cft;->ck:Landroid/graphics/drawable/Animatable;

    check-cast v0, Lg/ahf;

    invoke-virtual {v0}, Lg/ahf;->stop()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cft;->ck:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

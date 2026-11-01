.class public final synthetic Lg/dki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ggk;


# direct methods
.method public synthetic constructor <init>(Lg/ggk;I)V
    .locals 0

    iput p2, p0, Lg/dki;->a:I

    iput-object p1, p0, Lg/dki;->b:Lg/ggk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lg/dki;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dki;->b:Lg/ggk;

    invoke-static {v0}, Lg/ggk;->q(Lg/ggk;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dki;->b:Lg/ggk;

    invoke-static {v0}, Lg/ggk;->p(Lg/ggk;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

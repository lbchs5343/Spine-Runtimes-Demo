.class public final synthetic Lg/cou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bus;


# direct methods
.method public synthetic constructor <init>(Lg/bus;I)V
    .locals 0

    iput p2, p0, Lg/cou;->a:I

    iput-object p1, p0, Lg/cou;->b:Lg/bus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/cou;->a:I

    iget-object v1, p0, Lg/cou;->b:Lg/bus;

    packed-switch v0, :pswitch_data_0

    sget v0, Lg/bus;->a:I

    invoke-virtual {v1}, Lg/bus;->w()V

    return-void

    :pswitch_0
    invoke-static {v1}, Lg/bus;->t(Lg/bus;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

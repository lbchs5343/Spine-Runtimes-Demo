.class public final Lg/ehg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bcm;


# direct methods
.method public synthetic constructor <init>(Lg/bcm;I)V
    .locals 0

    iput p2, p0, Lg/ehg;->a:I

    iput-object p1, p0, Lg/ehg;->b:Lg/bcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/ehg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ehg;->b:Lg/bcm;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/bcm;->l:Lg/ein;

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ehg;->b:Lg/bcm;

    iget-object v1, v0, Lg/bcm;->l:Lg/ein;

    iput-object v1, v0, Lg/bcm;->q:Lg/ein;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

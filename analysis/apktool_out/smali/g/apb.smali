.class public final Lg/apb;
.super Lg/btr;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lg/apb;->a:I

    invoke-direct {p0, p1}, Lg/btr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dq(Landroid/content/Context;)Lg/bgh;
    .locals 3

    iget v0, p0, Lg/apb;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/cjn;

    invoke-direct {v0, p1}, Lg/bgh;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, v0, Lg/cjn;->a:I

    new-instance v1, Lg/giy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lg/giy;-><init>(Landroid/os/Looper;Lg/ank;)V

    iput-object v1, v0, Lg/cjn;->b:Lg/giy;

    iput p1, v0, Lg/cjn;->c:I

    return-object v0

    :pswitch_0
    new-instance v0, Lg/beb;

    invoke-direct {v0, p1}, Lg/bgh;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg/pv;

    invoke-direct {v0, p1}, Lg/bgh;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, v0, Lg/pv;->e:I

    const-string p1, "up"

    iput-object p1, v0, Lg/pv;->a:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

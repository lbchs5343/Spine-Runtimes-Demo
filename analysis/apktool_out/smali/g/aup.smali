.class public final Lg/aup;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/eum;

.field public final synthetic b:I

.field public final synthetic c:Lg/cpx;


# direct methods
.method public synthetic constructor <init>(Lg/eum;Lg/cpx;I)V
    .locals 0

    iput p3, p0, Lg/aup;->b:I

    iput-object p1, p0, Lg/aup;->a:Lg/eum;

    iput-object p2, p0, Lg/aup;->c:Lg/cpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/aup;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aup;->a:Lg/eum;

    iget-object v0, v0, Lg/eum;->l:Ljava/util/HashSet;

    iget-object v1, p0, Lg/aup;->c:Lg/cpx;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aup;->a:Lg/eum;

    iget-object v0, v0, Lg/eum;->l:Ljava/util/HashSet;

    iget-object v1, p0, Lg/aup;->c:Lg/cpx;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

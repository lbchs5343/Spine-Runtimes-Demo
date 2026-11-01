.class public final synthetic Lg/ece;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/eqg;


# direct methods
.method public synthetic constructor <init>(Lg/eqg;I)V
    .locals 0

    iput p2, p0, Lg/ece;->a:I

    iput-object p1, p0, Lg/ece;->b:Lg/eqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/ece;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/auf;

    iget-object v1, p0, Lg/ece;->b:Lg/eqg;

    iget-object v1, v1, Lg/eqg;->d:Lg/dzh;

    invoke-direct {v0, v1}, Lg/auf;-><init>(Lg/dzh;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/auf;

    iget-object v1, p0, Lg/ece;->b:Lg/eqg;

    iget-object v1, v1, Lg/eqg;->a:Lg/cis;

    invoke-direct {v0, v1}, Lg/auf;-><init>(Lg/cis;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

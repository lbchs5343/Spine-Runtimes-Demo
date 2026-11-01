.class public final Lg/abq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gtx;
.implements Lg/fxn;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/abq;->a:Ljava/lang/String;

    return-void

    :pswitch_0
    const-string p2, "query"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/abq;->a:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _co()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/abq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public _cp(Lg/eob;)V
    .locals 0

    return-void
.end method

.method public ao()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/gyr;

    iget-object v1, p0, Lg/abq;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

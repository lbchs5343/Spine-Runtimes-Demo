.class public final Lg/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg/cgf;


# direct methods
.method public constructor <init>(Lg/cgf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cm;->a:Lg/cgf;

    return-void
.end method


# virtual methods
.method public call()Lg/caa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/caa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lg/caa;

    iget-object v1, p0, Lg/cm;->a:Lg/cgf;

    invoke-direct {v0, v1}, Lg/caa;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lg/cm;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method

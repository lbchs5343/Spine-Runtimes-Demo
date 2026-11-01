.class public final Lg/kg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/kg;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lg/kg;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lg/kg;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lg/kg;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/ahz;->i(Ljava/io/InputStream;Ljava/lang/String;)Lg/caa;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lg/kg;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method

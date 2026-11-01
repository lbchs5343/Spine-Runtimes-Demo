.class public final Lg/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dh;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/dh;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/dh;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lg/caa;
    .locals 3
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

    iget-object v0, p0, Lg/dh;->b:Ljava/lang/String;

    iget-object v1, p0, Lg/dh;->c:Ljava/lang/String;

    iget-object v2, p0, Lg/dh;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lg/ahz;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/caa;

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

    invoke-virtual {p0}, Lg/dh;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method

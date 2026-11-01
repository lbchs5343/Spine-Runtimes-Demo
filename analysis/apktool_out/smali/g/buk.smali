.class public final Lg/buk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg/gkb;


# direct methods
.method public constructor <init>(Lg/gkb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/buk;->b:Lg/gkb;

    iput-object p2, p0, Lg/buk;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lg/caa;
    .locals 4
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

    iget-object v0, p0, Lg/buk;->b:Lg/gkb;

    invoke-static {v0}, Lg/gkb;->q(Lg/gkb;)Z

    move-result v1

    iget-object v2, p0, Lg/buk;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_0

    sget-object v1, Lg/ahz;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "asset_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lg/ahz;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/caa;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lg/ahz;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg/caa;

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

    invoke-virtual {p0}, Lg/buk;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method

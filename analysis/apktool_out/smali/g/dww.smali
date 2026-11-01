.class public final Lg/dww;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gkb;


# direct methods
.method public constructor <init>(Lg/gkb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dww;->b:Lg/gkb;

    iput p2, p0, Lg/dww;->a:I

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

    iget-object v0, p0, Lg/dww;->b:Lg/gkb;

    invoke-static {v0}, Lg/gkb;->q(Lg/gkb;)Z

    move-result v1

    iget v2, p0, Lg/dww;->a:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lg/ahz;->j(Landroid/content/Context;I)Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ahz;->f(Landroid/content/Context;I)Lg/caa;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lg/ahz;->f(Landroid/content/Context;I)Lg/caa;

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

    invoke-virtual {p0}, Lg/dww;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/eze;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final b:Lg/cjz;


# direct methods
.method public constructor <init>(Lg/cjz;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Lg/eze;->b:Lg/cjz;

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget p2, Lg/gx;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/eze;->b:Lg/cjz;

    sget-object p2, Lg/gpr;->a:Lg/gpr;

    invoke-virtual {p1, p2}, Lg/cjz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget v0, Lg/gx;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg/das;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lg/das;-><init>(I)V

    iget-object v0, p0, Lg/eze;->b:Lg/cjz;

    invoke-virtual {v0, p1}, Lg/cjz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

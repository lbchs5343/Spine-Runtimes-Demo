.class public abstract Lg/eil;
.super Lg/cmh;
.source "SourceFile"


# instance fields
.field public final a:Lg/sr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/gkr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/cmh;-><init>(Landroid/content/Context;Lg/gkr;)V

    new-instance p1, Lg/sr;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/eil;->a:Lg/sr;

    return-void
.end method


# virtual methods
.method public abstract b()Landroid/content/IntentFilter;
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget v1, Lg/xb;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/cmh;->i:Landroid/content/Context;

    iget-object v1, p0, Lg/eil;->a:Lg/sr;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget v1, Lg/xb;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/eil;->a:Lg/sr;

    invoke-virtual {p0}, Lg/eil;->b()Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lg/cmh;->i:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public abstract l(Landroid/content/Intent;)V
.end method

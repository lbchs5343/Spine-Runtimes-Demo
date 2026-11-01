.class public final Lg/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/deg;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/bky;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/bky;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ki;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/ki;->b:Lg/bky;

    iput-object p3, p0, Lg/ki;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lg/ki;->c:Landroid/content/Context;

    const p2, 0x7f120413

    invoke-static {p1, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    iget-object p1, p0, Lg/ki;->a:Landroid/content/Context;

    iget-object p2, p0, Lg/ki;->b:Lg/bky;

    invoke-static {p1, p2}, Lg/bew;->s(Landroid/content/Context;Lg/bky;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lg/ki;->a:Landroid/content/Context;

    iget-object v0, p0, Lg/ki;->b:Lg/bky;

    invoke-static {p1, v0}, Lg/bew;->s(Landroid/content/Context;Lg/bky;)V

    return-void
.end method

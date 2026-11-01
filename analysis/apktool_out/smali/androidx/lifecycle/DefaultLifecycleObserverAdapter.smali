.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final a:Lg/blu;

.field public final c:Lg/ajm;


# direct methods
.method public constructor <init>(Lg/blu;Lg/ajm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lg/blu;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->c:Lg/ajm;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 2

    sget-object v0, Lg/bgj;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->c:Lg/ajm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/ajm;->b(Lg/iz;Lg/dtn;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lg/blu;

    invoke-interface {p1}, Lg/blu;->onResume()V

    const/4 p1, 0x0

    throw p1
.end method

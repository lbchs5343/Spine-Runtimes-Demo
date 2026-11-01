.class public final Lg/bhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# instance fields
.field public final b:Lg/dqx;


# direct methods
.method public constructor <init>(Lg/dqx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bhw;->b:Lg/dqx;

    return-void
.end method


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/aye;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lg/ckd;->h:Lg/hy;

    iput-object v1, v0, Lg/aye;->element:Ljava/lang/Object;

    new-instance v1, Lg/efw;

    invoke-direct {v1, p0, v0, p1}, Lg/efw;-><init>(Lg/bhw;Lg/aye;Lg/fjs;)V

    iget-object p1, p0, Lg/bhw;->b:Lg/dqx;

    invoke-interface {p1, v1, p2}, Lg/dqx;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.class public final Lg/fdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# instance fields
.field public final synthetic b:Lg/dqx;

.field public final synthetic c:Lg/avu;


# direct methods
.method public constructor <init>(Lg/bhw;Lg/bto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdf;->b:Lg/dqx;

    check-cast p2, Lg/avu;

    iput-object p2, p0, Lg/fdf;->c:Lg/avu;

    return-void
.end method


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/efj;

    iget-object v1, p0, Lg/fdf;->c:Lg/avu;

    invoke-direct {v0, p1, v1}, Lg/efj;-><init>(Lg/fjs;Lg/bto;)V

    iget-object p1, p0, Lg/fdf;->b:Lg/dqx;

    invoke-interface {p1, v0, p2}, Lg/dqx;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

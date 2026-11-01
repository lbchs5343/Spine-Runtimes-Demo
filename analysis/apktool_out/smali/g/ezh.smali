.class public final Lg/ezh;
.super Lg/dtp;
.source "SourceFile"


# instance fields
.field public final b:Lg/cqw;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cqw;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cqw;-><init>(I)V

    iput-object v0, p0, Lg/ezh;->b:Lg/cqw;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Lg/ezh;->b:Lg/cqw;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

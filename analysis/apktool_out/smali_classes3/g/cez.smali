.class public Lg/cez;
.super Lg/buu;
.source "SourceFile"


# instance fields
.field public c:Lg/bke;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/buu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cez;->c:Lg/bke;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/cez;->c:Lg/bke;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lg/bke;
    .locals 2

    iget-object v0, p0, Lg/cez;->c:Lg/bke;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Lg/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lg/fcc;

.field public b:Lg/dcq;

.field public c:Lg/fcc;

.field public d:Lg/fcc;

.field public e:Lg/eie;

.field public f:Lg/fcc;


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/ab;->c:Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ahy;

    check-cast v0, Lg/cga;

    invoke-virtual {v0}, Lg/cga;->close()V

    return-void
.end method

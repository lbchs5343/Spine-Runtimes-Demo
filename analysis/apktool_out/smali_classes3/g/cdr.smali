.class public final Lg/cdr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lg/bme;

.field public final d:Lg/awn;


# direct methods
.method public synthetic constructor <init>(Lg/fkn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/fkn;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lg/cdr;->b:Ljava/lang/String;

    iget-object v0, p1, Lg/fkn;->d:Ljava/lang/Object;

    check-cast v0, Lg/bme;

    iput-object v0, p0, Lg/cdr;->c:Lg/bme;

    iget-object v0, p1, Lg/fkn;->a:Ljava/lang/Object;

    check-cast v0, Lg/awn;

    iput-object v0, p0, Lg/cdr;->d:Lg/awn;

    iget p1, p1, Lg/fkn;->b:I

    iput p1, p0, Lg/cdr;->a:I

    return-void
.end method

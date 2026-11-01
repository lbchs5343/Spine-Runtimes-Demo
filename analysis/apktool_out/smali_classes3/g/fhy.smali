.class public final Lg/fhy;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lg/awa;


# direct methods
.method public constructor <init>(Lg/awa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lg/fhy;->a:Lg/awa;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lg/fhy;

    iget-object v0, p0, Lg/fhy;->a:Lg/awa;

    iget-object v1, v0, Lg/awa;->o:Lg/je;

    iget-object p1, p1, Lg/fhy;->a:Lg/awa;

    iget-object v2, p1, Lg/awa;->o:Lg/je;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lg/awa;->p:I

    iget p1, p1, Lg/awa;->p:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

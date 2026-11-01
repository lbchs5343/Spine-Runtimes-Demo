.class public abstract Lg/cwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eqk;
.implements Ljava/io/Serializable;


# instance fields
.field public transient c:Lg/eqk;

.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cwy;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lg/cwy;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lg/cwy;->name:Ljava/lang/String;

    iput-object p4, p0, Lg/cwy;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lg/cwy;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cwy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lg/hcp;
    .locals 2

    iget-object v0, p0, Lg/cwy;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lg/cwy;->isTopLevel:Z

    if-eqz v1, :cond_1

    sget-object v1, Lg/bii;->a:Lg/cky;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/bmh;

    invoke-direct {v1, v0}, Lg/bmh;-><init>(Ljava/lang/Class;)V

    return-object v1

    :cond_1
    invoke-static {v0}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lg/eqk;
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cwy;->signature:Ljava/lang/String;

    return-object v0
.end method

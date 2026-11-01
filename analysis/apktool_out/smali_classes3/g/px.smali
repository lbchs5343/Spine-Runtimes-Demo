.class public final Lg/px;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:Lg/fxy;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(Lg/fxy;Ljava/lang/String;JLjava/util/ArrayList;[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p6, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/px;->b:Lg/fxy;

    iput-object p2, p0, Lg/px;->c:Ljava/lang/String;

    iput-wide p3, p0, Lg/px;->d:J

    iput-object p5, p0, Lg/px;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lg/px;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cpv;

    invoke-static {v1}, Lg/erq;->m(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

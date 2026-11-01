.class public final Lg/eqv;
.super Lg/ewq;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lg/axr;


# direct methods
.method public constructor <init>(Lg/dgz;Lg/and;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ewq;-><init>(Lg/evq;)V

    check-cast p2, Lg/axr;

    iput-object p2, p0, Lg/eqv;->b:Lg/axr;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lg/eqv;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lg/ewq;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/eqv;->a:Z

    iget-object v1, p0, Lg/eqv;->b:Lg/axr;

    invoke-interface {v1, v0}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lg/clq;J)V
    .locals 1

    iget-boolean v0, p0, Lg/eqv;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lg/clq;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/ewq;->i:Lg/evq;

    invoke-interface {v0, p1, p2, p3}, Lg/evq;->f(Lg/clq;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/eqv;->a:Z

    iget-object p2, p0, Lg/eqv;->b:Lg/axr;

    invoke-interface {p2, p1}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, Lg/eqv;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lg/ewq;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/eqv;->a:Z

    iget-object v1, p0, Lg/eqv;->b:Lg/axr;

    invoke-interface {v1, v0}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final Lg/ewi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Lg/apy;

.field public d:Lg/eou;


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ewi;->a:Z

    iget-object v0, p0, Lg/ewi;->c:Lg/apy;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lg/afp;->a:Ljava/lang/Object;

    :cond_0
    sget-object v1, Lg/afp;->d:Lg/cux;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lg/cux;->f(Lg/afp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lg/afp;->i(Lg/afp;)V

    iput-object v2, p0, Lg/ewi;->b:Ljava/lang/Object;

    iput-object v2, p0, Lg/ewi;->c:Lg/apy;

    iput-object v2, p0, Lg/ewi;->d:Lg/eou;

    :cond_1
    return-void
.end method

.method public final finalize()V
    .locals 5

    iget-object v0, p0, Lg/ewi;->c:Lg/apy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/apy;->b:Lg/ggp;

    invoke-virtual {v0}, Lg/afp;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lg/bxj;

    iget-object v3, p0, Lg/ewi;->b:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lg/bxj;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lg/fdv;

    invoke-direct {v3, v2}, Lg/fdv;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lg/afp;->d:Lg/cux;

    invoke-virtual {v2, v0, v1, v3}, Lg/cux;->f(Lg/afp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lg/afp;->i(Lg/afp;)V

    :cond_0
    iget-boolean v0, p0, Lg/ewi;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/ewi;->d:Lg/eou;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lg/eou;->o(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

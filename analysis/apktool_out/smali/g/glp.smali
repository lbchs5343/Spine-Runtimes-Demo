.class public Lg/glp;
.super Lg/th;
.source "SourceFile"


# instance fields
.field public c:Lg/he;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/he;)V
    .locals 4

    invoke-virtual {p2}, Lg/he;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lg/th;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/he;->getViewIdResourceNameHuman()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/th;->b:Ljava/lang/String;

    const-string v2, "("

    const-string v3, ")"

    invoke-static {v0, v1, v2, p1, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/th;->b:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lg/glp;->c:Lg/he;

    return-void
.end method

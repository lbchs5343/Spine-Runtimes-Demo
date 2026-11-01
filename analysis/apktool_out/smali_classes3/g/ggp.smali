.class public final Lg/ggp;
.super Lg/afp;
.source "SourceFile"


# instance fields
.field public final synthetic o:Lg/apy;


# direct methods
.method public constructor <init>(Lg/apy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ggp;->o:Lg/apy;

    return-void
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/ggp;->o:Lg/apy;

    iget-object v0, v0, Lg/apy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ewi;

    if-nez v0, :cond_0

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/ewi;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag=["

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

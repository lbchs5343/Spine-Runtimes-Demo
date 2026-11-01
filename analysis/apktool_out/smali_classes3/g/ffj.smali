.class public final Lg/ffj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lg/alw;

.field public final b:Lg/gew;


# direct methods
.method public constructor <init>(Lg/alw;Lg/gew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ffj;->a:Lg/alw;

    iput-object p2, p0, Lg/ffj;->b:Lg/gew;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/ffj;->a:Lg/alw;

    iget-object v0, v0, Lg/ail;->f:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/ffj;->b:Lg/gew;

    iget-object v1, p0, Lg/ffj;->a:Lg/alw;

    invoke-static {v0}, Lg/alw;->p(Lg/gew;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lg/ail;->a:Lg/cro;

    invoke-virtual {v2, v1, p0, v0}, Lg/cro;->i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/ffj;->a:Lg/alw;

    invoke-static {v0}, Lg/alw;->n(Lg/alw;)V

    :cond_1
    :goto_0
    return-void
.end method

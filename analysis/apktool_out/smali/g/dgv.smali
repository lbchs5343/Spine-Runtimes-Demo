.class public final Lg/dgv;
.super Lg/euj;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:Lg/cfx;

.field public b:Lg/frv;

.field public c:Z


# direct methods
.method public constructor <init>(Lg/cfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dgv;->a:Lg/cfx;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/dgv;->c:Z

    return-void
.end method


# virtual methods
.method public final d(Lg/frv;)V
    .locals 1

    iget-object v0, p0, Lg/dgv;->b:Lg/frv;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lg/frv;->b:Lg/frv;

    iput-object p1, p0, Lg/dgv;->b:Lg/frv;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lg/dgv;->c:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lg/dgv;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/dgv;->a:Lg/cfx;

    iget-object v0, v0, Lg/cfx;->f:Lg/frv;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lg/dgv;->b:Lg/frv;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/frv;->a:Lg/frv;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lg/dgv;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dgv;->c:Z

    iget-object v0, p0, Lg/dgv;->a:Lg/cfx;

    iget-object v0, v0, Lg/cfx;->f:Lg/frv;

    iput-object v0, p0, Lg/dgv;->b:Lg/frv;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/dgv;->b:Lg/frv;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/frv;->a:Lg/frv;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lg/dgv;->b:Lg/frv;

    :goto_1
    iget-object v0, p0, Lg/dgv;->b:Lg/frv;

    return-object v0
.end method

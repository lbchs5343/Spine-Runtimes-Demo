.class public final synthetic Lg/hbl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bus;


# direct methods
.method public synthetic constructor <init>(Lg/bus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hbl;->a:Lg/bus;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/hbl;->a:Lg/bus;

    iput-boolean v0, v1, Lg/bus;->h:Z

    iget-boolean v0, v1, Lg/bus;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lg/bus;->y()V

    return-void

    :cond_1
    iget-object p1, v1, Lg/bus;->l:Lg/ark;

    invoke-virtual {p1}, Lg/ark;->r()Z

    move-result p1

    iput-boolean p1, v1, Lg/bus;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, v1, Lg/bus;->n:Landroid/content/Context;

    const v0, 0x7f12043b

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_2
    invoke-virtual {v1}, Lg/bus;->w()V

    return-void
.end method

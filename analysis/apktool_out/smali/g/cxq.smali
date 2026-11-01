.class public final synthetic Lg/cxq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/ark;


# direct methods
.method public synthetic constructor <init>(Lg/ark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cxq;->a:Lg/ark;

    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 3

    const/16 v0, 0x6b27

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg/cxq;->a:Lg/ark;

    iget-object v0, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v1, Lg/cdl;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lg/cdl;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.class public final synthetic Lg/bob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekw;


# instance fields
.field public final synthetic a:Lg/aoz;


# direct methods
.method public synthetic constructor <init>(Lg/aoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bob;->a:Lg/aoz;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/bob;->a:Lg/aoz;

    invoke-virtual {v0, p1}, Lg/aoz;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

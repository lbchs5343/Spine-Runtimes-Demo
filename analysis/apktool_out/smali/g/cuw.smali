.class public final synthetic Lg/cuw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lg/fdp;


# direct methods
.method public synthetic constructor <init>(Lg/fdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cuw;->a:Lg/fdp;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lg/cuw;->a:Lg/fdp;

    iget-object v0, p1, Lg/fdp;->q:Lg/fdp;

    const v1, 0x7f120117

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x1

    return p1
.end method

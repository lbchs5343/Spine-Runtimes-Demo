.class public final synthetic Lg/hdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/hdn;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/hdn;->a:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/bew;->r(Lg/he;I)V

    return-void
.end method

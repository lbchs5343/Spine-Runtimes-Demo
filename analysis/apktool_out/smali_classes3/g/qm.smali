.class public final synthetic Lg/qm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/sq;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lg/sq;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/qm;->b:Lg/sq;

    iput-boolean p2, p0, Lg/qm;->c:Z

    iput-boolean p3, p0, Lg/qm;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lg/qm;->c:Z

    iget-boolean v1, p0, Lg/qm;->a:Z

    iget-object v2, p0, Lg/qm;->b:Lg/sq;

    invoke-virtual {v2, v0, v1}, Lg/sq;->g(ZZ)V

    return-void
.end method

.class public final Lg/gws;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic this$0:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;)V
    .locals 0

    iput-object p1, p0, Lg/gws;->this$0:Landroidx/activity/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/gws;->this$0:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->j()V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method

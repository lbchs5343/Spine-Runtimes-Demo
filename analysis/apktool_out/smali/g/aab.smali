.class public final Lg/aab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/x;

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/fdy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/x;

    iput-object v0, p0, Lg/aab;->a:Lg/x;

    iget-object p1, p1, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lg/aab;->b:Ljava/lang/String;

    return-void
.end method

.class public final Lg/bkd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/dwa;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/dwa;)V
    .locals 1

    const-string v0, "progress"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bkd;->a:Ljava/lang/String;

    iput-object p2, p0, Lg/bkd;->b:Lg/dwa;

    return-void
.end method
